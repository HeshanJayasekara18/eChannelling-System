package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DoctorInsertServlet")
public class DoctorInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String specialization = request.getParameter("specialization");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String description = request.getParameter("description");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String avalability = request.getParameter("avalability");
        
        boolean isTrue = false;
        
        try {
			isTrue = AdminDBUtil.insertdoctor(firstName, lastName,specialization, phone, email,
					description, userName, password,dob,gender,address,avalability);
		} catch (InvalidInputException | DatabaseException | TypeMismatchException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        
        if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("adminsuccess.jsp");
			dis.forward(request,response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("adminunsuccess.jsp");
			dis2.forward(request,response);
		}
	}

}