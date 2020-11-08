package Singleton;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//Class to connect into my database
public class mySingleton {

	private static Connection con = null;
	private String url = "jdbc:mysql://localhost/bookchan?serverTimezone=UTC";
	private String login = "root";
	private String pwd = "";
	
	private mySingleton()
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url,login,pwd);
		}catch(SQLException|ClassNotFoundException e) {e.printStackTrace();}
	}
	
	public static Connection getInstance()
	{
		if(con==null)
		{new mySingleton();}
		return con;
	}
}