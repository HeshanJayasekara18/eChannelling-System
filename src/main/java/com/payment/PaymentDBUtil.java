package com.payment;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class PaymentDBUtil {    
	
    private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean createpayment(String FullName, String Email, String Password, String Address, String City, String Province, String ZipCode, String NameOnCard, String CardNumber, String ExpMonth, String ExpYear, String CVN){
		
		boolean isSuccess = false;
		
		try {
			con = (Connection) DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			
			String sql = "INSERT INTO paysheet VALUES (0,'"+FullName+"','"+Email+"','"+Password+"','"+Address+"','"+City+"','"+Province+"','"+ZipCode+"','"+NameOnCard+"','"+CardNumber+"','"+ExpMonth+"','"+ExpYear+"','"+CVN+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static List<Payment> validate (String Email, String Password){
		
		ArrayList <Payment> payment = new ArrayList<>();
		
		try {
			con = (Connection) DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			
			String sql = "SELECT * FROM paysheet WHERE Email = '"+Email+"' and Password = '"+Password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				int PayID = rs.getInt(1);
				String FullName = rs.getString(2);
				String Email1 = rs.getString(3);
				String Password1 = rs.getString(4);
				String Address = rs.getString(5);
				String City = rs.getString(6);
				String Province = rs.getString(7);
				String ZipCode = rs.getString(8);
				String NameOnCard = rs.getString(9);
				String CardNumber = rs.getString(10);
				String ExpMonth = rs.getString(11);
				String ExpYear = rs.getString(12);
				String CVN = rs.getString(13);
				
				Payment p = new Payment(PayID,FullName,Email1,Password1,Address,City,Province,ZipCode,NameOnCard,CardNumber,ExpMonth,ExpYear,CVN);
				payment.add(p);
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return payment;
	}
	
	public static boolean updatepayment(String PayID, String FullName, String Email, String Password, String Address, String City, String Province, String ZipCode, String NameOnCard, String CardNumber, String ExpMonth, String ExpYear, String CVN) {
		try {
			con = (Connection) DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			
			String sql = "UPDATE paysheet SET FullName = '"+FullName+"', Email = '"+Email+"', Password = '"+Password+"', Address = '"+Address+"', City = '"+City+"', Province = '"+Province+"', ZipCode ='"+ZipCode+"', NameOnCard = '"+NameOnCard+"', CardNumber = '"+CardNumber+"', ExpMonth = '"+ExpMonth+"', ExpYear = '"+ExpYear+"', CVN = '"+CVN+"'" + "WHERE PayID = '"+PayID+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List <Payment> getPaymentDetails (String PayID){
		
		int convertedID = Integer.parseInt(PayID);
		
		ArrayList <Payment> pay = new ArrayList<>();
		
		try {
			con = (Connection) DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			
			String sql = "SELECT * FROM paysheet WHERE PayID='"+convertedID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int PayID1 = rs.getInt(1);
				String FullName = rs.getString(2);
				String Email = rs.getString(3);
				String Password = rs.getString(4);
				String Address = rs.getString(5);
				String City = rs.getString(6);
				String Province = rs.getString(7);
				String ZipCode = rs.getString(8);
				String NameOnCard = rs.getString(9);
				String CardNumber = rs.getString(10);
				String ExpMonth = rs.getString(11);
				String ExpYear = rs.getString(12);
				String CVN = rs.getString(13);	
				
				Payment p = new Payment(PayID1, FullName, Email, Password, Address, City, Province, ZipCode, NameOnCard, CardNumber, ExpMonth, ExpYear, CVN);
				pay.add(p);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		return pay;
	}
	
	public static boolean deletePayment(String PayID) {
		
		int convID = Integer.parseInt(PayID);
		
		try {
			
			con = (Connection) DBConnect.getConnection();
			stmt = (Statement) con.createStatement();
			
			String sql = "DELETE FROM paysheet WHERE PayID = '"+convID+"'";
			
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				
				isSuccess = true;
				
			}else {
				
				isSuccess = false;
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

}