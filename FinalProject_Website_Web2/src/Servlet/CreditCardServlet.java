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
 * Servlet implementation class CreditCardServlet
 */
@WebServlet("/CreditCardServlet")
public class CreditCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	itemCart item = new itemCart();
	CartDAO itemDAO = new CartImplBD();
	
	ProductMainPage product = new ProductMainPage();
	ProductMainPageDAO productDAO = new ProductMPImplBD();
	ArrayList<itemCart> itemCartList = new ArrayList<itemCart>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreditCardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		@SuppressWarnings("unused")
		HttpSession session = request.getSession(true);
		
		try {
			itemCartList = itemDAO.findAll();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 request.setAttribute("products",itemCartList);
		 this.getServletContext().getRequestDispatcher("/CreditCartCheckout.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
