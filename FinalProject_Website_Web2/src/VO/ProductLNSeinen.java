package VO;

//Class VO for any Light Novel Seinen book information with get/set
public class ProductLNSeinen {
	private int LNSeinenID;
	private String Name;
	private String Photo;
	private float Price;

	public ProductLNSeinen(int LNSeinenID,String Name, String Photo, float Price)
	{
		super();
		this.LNSeinenID = LNSeinenID;
		this.Name = Name;
		this.Photo = Photo;
		this.Price = Price;
	}
	
	public String toString() {
        // TODO Auto-generated method stub
        return "[ProductID = " + LNSeinenID + ", Name = " +  Name + ", Photo = " +  Photo + ", Price = " +  Price +" ]";
    }
	
	public ProductLNSeinen()
	{
		super();
	}
	
	public void setLNSeinenID(int LNSeinenID)
	{
		this.LNSeinenID = LNSeinenID;
	}
	
	public int getLNSeinenID()
	{
		return LNSeinenID;
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