package DAO;
import java.util.ArrayList;
import VO.ProductLNSeinen;
import VO.ProductLNShounen;
import VO.ProductMainPage;
import VO.ProductMangaSeinen;
import VO.ProductMangaShounen;
//List of functions to called in ProductMPImplBD.java
public interface ProductMainPageDAO 
{
	public ArrayList<ProductMainPage> findAll() throws Exception;
	public ArrayList<ProductMangaSeinen> findAllMangaSeinen() throws Exception;
	public ArrayList<ProductMangaShounen> findAllMangaShounen() throws Exception;
	public ArrayList<ProductLNSeinen> findAllLNSeinen() throws Exception;
	public ArrayList<ProductLNShounen> findAllLNShounen() throws Exception;
}
