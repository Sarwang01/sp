package com.ECommerce.model;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;

@Entity
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long cId;
	
	private String userName;
	
	private String totalPrice;
	
	@OneToMany( targetEntity = Laptop.class,  cascade = CascadeType.ALL)
	@JoinColumn(name="cartId")
	private List<Laptop> laptops =new ArrayList<>();
	
	public Cart() {}

	public Cart(long cId, String userName, String totalPrice, List<Laptop> laptops) {
		super();
		this.cId = cId;
		this.userName = userName;
		this.totalPrice = totalPrice;
		this.laptops = laptops;
	}

	public long getcId() {
		return cId;
	}

	public void setcId(long cId) {
		this.cId = cId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public List<Laptop> getLaptops() {
		return laptops;
	}

	public void setLaptops(List<Laptop> laptops) {
		this.laptops = laptops;
	}

	
	
	
}
