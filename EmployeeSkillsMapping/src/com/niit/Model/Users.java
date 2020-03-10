package com.niit.Model;

public class Users {
	
	protected int userId;
	private String username;
	private String mobileNo;
	private String address;
	
	
	public Users() {
		
	}
	public Users(int userId, String username, String mobileNo, String address) {
		//super();
		this.userId = userId;
		this.username = username;
		this.mobileNo = mobileNo;
		this.address = address;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	

	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	

}
