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
import VO.ProductMangaShounen;

@WebServlet("/ProductMangaShounenServlet")
public class ProductMangaShounenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductMangaShounen products = new ProductMangaShounen();
	ProductMainPageDAO productsDAO = new ProductMPImplBD();
	ArrayList<ProductMangaShounen> prod = new ArrayList<ProductMangaShounen>();
    public ProductMangaShounenServlet() {
        super();
    }
    //Servlet that adds every corresponding book from the database into the jsp file
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageOutput ="/MangaHtml/ShounenManga.jsp";
		
		try {
			prod = productsDAO.findAllMangaShounen();	
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