package com.admin;

public class Admin {

	private int id;
	private String firstName;
	private String lastName;
	private String phone;
	private String email;
	private String userName;
	private String password;
	
	
	public Admin(int id, String firstName, String lastName, String phone, String email, String username,String password) {
		
		this.id = id;
		this.firstName = firstName;
	    this.lastName=lastName;
	    this.phone = phone;
		this.email = email;
		this.userName = username;
		this.password = password;
	}


	
	public int getId() {
		return id;
	}

	public String getFirstName() {
		return firstName;
	}
	
	public String getLastName() {
		return lastName;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getEmail() {
		return email;
	}

	

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
	
	
	public int getAdminDtails() {
		return id;
	}
	
}



