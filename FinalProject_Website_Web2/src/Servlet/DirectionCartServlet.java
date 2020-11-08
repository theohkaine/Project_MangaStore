package Servlet;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DAO.CartDAO;
import DAO.CartImplBD;
import VO.itemCart;

@WebServlet("/DirectionCartServlet")
public class DirectionCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<itemCart> itemCartList = new ArrayList<itemCart>();
	CartDAO itemDAO = new CartImplBD();
	itemCart item = new itemCart();
	float PriceTotal = 0;
	int QuantityTotal = 0;
    public DirectionCartServlet() {
        super();
    }
    //Servlet is only used for the button shopping cart to go towards the ShoppingCart.jsp witouth errors in the jsp file
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			itemCartList = itemDAO.findAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			itemDAO.SumOfPrice(item);
			PriceTotal = item.getCartPriceTotal();
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		request.setAttribute("products",itemCartList);
		request.setAttribute("price",PriceTotal);
		this.getServletContext().getRequestDispatcher("/ShoppingCart.jsp").forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);		
	}
}