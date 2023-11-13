package com.mk;

import java.io.Serializable;

public class Product implements Serializable{
	
	public static final long serialVersionUID=1L;
    private int productId;
    private String productName;
    private double productPrice;
    private String productDescription;
    
    
	public Product(int productId, String productName, double productPrice,String productDescription) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productDescription=productDescription;
	}

	public Product( String productName, double productPrice,String productDescription) {
		super();
		
		this.productName = productName;
		this.productPrice = productPrice;
		this.productDescription=productDescription;
	}


	

	public Product() {
		
	}




	public int getProductId() {
		return productId;
	}


	public void setProductId(int productId) {
		this.productId = productId;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public double getProductPrice() {
		return productPrice;
	}


	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	
	public String getProductDescription() {
		return productDescription;
	}


	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}


    
}
