package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteAdminServlet")
public class DeleteAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id=request.getParameter("id");
		boolean isTrue = false;
		
		try {
			isTrue = AdminDBUtil.deleteadmin(id);
		} catch (InvalidInputException | DatabaseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("admininsert.jsp");
			dispatcher.forward(request, response);
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
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminaccount.jsp");
			dispatcher.forward(request, response);
			
		}
		
	}

}