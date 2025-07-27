package com.appointment;




import java.sql.DriverManager;

import com.mysql.jdbc.Connection;

public class DBConnect {

	// Setting up the URL, username, and password for the database connection
		private static String url = "jdbc:mysql://localhost:3306/echannellingsystem";
		private static String userName = "root";
		private static String password = "33632366";
		private static Connection con;

		// Method to get the database connection
		public static Connection getConnection() {
			
			try {
				// Loading the MySQL JDBC driver
				Class.forName("com.mysql.jdbc.Driver");
				
				// Establishing the database connection using the DriverManager
				con = (Connection) DriverManager.getConnection(url, userName, password);
				
			}
			catch (Exception e) {
				
				// Printing the error message if the connection is not successful
				System.out.println("Database connection is not success!!!");
			}
			
			return con;
		}
	}


