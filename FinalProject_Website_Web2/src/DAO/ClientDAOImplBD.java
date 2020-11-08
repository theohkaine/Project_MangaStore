package DAO;

import Singleton.mySingleton;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Singleton.mySingleton;
import VO.ClientVO;
import VO.ProductMainPage;

public class ClientDAOImplBD implements ClientDAO{

	private Connection con = mySingleton.getInstance();
	ResultSet rs;
	String email;
	String password;
	ClientVO client = new ClientVO();
	public String FullName;
	
	//This functions adds the corresponding client into the database
	public void addClientInformation(ClientVO e) throws Exception
	{
		String req = "INSERT INTO bookchanclient(FullName,BirthDate,Address,Email,Password)"
				+ "VALUES('"+e.getFullName()+"', '"+e.getBirthDate()+"','"+e.getAddress()+"','"+e.getEmail()+"','"+e.getPassword()+"')";
		con.createStatement().executeUpdate(req);
	}

	//This function gets the corresponding information of the client by getting his email and password
	@Override
	public void getClientInfo(ClientVO e) throws Exception {

		try (PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM bookchanclient WHERE Email=? AND Password=?"))
		{
			preparedStatement.setString(1, e.getEmail());
			preparedStatement.setString(2, e.getPassword());
			System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();  
            while(rs.next()) 
            {
            	ClientVO e1=new ClientVO();
            	e1.setFullName(rs.getString("FullName"));
            	System.out.println("FULL NAME IN DAO"+e1.getFullName());
                System.out.println(e1.getFullName());
            }
           
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			 printSQLException(e1);
		}
		
	}

	//Null function
	@Override
	public int getClientID(ClientVO e) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	//This function helps for the login when looking into the database to see if there's an already existing email and password for the client
	@Override
	public boolean validate(ClientVO e) throws ClassNotFoundException {
		boolean status = false;
		
		try (PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM bookchanclient WHERE Email=? AND Password=?"))
		{
			preparedStatement.setString(1, e.getEmail());
			preparedStatement.setString(2, e.getPassword());
			System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();  
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
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

	//This function helps for the login when looking into the database to see if there's an already existing email and password for the admin
	@Override
	public boolean validateAdmin(ClientVO e) throws ClassNotFoundException {
		// TODO Auto-generated method stub
		boolean status = false;
		
		try (PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM bookchanclient WHERE Email=? AND Password=? AND Admin=?"))
		{
			preparedStatement.setString(1, e.getEmail());
			preparedStatement.setString(2, e.getPassword());
			preparedStatement.setString(3, "1");
			System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();        
            status = rs.next();  
           // System.out.println(FullNameBD);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			 printSQLException(e1);
		}
		
		return status;
	}

	//This function checks in the database if there is an existant email so there won't be doubles
	@Override
	public boolean validateEmail(ClientVO e) throws ClassNotFoundException {
		boolean status = false;		
		try (PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM bookchanclient WHERE Email=?"))
		{
			preparedStatement.setString(1, e.getEmail());
			System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            status = rs.next();          
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			 printSQLException(e1);
		}
		
		return status;
	}
}