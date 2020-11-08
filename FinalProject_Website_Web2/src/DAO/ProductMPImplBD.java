package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import Singleton.mySingleton;
import VO.ClientVO;
import VO.ProductLNSeinen;
import VO.ProductLNShounen;
import VO.ProductMainPage;
import VO.ProductMangaSeinen;
import VO.ProductMangaShounen;

public class ProductMPImplBD implements ProductMainPageDAO {
	
	private Connection con = mySingleton.getInstance();
	ResultSet rs;
	
	//This function finds all the corresponding books into a list for the index.jsp page
	@Override
	public ArrayList<ProductMainPage> findAll() throws Exception {
		String req="SELECT * FROM productmainpage";
        ResultSet rs=con.createStatement().executeQuery(req);
        ArrayList<ProductMainPage> liste=new ArrayList<ProductMainPage>();
        while(rs.next()) 
        {
        	ProductMainPage e=new ProductMainPage();
            e.setProductID(rs.getInt("ID"));
            e.setName(rs.getString("Name"));
            e.setPhoto(rs.getString("Photo"));
            e.setPrice(Float.parseFloat(rs.getString("Price")));
            liste.add(e);

        }
        System.out.println(liste);
        return liste;
	}

	//This function finds all the corresponding books into a list for the SeinenManga.jsp page
	@Override
	public ArrayList<ProductMangaSeinen> findAllMangaSeinen() throws Exception {
		String req="SELECT * FROM productmangaseinen";
        ResultSet rs=con.createStatement().executeQuery(req);
        ArrayList<ProductMangaSeinen> liste=new ArrayList<ProductMangaSeinen>();
        while(rs.next()) 
        {
        	ProductMangaSeinen e=new ProductMangaSeinen();
            e.setMSeinenProductID(rs.getInt("MSeinenID"));
            e.setMSeinenName(rs.getString("Name"));
            e.setMSeinenPhoto(rs.getString("Photo"));
            e.setMSeinenPrice(Float.parseFloat(rs.getString("Price")));
            
            liste.add(e);
            
        }
        System.out.println(liste);
        return liste;
	}

	//This function finds all the corresponding books into a list for the ShounenManga.jsp page
	@Override
	public ArrayList<ProductMangaShounen> findAllMangaShounen() throws Exception {
		String req="SELECT * FROM productmangashounen";
        ResultSet rs=con.createStatement().executeQuery(req);
        ArrayList<ProductMangaShounen> liste=new ArrayList<ProductMangaShounen>();
        while(rs.next()) 
        {
        	ProductMangaShounen e=new ProductMangaShounen();
            e.setProductID(rs.getInt("MShounenID"));
            e.setName(rs.getString("Name"));
            e.setPhoto(rs.getString("Photo"));
            e.setPrice(Float.parseFloat(rs.getString("Price")));
            liste.add(e);
        }
        System.out.println(liste);
        return liste;
	}

	//This function finds all the corresponding books into a list for the SeinenLN.jsp page
	@Override
	public ArrayList<ProductLNSeinen> findAllLNSeinen() throws Exception {
		// TODO Auto-generated method stub
		String req="SELECT * FROM productlnseinen";
        ResultSet rs=con.createStatement().executeQuery(req);
        ArrayList<ProductLNSeinen> liste=new ArrayList<ProductLNSeinen>();
        while(rs.next()) 
        {
        	ProductLNSeinen e=new ProductLNSeinen();
            e.setLNSeinenID(rs.getInt("LNSeinenID"));
            e.setName(rs.getString("Name"));
            e.setPhoto(rs.getString("Photo"));
            e.setPrice(Float.parseFloat(rs.getString("Price")));   
            liste.add(e);
        }
        System.out.println(liste);
        return liste;
	}

	//This function finds all the corresponding books into a list for the ShounenLN.jsp page
	@Override
	public ArrayList<ProductLNShounen> findAllLNShounen() throws Exception {
		// TODO Auto-generated method stub
		String req="SELECT * FROM productlnshounen";
        ResultSet rs=con.createStatement().executeQuery(req);
        ArrayList<ProductLNShounen> liste=new ArrayList<ProductLNShounen>();
        while(rs.next()) 
        {
        	ProductLNShounen e=new ProductLNShounen();
            e.setLNShounenID(rs.getInt("LNShounenID"));
            e.setName(rs.getString("Name"));
            e.setPhoto(rs.getString("Photo"));
            e.setPrice(Float.parseFloat(rs.getString("Price")));           
            liste.add(e);
        }
        System.out.println(liste);
        return liste;
	}
}