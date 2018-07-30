package lent.model.vo;

public class Shop {

	private String shop_id;
	private String shop_name;
	private String shop_addr;
	private String shop_phone;
	
	public Shop() {}

	public Shop(String shop_id, String shop_name, String shop_addr, String shop_phone) {
		super();
		this.shop_id = shop_id;
		this.shop_name = shop_name;
		this.shop_addr = shop_addr;
		this.shop_phone = shop_phone;
	}
	
	

	public String getShop_id() {
		return shop_id;
	}

	public void setShop_id(String shop_id) {
		this.shop_id = shop_id;
	}

	public String getShop_name() {
		return shop_name;
	}

	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}

	public String getShop_addr() {
		return shop_addr;
	}

	public void setShop_addr(String shop_addr) {
		this.shop_addr = shop_addr;
	}

	public String getShop_phone() {
		return shop_phone;
	}

	public void setShop_phone(String shop_phone) {
		this.shop_phone = shop_phone;
	}

	@Override
	public String toString() {
		return "Shop [shop_id=" + shop_id + ", shop_name=" + shop_name + ", shop_addr=" + shop_addr + ", shop_phone="
				+ shop_phone + "]";
	}
	
	
	
}
