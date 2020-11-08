package Servlet;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.ProductMPImplBD;
import DAO.ProductMainPageDAO;
import VO.ProductLNSeinen;

@WebServlet("/ProductLNSeinenServlet")
public class ProductLNSeinenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductLNSeinen products = new ProductLNSeinen();
	ProductMainPageDAO productsDAO = new ProductMPImplBD();
	ArrayList<ProductLNSeinen> prod = new ArrayList<ProductLNSeinen>();

    public ProductLNSeinenServlet() {
        super();
    }

    //Servlet that adds every corresponding book from the database into the jsp file
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageOutput ="/LightNovelHtml/SeinenLN.jsp";	
		try {
			prod = productsDAO.findAllLNSeinen();
						
		} catch (Exception e) {
			e.printStackTrace();
		}	
				
		request.setAttribute("products",prod);
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		 RequestDispatcher dispatcher =
					getServletContext().getRequestDispatcher(pageOutput);
					 dispatcher.forward(request, response); 
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}