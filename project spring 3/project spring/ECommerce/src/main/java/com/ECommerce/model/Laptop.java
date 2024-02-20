package com.ECommerce.model;

import jakarta.persistence.Entity;

import jakarta.persistence.Id;

@Entity
public class Laptop {

	@Id
	private long lId;
	private String brand;
	private String model;
	private String image;
	private String price;
	
	public Laptop(){}

	public Laptop(long lId, String brand, String model, String image, String price) {
		super();
		this.lId = lId;
		this.brand = brand;
		this.model = model;
		this.image = image;
		this.price = price;
	}

	public long getlId() {
		return lId;
	}

	public void setlId(long lId) {
		this.lId = lId;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	
	
	
}
