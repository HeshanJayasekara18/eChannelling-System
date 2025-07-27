package com.lab;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReportUpdateServlet")
public class ReportUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reportId = request.getParameter("reportId");
		String doctorName= request.getParameter("doctorName");
		String doctorEmail=request.getParameter("doctorEmail");
	    String password=request.getParameter("password");
		String doctorSpecialization=request.getParameter("doctorSpecialization");
		String visitDate=request.getParameter("visitDate");
		String patientFullname=request.getParameter("patientFullname");
		String Admissiondate=request.getParameter("Admissiondate") ; 
		String patientMedicalNumber=request.getParameter("patientMedicalNumber");
		String reasonForAdmission=request.getParameter("reasonForAdmission") ;
		String assessment = request.getParameter("assessment");
		String diagnosis=request.getParameter("diagnosis");
		String prescription=request.getParameter("prescription");
		
		boolean isTrue;
		isTrue=ReportDBUtil.updateReport(reportId, doctorName, doctorEmail, password, doctorSpecialization, visitDate, patientFullname, Admissiondate, patientMedicalNumber, reasonForAdmission, assessment, diagnosis, prescription);
		
		if(isTrue==true) {
			List<Report> repDetails  =ReportDBUtil.getReportDetails(reportId);
			request.setAttribute("repDetails",repDetails);
			RequestDispatcher dis = request.getRequestDispatcher("reportDisplay.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);    
		}
		
		
	}

}