package DAO;
import VO.ClientVO;

//List of functions to called in ClientDAOImplBD.java
public interface ClientDAO
{
	public void addClientInformation(ClientVO e) throws Exception;
	public void getClientInfo(ClientVO e ) throws Exception;
	public int getClientID(ClientVO e) throws Exception;
	public boolean validate(ClientVO e) throws ClassNotFoundException;
	public boolean validateAdmin(ClientVO e) throws ClassNotFoundException;
	public boolean validateEmail(ClientVO e) throws ClassNotFoundException;
}