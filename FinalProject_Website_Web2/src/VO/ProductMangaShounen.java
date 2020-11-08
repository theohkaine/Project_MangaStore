package VO;

//Class VO for any Manga Shounen book information with get/set
public class ProductMangaShounen {
	private int ProductID;
	private String Name;
	private String Photo;
	private float Price;

	public ProductMangaShounen(int ProductID,String Name, String Photo, float Price)
	{
		super();
		this.ProductID = ProductID;
		this.Name = Name;
		this.Photo = Photo;
		this.Price = Price;
	}
	
	public String toString() {
        // TODO Auto-generated method stub
        return "[ProductID = " + ProductID + ", Name = " +  Name + ", Photo = " +  Photo + ", Price = " +  Price +" ]";
    }
	
	public ProductMangaShounen()
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