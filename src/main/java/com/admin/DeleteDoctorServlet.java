package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteDoctorServlet")
public class DeleteDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String id=request.getParameter("id");
	boolean isTrue = false;
	
	try {
		isTrue = AdminDBUtil.deletedoctor(id);
	} catch (InvalidInputException | DatabaseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	if(isTrue == true) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminsuccess.jsp");
		dispatcher.forward(request, response);
	}
	else {
		boolean doctorDetails = false;
		try {
			doctorDetails = AdminDBUtil.deletedoctor(id);
		} catch (InvalidInputException | DatabaseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("doctorDetails", doctorDetails);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("adminunsuccess.jsp");
		dispatcher.forward(request, response);
		
	}
	
}


}
