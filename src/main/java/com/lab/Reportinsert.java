package com.lab;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Reportinsert")
public class Reportinsert extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String doctorName = request.getParameter("doctor_name");
        String doctorEmail = request.getParameter("doctor_email");
        String password=request.getParameter("password");
        String doctorSpecialization = request.getParameter("doctor_specialization");
        String visitDate = request.getParameter("visit_date");
        String patientFullname = request.getParameter("patient_fullname");
        String Admissiondate = request.getParameter("admission_date");
        String patientMedicalNumber = request.getParameter("patient_medical_number");
        String reasonForAdmission = request.getParameter("reason_for_admission");
        String assessment = request.getParameter("patient_assessment");
        String diagnosis = request.getParameter("patient_diagnosis");
        String prescription = request.getParameter("patient_prescription"); 
        
        boolean isTrue;
        
        isTrue=ReportDBUtil.insertreport(doctorName, doctorEmail,password, doctorSpecialization, visitDate, patientFullname, Admissiondate, patientMedicalNumber, reasonForAdmission, assessment, diagnosis, prescription);
        if(isTrue==true) {
          RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
          dis.forward(request, response);
          
        }else {
          RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);        }
        
  }

}
