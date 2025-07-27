package com.lab;

public class Registration {
	int id;
    String firstName;
    String lastName;
    String email;
    String password;
    String rePassword;
	public Registration(int id, String firstName, String lastName, String email, String password, String rePassword) {
		
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.rePassword = rePassword;
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
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getRePassword() {
		return rePassword;
	}
    
    
}
