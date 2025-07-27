package com.lab;


import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.lab.*;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;




@SuppressWarnings("unused")
public class ReportDBUtil{
  
  
  
  private static boolean isSuccess;
  private static Connection con =null;
  private static Statement stmt =null;
  private static ResultSet rs =null;
  
  
  
  public static List<Registration> validate1(String email, String password) {
	    ArrayList<Registration> rep = new ArrayList<>();

	    try {
	        con = (Connection) DBConnect.getConnection();
	        stmt = (Statement) con.createStatement();

	        // Query to validate login
	        String sql = "SELECT * FROM register WHERE email = '" + email + "' and password = '" + password + "'";

	        ResultSet rs1 = stmt.executeQuery(sql);

	        // Check if the ResultSet has any records (valid login)
	        if (rs1.next()) {
	            int id = rs1.getInt(1);
	            String firstname = rs1.getString(2);
	            String lastName = rs1.getString(3);
	            String email1 = rs1.getString(4);
	            String password1 = rs1.getString(5);
	            String rePassword = rs1.getString(6);

	            // Add the user details to the registration list
	            Registration r = new Registration(id, firstname, lastName, email1, password1, rePassword);
	            rep.add(r);
	        } 
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return rep; // Will return empty list if no matching user is found
	}

  
  public static boolean insertRegistration(String firstname, String lastname, String email, String password, String repassword) {
	    boolean isSuccess = false;

	    try {
	        // Establish the database connection
	        con = DBConnect.getConnection();
	        stmt = (Statement) con.createStatement();

	        // SQL query to insert a new registration record into the `register` table
	        String sql = "INSERT INTO register (id, firstname, lastname, email, password, repassword) "
	                   + "VALUES (0, '" + firstname + "', '" + lastname + "', '" + email + "', '" + password + "', '" + repassword + "')";

	        // Execute the SQL query
	        int rs = stmt.executeUpdate(sql);

	        // Check if the insert was successful
	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return isSuccess;
	}

  
  
  
  
   public static List<Report> validate(String doctor_email,String password){
      ArrayList <Report> cus = new ArrayList<>();
             
            try {
              con = (Connection) DBConnect.getConnection();
          stmt = (Statement) con.createStatement();
              
               
                String sql = "SELECT * FROM report WHERE doctor_email = '"+doctor_email+"' and password='"+password+"'";

          
                ResultSet rs1 = stmt.executeQuery(sql);
                
              if (rs1.next()) {
                int report_id = rs1.getInt(1);
                String doctor_name =rs1.getString(2);
                String doctor_email1 = rs1.getString(3);
                String password1 = rs1.getString(4);
                String doctor_specialization=rs1.getString(5);
                String visit_date = rs1.getString(6) ;
                String patient_fullname= rs1.getString(7);
                String admission_date= rs1.getString(8);
                String patient_medical_number = rs1.getString(9);
                String reason_for_admission = rs1.getString(10);
                String patient_assessment=rs1.getString(11);
                String patient_diagnosis = rs1.getString(12);
                String patient_prescription=rs1.getString(13);
                
                
                Report r = new Report(report_id,doctor_name,doctor_email1,password1,doctor_specialization,visit_date,patient_fullname,admission_date,
                    patient_medical_number,reason_for_admission,patient_assessment,patient_diagnosis,patient_prescription);
                cus.add(r);
              }
              
            }catch(Exception e){
              e.printStackTrace();
            }
          
            return cus;
          
        }  
  
  
    public static boolean insertreport(  String doctorName, String doctorEmail,String password, String doctorSpecialization, String visitDate, String patientFullname, String Admissiondate, 
          String patientMedicalNumber, String reasonForAdmission, String assessment, String diagnosis, String prescription) {
      boolean isSuccess = false;
  
        
        try {
          con = (Connection) DBConnect.getConnection();
      stmt = (Statement) con.createStatement();
          
           
            String sql = "Insert into report values (0,'" + doctorName + "','" + doctorEmail + "','"+password+"','" + doctorSpecialization + "','" + 
                    visitDate + "','" + patientFullname + "','" + Admissiondate + "','" + 
                    patientMedicalNumber + "','" + reasonForAdmission + "','" + assessment + "','" + 
                    diagnosis + "','" + prescription + "')";


      
            int rs = stmt.executeUpdate(sql) ;
            
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
      //update report method
    public static boolean updateReport(String reportId ,String doctorName, String doctorEmail,String password, String doctorSpecialization, String visitDate, String patientFullname, String Admissiondate, 
            String patientMedicalNumber, String reasonForAdmission, String assessment, String diagnosis, String prescription) {
    	try {
    		 con = (Connection) DBConnect.getConnection();
    	      stmt = (Statement) con.createStatement();
    	      
    	      String sql = "UPDATE report SET doctor_name='" + doctorName + "', doctor_email='" + doctorEmail + "', password='" + password + "'"
    	      		+ ", doctor_specialization='" + doctorSpecialization + "', visit_date='" + visitDate + "', patient_fullname='" + patientFullname + "'"
    	      				+ ", admission_date='" + Admissiondate + "', patient_medical_number='" + patientMedicalNumber + "', reason_for_admission='" + reasonForAdmission + "'"
    	      						+ ", patient_assessment='" + assessment + "', patient_diagnosis='" + diagnosis + "', patient_prescription='" + prescription + "' WHERE report_id = " + reportId;
    	      
    	      int rs=stmt.executeUpdate(sql);
    	      if(rs >0) {
    	    	  isSuccess = true;
    	      }else {
    	    	  isSuccess = false;
    	      }

    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	return isSuccess;
    }
    //retrieve part
    public static List<Report> getReportDetails(String reportId){
    	int convertedID  =Integer.parseInt(reportId);
    	ArrayList<Report> cus = new ArrayList<>();
    	
    	try {
    		con = (Connection) DBConnect.getConnection();
  	      stmt = (Statement) con.createStatement();
  	      String sql = "select * from report where report_id ='"+convertedID+"'";
  	      rs=stmt.executeQuery(sql);
    		 while(rs.next()) {
    			 int report_id = rs.getInt(1);
                 String doctor_name =rs.getString(2);
                 String doctor_email = rs.getString(3);
                 String password = rs.getString(4);
                 String doctor_specialization=rs.getString(5);
                 String visit_date = rs.getString(6) ;
                 String patient_fullname= rs.getString(7);
                 String admission_date= rs.getString(8);
                 String patient_medical_number = rs.getString(9);
                 String reason_for_admission = rs.getString(10);
                 String patient_assessment=rs.getString(11);
                 String patient_diagnosis = rs.getString(12);
                 String patient_prescription=rs.getString(13);
                 
                 Report r = new Report(report_id,doctor_name,doctor_email,password,doctor_specialization,visit_date,patient_fullname,admission_date,
                         patient_medical_number,reason_for_admission,patient_assessment,patient_diagnosis,patient_prescription);
                   cus.add(r);
    		 }
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return cus;
    }
    public static boolean deleteReport(String reportId) {
    	int convID = Integer.parseInt(reportId);
    	
    	 try {
    		 con = (Connection) DBConnect.getConnection();
     	      stmt = (Statement) con.createStatement();
     	      
     	     String sql="DELETE FROM report WHERE report_id='" + convID + "'";
             int r =stmt.executeUpdate(sql);
     	      
     	      if(r>0) {
     	    	 isSuccess = true;
     	      }
     	      else {
     	    	 isSuccess = false;
     	      }
    		 
    	 }catch(Exception e) {
    		 e.printStackTrace();
    	 }
    	return isSuccess;
    }
}