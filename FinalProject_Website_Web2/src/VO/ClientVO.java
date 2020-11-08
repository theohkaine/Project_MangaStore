package VO;

//Class VO for any client information with get/set
public class ClientVO {

	private int ClientID;
	private String FullName;
	private String BirthDate;
	private String Address;
	private String Email;
	private String Password;
	private int Admin;
	
	public ClientVO(int ClientID,String FullName, String BirthDate, String Address, String Email, String Password, int Admin)
	{
		super();
		this.ClientID = ClientID;
		this.FullName = FullName;
		this.BirthDate = BirthDate;
		this.Address = Address;
		this.Email = Email;
		this.Password = Password;
		this.Admin = Admin;
	}
	
	public ClientVO()
	{
		super();
	}
	
	public void setClientID(int ClientID)
	{
		this.ClientID = ClientID;
	}
	
	public int getClientID()
	{
		return ClientID;
	}
	
	public void setFullName(String FullName)
	{
		this.FullName = FullName;
	}
	
	public String getFullName()
	{
		return FullName;
	}
	
	public void setBirthDate(String BirthDate)
	{
		this.BirthDate = BirthDate;
	}
	
	public String getBirthDate()
	{
		return BirthDate;
	}
	
	public void setAddress(String Address)
	{
		this.Address = Address;
	}
	
	public String getAddress()
	{
		return Address;
	}
	
	public void setEmail(String Email)
	{
		this.Email = Email;
	}
	
	public String getEmail()
	{
		return Email;
	}
	
	public void setPassword(String Password)
	{
		this.Password = Password;
	}
	
	public String getPassword()
	{
		return Password;
	}
	
	public void setAdmin(int Admin)
	{
		this.Admin = Admin;
	}
	
	public int getAdmin()
	{
		return Admin;
	}
}
