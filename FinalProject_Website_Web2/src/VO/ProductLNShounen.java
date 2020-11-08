package VO;

//Class VO for any Light Novel Shounen book information with get/set
public class ProductLNShounen {
	private int LNShounenID;
	private String Name;
	private String Photo;
	private float Price;

	public ProductLNShounen(int LNShounenID,String Name, String Photo, float Price)
	{
		super();
		this.LNShounenID = LNShounenID;
		this.Name = Name;
		this.Photo = Photo;
		this.Price = Price;
	}
	
	public String toString() {
        // TODO Auto-generated method stub
        return "[ProductID = " + LNShounenID + ", Name = " +  Name + ", Photo = " +  Photo + ", Price = " +  Price +" ]";
    }
	
	public ProductLNShounen()
	{
		super();
	}
	
	public void setLNShounenID(int LNShounenID)
	{
		this.LNShounenID = LNShounenID;
	}
	
	public int getLNShounenID()
	{
		return LNShounenID;
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