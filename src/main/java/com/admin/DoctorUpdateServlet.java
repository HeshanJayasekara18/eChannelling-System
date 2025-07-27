package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DoctorUpdateServlet")
public class DoctorUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	String id = request.getParameter("id");
	String firstName = request.getParameter("fname");
    String lastName = request.getParameter("lname");
    String specialization = request.getParameter("specialization");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String description = request.getParameter("decription");
    String userName = request.getParameter("uname");
    String password = request.getParameter("pass");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
    
    
		
		boolean isTrue = false;
		
		try {
			isTrue = AdminDBUtil.updateDoctor(id,firstName,lastName,specialization,phone,email,description,userName,password,dob,gender,address);
		} catch (InvalidInputException | DatabaseException | TypeMismatchException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(isTrue == true) {
			
			List<Admin> doctorDetails = null;
			try {
				doctorDetails = AdminDBUtil.getAdminDtails(id);
			} catch (InvalidInputException | DatabaseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("doctorDetails", doctorDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("doctorvaliditycheck.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Admin> doctorDetails = null;
			try {
				doctorDetails = AdminDBUtil.getAdminDtails(id);
			} catch (InvalidInputException | DatabaseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("doctorDetails", doctorDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}
}

