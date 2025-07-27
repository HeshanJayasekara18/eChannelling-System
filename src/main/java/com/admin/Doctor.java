package com.admin;

public class Doctor {
	private int id;
	private String firstName;
	private String lastName;
	private String specialization;
	private String phone;
	private String email;
	private String description;
	private String userName;
	private String password;
	private String dob;
	private String gender;
	private String address;
	private String Avalability;
	
	public Doctor(int id, String firstName, String lastName, String specialization, String phone, String email, String description, String userName, String password, String dob, String gender, String address,String Avalability) {
		
		this.id = id;
		this.firstName = firstName;
	    this.lastName = lastName;
	    this.specialization = specialization;
	    this.phone = phone;
		this.email = email;
		this.description = description;
		this.userName = userName;
		this.password = password;
		this.dob = dob;
		this.gender = gender;
		this.address = address;
		this.Avalability=Avalability;
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

	public String getSpecialization() {
		return specialization;
	}

	public String getPhone() {
		return phone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getDescription() {
		return description;
	}
	
	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
	
	public String getDOB() {
		return dob;
	}
	
	public String getGender() {
		return gender;
	}
	
	public String getAddress() {
		return address;
	}
	public String getAvalability() {
		return Avalability;
	}



	





	
}

 


