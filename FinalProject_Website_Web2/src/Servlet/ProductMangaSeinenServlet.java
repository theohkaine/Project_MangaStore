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
import VO.ProductMangaSeinen;

@WebServlet("/ProductMangaSeinenServlet")
public class ProductMangaSeinenServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductMangaSeinen products = new ProductMangaSeinen();
	ProductMainPageDAO productsDAO = new ProductMPImplBD();
	ArrayList<ProductMangaSeinen> prod = new ArrayList<ProductMangaSeinen>();
	
	float PriceTotal;
    public ProductMangaSeinenServlet() {
        super();
    }
    //Servlet that adds every corresponding book from the database into the jsp file
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageOutput ="/MangaHtml/SeinenManga.jsp";
		
		try {
			prod = productsDAO.findAllMangaSeinen();
			
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