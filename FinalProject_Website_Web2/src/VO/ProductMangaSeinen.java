package VO;

//Class VO for any Manga Seinen book information with get/set
public class ProductMangaSeinen {
	private int MSeinenProductID;
	private String MSeinenName;
	private String MSeinenPhoto;
	private float MSeinenPrice;
	
	public ProductMangaSeinen(int MSeinenProductID,String MSeinenName, String MSeinenPhoto, float MSeinenPrice)
	{
		super();
		this.MSeinenProductID = MSeinenProductID;
		this.MSeinenName = MSeinenName;
		this.MSeinenPhoto = MSeinenPhoto;
		this.MSeinenPrice = MSeinenPrice;
	}
	
	public String toString() {
        // TODO Auto-generated method stub
        return "[ProductID = " + MSeinenProductID + ", Name = " +  MSeinenName + ", Photo = " +  MSeinenPhoto + ", Price = " +  MSeinenPrice +" ]";
    }
	
	public ProductMangaSeinen()
	{
		super();
	}
	
	public void setMSeinenProductID(int MSeinenProductID)
	{
		this.MSeinenProductID = MSeinenProductID;
	}
	
	public int getMSeinenProductID()
	{
		return MSeinenProductID;
	}
	
	public void setMSeinenName(String MSeinenName)
	{
		this.MSeinenName = MSeinenName;
	}
	
	public String getMSeinenName()
	{
		return MSeinenName;
	}
	
	public void setMSeinenPhoto(String MSeinenPhoto)
	{
		this.MSeinenPhoto = MSeinenPhoto;
	}
	
	public String getMSeinenPhoto()
	{
		return MSeinenPhoto;
	}
	
	public void setMSeinenPrice(float MSeinenPrice)
	{
		this.MSeinenPrice = MSeinenPrice;
	}
	
	public float getMSeinenPrice()
	{
		return MSeinenPrice;
	}
	
}