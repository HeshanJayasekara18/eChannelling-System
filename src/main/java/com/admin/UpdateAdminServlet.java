package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateAdminServlet")
public class UpdateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue = false;
		
		try {
			isTrue = AdminDBUtil.updateAdmin(id,fname,lname,phone,email,username,password);
		} catch (InvalidInputException | DatabaseException | TypeMismatchException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(isTrue == true) {
			
			List<Admin> adminDetails = null;
			try {
				adminDetails = AdminDBUtil.getAdminDtails(id);
			} catch (InvalidInputException | DatabaseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("adminaccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Admin> adminDetails = null;
			try {
				adminDetails = AdminDBUtil.getAdminDtails(id);
			} catch (InvalidInputException | DatabaseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("adminaccount.jsp");
			dis.forward(request, response);
		}
		
	}

}