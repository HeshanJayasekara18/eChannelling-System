package com.lab;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteReportServlet")
public class DeleteReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reportId = request.getParameter("reportId");
		boolean isTrue;
		
		isTrue = ReportDBUtil.deleteReport(reportId);
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("reportnew.jsp");
	          dis.forward(request, response);
		} 
		else {
			List<Report> repDetails = ReportDBUtil.getReportDetails(reportId);
			request.setAttribute("repDetails", repDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("reportDisplay.jsp");
			dis.forward(request, response);
		}
	}

}