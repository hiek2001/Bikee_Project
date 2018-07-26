package lent.model.vo;

import java.util.Date;

public class LentBike {
	private String merchantUid;
	private int methodNum;
	private String bikeId;
	private Date buyDate;
	private Date returnDate;
	private String buyerId;
	private String shopId;
	
	public LentBike() {
		
	}

	public LentBike(String merchantUid, int methodNum, String bikeId, Date buyDate, Date returnDate, String buyerId,
			String shopId) {
		this.merchantUid = merchantUid;
		this.methodNum = methodNum;
		this.bikeId = bikeId;
		this.buyDate = buyDate;
		this.returnDate = returnDate;
		this.buyerId = buyerId;
		this.shopId = shopId;
	}

	public String getMerchantUid() {
		return merchantUid;
	}

	public void setMerchantUid(String merchantUid) {
		this.merchantUid = merchantUid;
	}

	public int getMethodNum() {
		return methodNum;
	}

	public void setMethodNum(int methodNum) {
		this.methodNum = methodNum;
	}

	public String getBikeId() {
		return bikeId;
	}

	public void setBikeId(String bikeId) {
		this.bikeId = bikeId;
	}

	public Date getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}

	public Date getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}

	public String getBuyerId() {
		return buyerId;
	}

	public void setBuyerId(String buyerId) {
		this.buyerId = buyerId;
	}

	public String getShopId() {
		return shopId;
	}

	public void setShopId(String shopId) {
		this.shopId = shopId;
	}

	@Override
	public String toString() {
		return "LentBike [merchantUid=" + merchantUid + ", method_num=" + methodNum + ", bikeId=" + bikeId
				+ ", buyDate=" + buyDate + ", returnDate=" + returnDate + ", buyerId=" + buyerId + ", shopId=" + shopId
				+ "]";
	}
}
