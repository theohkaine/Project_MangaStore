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
import VO.ProductLNShounen;

@WebServlet("/ProductLNShounenServlet")
public class ProductLNShounenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductLNShounen products = new ProductLNShounen();
	ProductMainPageDAO productsDAO = new ProductMPImplBD();
	ArrayList<ProductLNShounen> prod = new ArrayList<ProductLNShounen>();
    public ProductLNShounenServlet() {
        super();
    }

    //Servlet that adds every corresponding book from the database into the jsp file
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageOutput ="/LightNovelHtml/ShounenLN.jsp";
		
		try {
			prod = productsDAO.findAllLNShounen();
						
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