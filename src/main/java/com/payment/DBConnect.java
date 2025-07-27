package com.payment;

import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class DBConnect {

    private static String url = "jdbc:mysql://localhost:3306/echannellingsystem";
    private static String userName = "root";
    private static String password = "33632366";
    private static java.sql.Connection con;

    public static Connection getConnection() {
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
        	
        	con = DriverManager.getConnection(url,userName,password);
        
        }catch (Exception e) {
        	System.out.println("Database Connection is not Success");
        }
        
        return (Connection) con;
    }
}
