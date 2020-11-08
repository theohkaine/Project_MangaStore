package DAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Singleton.mySingleton;
import VO.ProductLNSeinen;
import VO.ProductLNShounen;
import VO.ProductMainPage;
import VO.ProductMangaSeinen;
import VO.ProductMangaShounen;
import VO.itemCart;

public class CartImplBD implements CartDAO 
{

	//Connection with mySQL server
	private Connection con = mySingleton.getInstance();
	ResultSet rs;
	itemCart cart = new itemCart();
	
	//Function that let's get every information from the table 'cart' in the database
	//This function is useful pour printing the corresponding info of the books in their place.
	//While loading the page.
	@Override
	public ArrayList<itemCart> findAll() throws Exception 
	{
		String req="SELECT * FROM cart";
        ResultSet rs=con.createStatement().executeQuery(req);
        ArrayList<itemCart> liste=new ArrayList<itemCart>();
        while(rs.next()) 
        {
        	itemCart e=new itemCart();
            e.setitemCartImage(rs.getString("cartImage"));
            e.setitemCartName(rs.getString("cartName"));
            e.setitemCartPrice(Float.parseFloat(rs.getString("cartPrice")));
            e.setitemCartQuantity(rs.getInt("cartQuantity"));
            liste.add(e);
        }
        return liste;    
	}

	//This function adds the corresponding information of the book the client selected, into the table 'cart' in the database.
	@Override
	public void additemCartInformation(itemCart e) throws Exception {
		String req = "INSERT INTO cart(cartImage,cartName,cartPrice,cartQuantity,PriceTotal)"
				+ "VALUES('"+e.getitemCartImage()+"', '"+e.getitemCartName()+"','"+e.getitemCartPrice()+"','"+e.getitemCartQuantity()+"','"+e.getcolumTotal()+"')";
		con.createStatement().executeUpdate(req);	
	}

	//This function adds corresponding books from the specific page into the shopping cart
	@Override
	public boolean validateCart(ProductMainPage e) throws Exception 
	{
		boolean status = false;	
		try (PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM productmainpage WHERE ID=?"))
		{
			preparedStatement.setInt(1, e.getProductID());
			System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();        
            status = rs.next();  
        	e.setName(rs.getString("Name"));
        	e.setPhoto(rs.getString("Photo"));
        	e.setPrice(Float.parseFloat(rs.getString("Price")));
		} catch (SQLException e1) {
			 printSQLException(e1);
		}
		
		return status;         
	}
	
	//Function to print the right error messages.
	private void printSQLException(SQLException ex) {
	    for (Throwable e: ex) {
	        if (e instanceof SQLException) {
	            e.printStackTrace(System.err);
	            System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	            System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	            System.err.println("Message: " + e.getMessage());
	            Throwable t = ex.getCause();
	            while (t != null) {
	                System.out.println("Cause: " + t);
	                t = t.getCause();
	            }
	        }
	    }
	}

	//This function adds the corresponding Manga Seinen in the cart
	@Override
	public boolean validateCartMangaSeinen(ProductMangaSeinen e) throws Exception 
	{
		boolean status = false;		
		try (PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM productmangaseinen WHERE MSeinenID=?"))
		{
			preparedStatement.setInt(1, e.getMSeinenProductID());
			System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();        
            status = rs.next();  
        	e.setMSeinenName(rs.getString("Name"));
        	e.setMSeinenPhoto(rs.getString("Photo"));
        	e.setMSeinenPrice(Float.parseFloat(rs.getString("Price")));
		} catch (SQLException e1) {
			 printSQLException(e1);
		}
		
		return status;
	}

	//This function adds the corresponding Manga Shounen in the cart
	@Override
	public boolean validateCartMangaShounen(ProductMangaShounen e) throws Exception 
	{
		boolean status = false;		
		try (PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM productmangashounen WHERE MShounenID=?"))
		{
			preparedStatement.setInt(1, e.getProductID());
			System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();        
            status = rs.next();  
        	e.setName(rs.getString("Name"));
        	e.setPhoto(rs.getString("Photo"));
        	e.setPrice(Float.parseFloat(rs.getString("Price")));
		} catch (SQLException e1) {
			 printSQLException(e1);
		}
		
		return status;
	}

	//This function calculates the total price when the client buys the books
	@Override
	public void SumOfPrice(itemCart e) throws Exception {
		String req="SELECT SUM(CAST(PriceTotal AS DECIMAL)) AS prix_total FROM cart";
        ResultSet rs=con.createStatement().executeQuery(req);
        while(rs.next()) 
        {        
            e.setCartPriceTotal(Float.parseFloat(rs.getString("prix_total")));
            System.out.println("IN DAO PRICE"+e.getCartPriceTotal());
        }		
	}

	//This function calculates the total of quantity of books when the client makes his transaction
	@Override
	public void SumOfQuantity(itemCart e) throws Exception 
	{
		String req="SELECT SUM(cartQuantity) AS quantity_total FROM cart";
        ResultSet rs=con.createStatement().executeQuery(req);
        while(rs.next()) 
        {         
            e.setCartQuantityTotal(rs.getInt("quantity_total"));
            System.out.println("IN DAO QUANTITY"+e.getCartQuantityTotal());
        }		
	}

	//This function adds the corresponding Light Novel Seinen in the cart
	@Override
	public boolean validateCartLNSeinen(ProductLNSeinen e) throws Exception 
	{
		boolean status = false;		
		try (PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM productlnseinen WHERE LNSeinenID=?"))
		{
			preparedStatement.setInt(1, e.getLNSeinenID());
			System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();        
            status = rs.next();  
        	e.setName(rs.getString("Name"));
        	e.setPhoto(rs.getString("Photo"));
        	e.setPrice(Float.parseFloat(rs.getString("Price")));
		} catch (SQLException e1) {
			 printSQLException(e1);
		}		
		return status;
	}

	//This function adds the corresponding Light Novel Shounen in the cart
	@Override
	public boolean validateCartLNShounen(ProductLNShounen e) throws Exception 
	{
		boolean status = false;
		try (PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM productlnshounen WHERE LNShounenID=?"))
		{
			preparedStatement.setInt(1, e.getLNShounenID());
			System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();        
            status = rs.next();  
        	e.setName(rs.getString("Name"));
        	e.setPhoto(rs.getString("Photo"));
        	e.setPrice(Float.parseFloat(rs.getString("Price")));
		} catch (SQLException e1) {
			 printSQLException(e1);
		}
		
		return status;
	}
}