package DAO;

import java.util.ArrayList;
import VO.ProductLNSeinen;
import VO.ProductLNShounen;
import VO.ProductMainPage;
import VO.ProductMangaSeinen;
import VO.ProductMangaShounen;
import VO.itemCart;

//List of functions to called in CartImplBD.java
public interface CartDAO 
{
	public ArrayList<itemCart> findAll() throws Exception;
	public void additemCartInformation(itemCart e) throws Exception;
	public boolean validateCart(ProductMainPage e) throws Exception;
	public boolean validateCartMangaSeinen(ProductMangaSeinen e) throws Exception;
	public boolean validateCartMangaShounen(ProductMangaShounen e) throws Exception;
	public boolean validateCartLNSeinen(ProductLNSeinen e) throws Exception;
	public boolean validateCartLNShounen(ProductLNShounen e) throws Exception;
	public void SumOfPrice(itemCart e) throws Exception;
	public void SumOfQuantity(itemCart e) throws Exception;
}