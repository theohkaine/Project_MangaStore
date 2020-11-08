package VO;

//Class VO for any items in the cart with get/set
public class itemCart {

	private String itemCartImage;
	private String itemCartName;
	private float itemCartPrice;
	private int itemCartQuantity;
	private int CartQuantityTotal;
	private float CartPriceTotal;
	private float columTotal;

	public itemCart() {
	}

	public itemCart(String itemCartImage,String itemCartName, float itemCartPrice, int itemCartQuantity) {
		this.itemCartImage = itemCartImage;
		this.itemCartName = itemCartName;
		this.itemCartPrice = itemCartPrice;
		this.itemCartQuantity = itemCartQuantity;
	}
	
	public String toString() {
        // TODO Auto-generated method stub
        return "[cartImage = " + itemCartImage + ", cartName = " +  itemCartName + ", cartPrice = " +  itemCartPrice + ", cartQuantity = " +  itemCartQuantity +" ]";
    }

	public String getitemCartImage() {
		return itemCartImage;
	}

	public void setitemCartImage(String itemCartImage) {
		this.itemCartImage = itemCartImage;
	}
	
	public String getitemCartName() {
		return itemCartName;
	}

	public void setitemCartName(String itemCartName) {
		this.itemCartName = itemCartName;
	}
	
	public float getitemCartPrice() {
		return itemCartPrice;
	}

	public void setitemCartPrice(float itemCartPrice) {
		this.itemCartPrice = itemCartPrice;
	}
	
	public int getitemCartQuantity() {
		return itemCartQuantity;
	}

	public void setitemCartQuantity(int itemCartQuantityTotal) {
		this.itemCartQuantity = itemCartQuantityTotal;
	}	
	
	public int getCartQuantityTotal() {
		return CartQuantityTotal;
	}

	public void setCartQuantityTotal(int CartQuantityTotal) {
		this.CartQuantityTotal = CartQuantityTotal;
	}	
	
	
	public float getCartPriceTotal() {
		return CartPriceTotal;
	}

	public void setCartPriceTotal(float CartPriceTotal) {
		this.CartPriceTotal = CartPriceTotal;
	}
	
	
	public float getcolumTotal() {
		return columTotal;
	}

	public void setcolumTotal(float columTotal) {
		this.columTotal = columTotal;
	}
}
