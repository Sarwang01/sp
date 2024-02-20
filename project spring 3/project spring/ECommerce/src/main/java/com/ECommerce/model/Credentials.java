package com.ECommerce.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


@Entity
public class Credentials {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long Id;
	private String userName;
	private String passWord;
	private String role;
	
	public Credentials() {}

	public Credentials( String userName, String passWord, String role) {
		super();
		
		this.userName = userName;
		this.passWord = passWord;
		this.role = role;
	}
	
	public Credentials(long id, String userName, String passWord, String role) {
		super();
		Id = id;
		this.userName = userName;
		this.passWord = passWord;
		this.role = role;
	}

	public long getId() {
		return Id;
	}

	public void setId(long id) {
		Id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	
	
	
	
}
