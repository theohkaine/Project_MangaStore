package Servlet;
import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import DAO.ClientDAO;
import DAO.ClientDAOImplBD;
import VO.ClientVO;

import net.iharder.Base64;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ClientVO client = new ClientVO();
	ClientDAO clientDAO = new ClientDAOImplBD();
	ClientDAOImplBD clientBD = new ClientDAOImplBD();
	String fullname;

    public loginServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	//Servlet for the logging page
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		
		String Email = request.getParameter("Email");
		String Password = request.getParameter("pwd");
		System.out.println("Encrypted password : "+ Password);

		client.setPassword(Password);
		client.setEmail(Email);

		 try {
			 	//Function that checks in the database if the client exists. If yes, log in, if no, go back to the login page
	            if (clientDAO.validate(client)) {	
	            	//Function that checks in the database if the admin exists. If yes, log in, if no, go back to the login page
	            	if(clientDAO.validateAdmin(client))
	            	{
	            		HttpSession session = request.getSession(true);	            		
	            		 String AdminName = "Admin";  
		            	 session.setAttribute("Admin", AdminName);
		            	 this.getServletContext().getRequestDispatcher("/admin.jsp").forward(request,response);
	            	}
	            	else
	            	{
	            		
	            		HttpSession session = request.getSession(true);	            		
		            	 System.out.println("worked");
		            	 session.setAttribute("Email", Email);
		            	 this.getServletContext().getRequestDispatcher("/ProductMainPageServlet").forward(request,response);
	            	}
	            	
	            } else {
	            	//Returns to the login page with an error that will trigger the modal to show up
	            	HttpSession session = request.getSession(true);
	            	String wrong = "true";
					session.setAttribute("WrongEmailPassword2", wrong);
	                this.getServletContext().getRequestDispatcher("/login.jsp").forward(request,response);
	            }
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        }
	}
	
	//Decrypt function
	public String decrypt(final String encrypted) throws Exception {		 
		 try 
		 {
			 SecretKey key = new SecretKeySpec(Base64.decode("u/Gu5posvwDsXUnV5Zaq4g=="), "AES");
			 AlgorithmParameterSpec iv = new IvParameterSpec(Base64.decode("5D9r9ZVzEYYgha93/aUK2w=="));
			 byte[] decodeBase64 = Base64.decode(encrypted);
			 Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
			 cipher.init(Cipher.DECRYPT_MODE, key, iv);
			 return new String(cipher.doFinal(decodeBase64), "UTF-8");
		 } catch (Exception e) {
			 e.printStackTrace();
			 throw new RuntimeException("This should not happen in production.", e);
			 }
		}
}