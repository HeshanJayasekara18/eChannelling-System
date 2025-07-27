package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminInsertServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        boolean isTrue = false;
        
        try {
			isTrue = AdminDBUtil.insertadmin(firstName, lastName, phone, email, userName, password);
		} catch (InvalidInputException | DatabaseException | TypeMismatchException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        
        if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("adminlogin.jsp");
			dis.forward(request,response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("adminunsuccess.jsp");
			dis2.forward(request,response);
		}
    }
}
