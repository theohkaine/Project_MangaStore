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
import VO.ClientVO;

@WebServlet("/logoutServlet")
public class logoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ClientVO client = new ClientVO();
	ClientDAO clientDAO = new ClientDAOImplBD();

    public logoutServlet() {
        super();
    }
    //Servlet that logs out the client/admin and terminates the Session
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if(session!=null)
			session.invalidate();
		 this.getServletContext().getRequestDispatcher("/ProductMainPageServlet").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}