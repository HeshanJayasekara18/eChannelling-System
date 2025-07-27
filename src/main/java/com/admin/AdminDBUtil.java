package com.admin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

// Custom Exception for Invalid User Input
	@SuppressWarnings("serial")
	class InvalidInputException extends Exception {
	    public InvalidInputException(String message) {
	        super(message);
	    }
	}

	// Custom Exception for Type Mismatch
	@SuppressWarnings("serial")
	class TypeMismatchException extends Exception {
	    public TypeMismatchException(String message) {
	        super(message);
	    }
	}

	@SuppressWarnings("serial")
	// Custom Exception for Database Errors
	class DatabaseException extends Exception {
	    public DatabaseException(String message) {
	        super(message);
	    }
	}

	public class AdminDBUtil {

	    private static boolean isSuccess;
	    private static Connection con = null;
	    private static Statement stmt = null;
	    private static ResultSet rs = null;

	    // Validate admin credentials------------------------------------------------------------------------------------------------------------------
	    public static List<Admin> validate(String userName, String password) throws InvalidInputException, DatabaseException {
	        ArrayList<Admin> admin = new ArrayList<>();

	        try {
	            if (userName == null || password == null) {
	                throw new InvalidInputException("Username or password cannot be null.");
	            }

	            con = (Connection) DBConnect.getConnection();
	            stmt = (Statement) con.createStatement();

	            String sql = "SELECT * FROM admin WHERE UserName='" + userName + "' AND Password='" + password + "'";
	            rs = stmt.executeQuery(sql);

	            if (rs.next()) {
	                int id = rs.getInt(1);
	                String fname = rs.getString(2);
	                String lname = rs.getString(3);
	                String phone = rs.getString(4);
	                String email = rs.getString(5);
	                String userU = rs.getString(6);
	                String passU = rs.getString(7);

	                Admin a = new Admin(id, fname, lname, phone, email, userU, passU);
	                admin.add(a);
	            }

	        } catch (SQLException e) {
	            throw new DatabaseException("Database error occurred while validating user.");
	        }finally {
	        	System.out.println("Exception Error");
	        }

	        return admin;
	    }

	    
	    
	    
	    
	    // Insert admin details-------------------------------------------------------------------------------------------------------
	    public static boolean insertadmin(String fname, String lname, String phone, String email, String username, String password)
	            throws InvalidInputException, DatabaseException, TypeMismatchException {
	        boolean isSuccess = false;

	        try {
	            if (fname == null || lname == null || phone == null || email == null || username == null || password == null) {
	                throw new InvalidInputException("Input fields cannot be null.");
	            }

	            if (!phone.matches("\\d+")) {
	                throw new TypeMismatchException("Phone number should contain only digits.");
	            }

	            con = (Connection) DBConnect.getConnection();
	            stmt = (Statement) con.createStatement();

	            String sql = "INSERT INTO admin VALUES(0, '" + fname + "','" + lname + "','" + phone + "','" + email + "','" + username + "','" + password + "')";
	            int rs = stmt.executeUpdate(sql);

	            if (rs > 0) {
	                isSuccess = true;
	            }

	        } catch (SQLException e) {
	            throw new DatabaseException("Database error occurred while inserting admin.");
	        }

	        return isSuccess;
	    }

	    
	    
	    
	    
	    
	    
	    // Update admin details--------------------------------------------------------------------------------------
	    public static boolean updateAdmin(String id, String fname, String lname, String phone, String email, String username, String password)
	            throws InvalidInputException, DatabaseException, TypeMismatchException {

	        try {
	            if (id == null || fname == null || lname == null || phone == null || email == null || username == null || password == null) {
	                throw new InvalidInputException("Input fields cannot be null.");
	            }

	           
	            con = (Connection) DBConnect.getConnection();
	            stmt = (Statement) con.createStatement();

	            String sql = "UPDATE admin SET FirstName='" + fname + "', LastName='" + lname + "', Phone='" + phone + "', Email='" + email + "', UserName='" + username
	                    + "', Password='" + password + "' WHERE ID='" + id + "'";

	            int rs = stmt.executeUpdate(sql);

	            if (rs > 0) {
	                isSuccess = true;
	            } else {
	                isSuccess = false;
	            }
	        } catch (SQLException e) {
	            throw new DatabaseException("Database error occurred while updating admin.");
	        }

	        return isSuccess;
	    }

	    
	    
	    
	    // Get admin details by ID--------------------------------------------------------------------------------------
	    public static List<Admin> getAdminDtails(String Id) throws InvalidInputException, DatabaseException {
	        int convertedID;
	        ArrayList<Admin> admin = new ArrayList<>();

	        try {
	            if (Id == null) {
	                throw new InvalidInputException("ID cannot be null.");
	            }

	            convertedID = Integer.parseInt(Id);

	            con = DBConnect.getConnection();
	            stmt = (Statement) con.createStatement();

	            String sql = "SELECT * FROM admin WHERE ID='" + convertedID + "'";
	            rs = stmt.executeQuery(sql);

	            while (rs.next()) {
	                int id = rs.getInt(1);
	                String fname = rs.getString(2);
	                String lname = rs.getString(3);
	                String phone = rs.getString(4);
	                String email = rs.getString(5);
	                String userU = rs.getString(6);
	                String passU = rs.getString(7);

	                Admin a = new Admin(id, fname, lname, phone, email, userU, passU);
	                admin.add(a);
	            }

	        } catch (SQLException e) {
	            throw new DatabaseException("Database error occurred while retrieving admin details.");
	        }

	        return admin;
	    }

	    
	    
	    
	    
	    
	    // Delete admin by ID-----------------------------------------------------------------------------------------------
	    public static boolean deleteadmin(String id) throws InvalidInputException, DatabaseException {

	        int convId;

	        try {
	            if (id == null) {
	                throw new InvalidInputException("Admin ID cannot be null.");
	            }

	            convId = Integer.parseInt(id);

	            con = (Connection) DBConnect.getConnection();
	            stmt = (Statement) con.createStatement();

	            String sql = "DELETE FROM admin WHERE ID='" + convId + "'";
	            int rs = stmt.executeUpdate(sql);

	            if (rs > 0) {
	                isSuccess = true;
	            } else {
	                isSuccess = false;
	            }
	        } catch (SQLException e) {
	            throw new DatabaseException("Database error occurred while deleting admin.");
	        }

	        return isSuccess;
	    }

	    
	    
	    
	    
	    
	    // Get doctor details by ID-------------------------------------------------------------------------------------------
	    public static List<Doctor> getDoctorDtails(String id) throws InvalidInputException, DatabaseException {
	        int convId;
	        ArrayList<Doctor> doc = new ArrayList<>();

	        try {
	            if (id == null) {
	                throw new InvalidInputException("Doctor ID cannot be null.");
	            }

	            convId = Integer.parseInt(id);

	            con = DBConnect.getConnection();
	            stmt = (Statement) con.createStatement();

	            String sql = "SELECT * FROM doctor WHERE ID='" + convId + "'";
	            rs = stmt.executeQuery(sql);

	            while (rs.next()) {
	                int docID = rs.getInt(1);
	                String firstName = rs.getString(2);
	                String lastName = rs.getString(3);
	                String specialization = rs.getString(4);
	                String phone = rs.getString(5);
	                String email = rs.getString(6);
	                String description = rs.getString(7);
	                String userName = rs.getString(8);
	                String password = rs.getString(9);
	                String dob = rs.getString(10);
	                String gender = rs.getString(11);
	                String address = rs.getString(12);
	                String availability = rs.getString(13);

	                Doctor d = new Doctor(docID, firstName, lastName, specialization, phone, email, description, userName, password, dob, gender, address, availability);
	                doc.add(d);
	            }

	        } catch (SQLException e) {
	            throw new DatabaseException("Database error occurred while retrieving doctor details.");
	        }

	        return doc;
	    }

	    
	    
	    
	    
	    
	    // Insert doctor details-----------------------------------------------------------------------------------------------------------------------------------------
	    public static boolean insertdoctor(String fname, String lname, String specialization, String phone, String email, String description,
	                                       String username, String password, String dob, String gender, String address, String availability)
	            throws InvalidInputException, DatabaseException, TypeMismatchException {

	        boolean isSuccess = false;

	        try {
	            if (fname == null || lname == null || specialization == null || phone == null || email == null || username == null || password == null || dob == null
	                    || gender == null || address == null || availability == null) {
	                throw new InvalidInputException("Input fields cannot be null.");
	            }

	            if (!phone.matches("\\d+")) {
	                throw new TypeMismatchException("Phone number should contain only digits.");
	            }

	            con = (Connection) DBConnect.getConnection();
	            stmt = (Statement) con.createStatement();

	            String sql = "INSERT INTO doctor VALUES(0, '" + fname + "','" + lname + "','" + specialization + "','" + phone + "','" + email + "','" + description
	                    + "','" + username + "','" + password + "','" + dob + "','" + gender + "','" + address + "','" + availability + "')";
	            int rs = stmt.executeUpdate(sql);

	            if (rs > 0) {
	                isSuccess = true;
	            }

	        } catch (SQLException e) {
	            throw new DatabaseException("Database error occurred while inserting doctor.");
	        }

	        return isSuccess;
	    }

	    
	    
	    
	    
	    
	    // Update doctor details------------------------------------------------------------------------------------------------------------------------------
	    public static boolean updateDoctor(String id, String fname, String lname, String specialization, String phone, String email, String description,
	                                       String username, String password, String dob, String gender, String address)
	            throws InvalidInputException, DatabaseException, TypeMismatchException {

	        try {
	            if (id == null || fname == null || lname == null || specialization == null || phone == null || email == null || username == null || password == null || dob == null || gender == null || address == null) {
	                throw new InvalidInputException("Input fields cannot be null.");
	            }

	            if (!phone.matches("\\d+")) {
	                throw new TypeMismatchException("Phone number should contain only digits.");
	            }

	            con = (Connection) DBConnect.getConnection();
	            stmt = (Statement) con.createStatement();

	            String sql = "UPDATE doctor SET FirstName='" + fname + "', LastName='" + lname + "', Specialization='" + specialization + "', Phone='" + phone
	                    + "', Email='" + email + "', Description='" + description + "', UserName='" + username + "', Password='" + password + "', DOB='" + dob
	                    + "', Gender='" + gender + "', Address='" + address + "' WHERE ID='" + id + "'";

	            int rs = stmt.executeUpdate(sql);

	            if (rs > 0) {
	                isSuccess = true;
	            } else {
	                isSuccess = false;
	            }
	        } catch (SQLException e) {
	            throw new DatabaseException("Database error occurred while updating doctor.");
	        }

	        return isSuccess;
	    }
	    
	    

	    
	    
	    
	    
	    // Delete doctor by ID--------------------------------------------------------------------------------------------
	    public static boolean deletedoctor(String id) throws InvalidInputException, DatabaseException {

	        int convId;

	        try {
	            if (id == null) {
	                throw new InvalidInputException("Doctor ID cannot be null.");
	            }

	            convId = Integer.parseInt(id);

	            con = (Connection) DBConnect.getConnection();
	            stmt = (Statement) con.createStatement();

	            String sql = "DELETE FROM doctor WHERE ID='" + convId + "'";
	            int rs = stmt.executeUpdate(sql);

	            if (rs > 0) {
	                isSuccess = true;
	            } else {
	                isSuccess = false;
	            }
	        } catch (SQLException e) {
	            throw new DatabaseException("Database error occurred while deleting doctor.");
	        }

	        return isSuccess;
	    }

	    
	    
	    
	    
	    // Validate doctor availability------------------------------------------------------------------------------
	    public static List<Doctor> validateDoc(String availability) throws InvalidInputException, DatabaseException {
	        ArrayList<Doctor> doctor = new ArrayList<>();

	        try {
	            if (availability == null) {
	                throw new InvalidInputException("Availability cannot be null.");
	            }

	            con = DBConnect.getConnection();
	            stmt = (Statement) con.createStatement();

	            String sql = "SELECT * FROM doctor WHERE LOWER(Avalability) = LOWER('" + availability + "')";
	            rs = stmt.executeQuery(sql);

	            while (rs.next()) {
	                int id = rs.getInt(1);
	                String fname = rs.getString(2);
	                String lname = rs.getString(3);
	                String specialization = rs.getString(4);
	                String phone = rs.getString(5);
	                String email = rs.getString(6);
	                String description = rs.getString(7);
	                String DName = rs.getString(8);
	                String pass = rs.getString(9);
	                String dob = rs.getString(10);
	                String gender = rs.getString(11);
	                String address = rs.getString(12);
	                String docavailability = rs.getString(13);

	                Doctor a = new Doctor(id, fname, lname, specialization, phone, email, description, DName, pass, dob, gender, address, docavailability);
	                doctor.add(a);
	            }

	        } catch (SQLException e) {
	            throw new DatabaseException("Database error occurred while validating doctor availability.");
	        }

	        return doctor;
	    }
	}


