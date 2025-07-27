package com.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String FullName = request.getParameter("FullName");
		String Email = request.getParameter("Email");
		String Password = request.getParameter("Password");
		String Address = request.getParameter("Address");
		String City = request.getParameter("City");
		String Province = request.getParameter("Province");
		String ZipCode = request.getParameter("ZipCode");
		String NameOnCard = request.getParameter("NameOnCard");
		String CardNumber = request.getParameter("CardNumber");
		String ExpMonth = request.getParameter("ExpMonth");
		String ExpYear = request.getParameter("ExpYear");
		String CVN = request.getParameter("CVN");
		
        boolean isTrue;
		
		isTrue = PaymentDBUtil.createpayment(FullName, Email, Password, Address, City, Province, ZipCode, NameOnCard, CardNumber, ExpMonth, ExpYear, CVN);
		
		if (isTrue==true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("Validate.jsp");
			dis.forward(request, response);	
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);	
		}
	}

}

