package model;

public class Product {
	
	private int productID;
	private int categoryID;
	private String productName;
	private String productDesc;
	private int productPrice;
	
	public Product(int productID, int categoryID, String productName, String productDesc, int productPrice) {
		this.productID = productID;
		this.categoryID = categoryID;
		this.productName = productName;
		this.productDesc = productDesc;
		this.productPrice = productPrice;
	}
	
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDesc() {
		return productDesc;
	}
	public void setProductDesc(String productDesc) {
		this.productDesc = productDesc;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	
}
