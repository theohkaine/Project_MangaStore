package Servlet;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DAO.CartDAO;
import DAO.CartImplBD;
import DAO.ProductMPImplBD;
import DAO.ProductMainPageDAO;
import VO.ProductMainPage;
import VO.itemCart;

/**
 * Servlet implementation class Cart
 */
@WebServlet("/Cart")
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	itemCart item = new itemCart();
	CartDAO itemDAO = new CartImplBD();
	
	ProductMainPage product = new ProductMainPage();
	ProductMainPageDAO productDAO = new ProductMPImplBD();
	ArrayList<itemCart> itemCartList = new ArrayList<itemCart>();
	String WrongInput = "null";
	float PriceTotal = 0;

    public Cart() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		@SuppressWarnings("unused")
		HttpSession session = request.getSession(true);
		String button = request.getParameter("button");
		if(button != null) 
		{
			String Picture;
			String Name;
			float Price;
			float totalPrice;
			int Quantity = Integer.parseInt((request.getParameter("bookForm")));
			for(int i = 0; i<13; i++) 
			{		
				//If the correspond button equals to the id of the book, we take all of the books information into the shopping cart
				if(("button" + i).equals(button))
				{
					int ID = i;
					product.setProductID(ID);				
					try 
					{
						//Gets all of the tables information from the ID that we got from the button
						if(itemDAO.validateCart(product))
						{
							//SQL funtion to calculate the total price 
							itemDAO.SumOfPrice(item);	
							
							Name = product.getName();
							Picture = product.getPhoto();
							Price = product.getPrice();	
							totalPrice = (Price*Quantity);
							item.setitemCartName(Name);
							item.setitemCartImage(Picture);
							item.setitemCartPrice(Price);
							item.setitemCartQuantity(Quantity);
							item.setcolumTotal(totalPrice);					
							itemDAO.additemCartInformation(item);	
							itemDAO.SumOfPrice(item);
							PriceTotal = item.getCartPriceTotal();
							itemCartList = itemDAO.findAll();
						}
								
					} catch (Exception e) 
					{					
						e.printStackTrace();
					}
					
					 //Price total used for paypal
					 request.setAttribute("price",PriceTotal);
		
					 request.setAttribute("products",itemCartList);
					 this.getServletContext().getRequestDispatcher("/ShoppingCart.jsp").forward(request,response);
				}				
			}		
		}
		else
		{
			//If it didn't work
			request.setAttribute("nullQuantity",WrongInput);
			this.getServletContext().getRequestDispatcher("ProductMainPage").forward(request,response);	
		}		 
	}
}