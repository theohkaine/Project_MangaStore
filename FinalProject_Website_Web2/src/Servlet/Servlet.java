package Servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DAO.ClientDAO;
import DAO.ClientDAOImplBD;
import DAO.ProductMPImplBD;
import DAO.ProductMainPageDAO;
import VO.ClientVO;
import VO.ProductMainPage;
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ClientVO client = new ClientVO();
	ClientDAO clientDAO = new ClientDAOImplBD();
	ProductMainPage Product= new ProductMainPage();
	ProductMainPageDAO productDAO = new ProductMPImplBD();

    public Servlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	//Servlet for the creation account of a new customer
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		String FullName = request.getParameter("FullName");
		String BirthDate = request.getParameter("BirthDate");
		String Address = request.getParameter("Address");
		String Email = request.getParameter("Email");
		String password = request.getParameter("pwd");
		client.setFullName(FullName);
		client.setBirthDate(BirthDate);
		client.setAddress(Address);
		client.setEmail(Email);
		client.setPassword(password);
		
		try {
			//Function that checks in the database if there is already an existing email.
			if(clientDAO.validateEmail(client))
			{
				String wrong = "true";
				session.setAttribute("WrongEmailPassword", wrong);			
				this.getServletContext().getRequestDispatcher("/register.jsp").forward(request,response);
			}
			else
			{
				//Function that adds the customer in t
				try {
					clientDAO.addClientInformation(client);
					
				} catch (Exception e) {
					e.printStackTrace();
				}
				session.setAttribute("Email", Email);

				this.getServletContext().getRequestDispatcher("/ProductMainPageServlet").forward(request,response);
			}
		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}