package VO;

//Class VO for any Manga/Light Novel book information in the index page with get/set
public class ProductMainPage {
	private int ProductID;
	private String Name;
	private String Photo;
	private float Price;

	public ProductMainPage(int ProductID,String Name, String Photo, float Price)
	{
		super();
		this.ProductID = ProductID;
		this.Name = Name;
		this.Photo = Photo;
		this.Price = Price;
		//this.SalePrice = SalePrice;	
	}
	
	public String toString() {
        // TODO Auto-generated method stub
        return "[ProductID = " + ProductID + ", Name = " +  Name + ", Photo = " +  Photo + ", Price = " +  Price +" ]";
    }
	
	public ProductMainPage()
	{
		super();
	}
	
	public void setProductID(int ProductID)
	{
		this.ProductID = ProductID;
	}
	
	public int getProductID()
	{
		return ProductID;
	}
	
	public void setName(String Name)
	{
		this.Name = Name;
	}
	
	public String getName()
	{
		return Name;
	}
	
	public void setPhoto(String Photo)
	{
		this.Photo = Photo;
	}
	
	public String getPhoto()
	{
		return Photo;
	}
	
	public void setPrice(float Price)
	{
		this.Price = Price;
	}
	
	public float getPrice()
	{
		return Price;
	}
	
}