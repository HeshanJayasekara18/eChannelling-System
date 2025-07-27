package com.payment;

public class Payment {
	private int PayID;
	private String FullName;
	private String Email;
	private String Password;
	private String Address;
	private String City;
	private String Province;
	private String ZipCode;
	private String NameOnCard;
	private String CardNumber;
	private String ExpMonth;
	private String ExpYear;
	private String CVN;
	
	public Payment(int payID, String fullName, String email, String password, String address, String city,
			String province, String zipCode, String nameOnCard, String cardNumber, String expMonth, String expYear,
			String CVN) {
		
		this.PayID = payID;
		this.FullName = fullName;
		this.Email = email;
		this.Password = password;
		this.Address = address;
		this.City = city;
		this.Province = province;
		this.ZipCode = zipCode;
		this.NameOnCard = nameOnCard;
		this.CardNumber = cardNumber;
		this.ExpMonth = expMonth;
		this.ExpYear = expYear;
		this.CVN = CVN;
	}

	public int getPayID() {
		return PayID;
	}

	public String getFullName() {
		return FullName;
	}

	public String getEmail() {
		return Email;
	}

	public String getPassword() {
		return Password;
	}

	public String getAddress() {
		return Address;
	}

	public String getCity() {
		return City;
	}

	public String getProvince() {
		return Province;
	}

	public String getZipCode() {
		return ZipCode;
	}

	public String getNameOnCard() {
		return NameOnCard;
	}

	public String getCardNumber() {
		return CardNumber;
	}

	public String getExpMonth() {
		return ExpMonth;
	}

	public String getExpYear() {
		return ExpYear;
	}

	public String getCVN() {
		return CVN;
	}

}
