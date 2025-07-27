package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve parameters
        String PayID = request.getParameter("PayID");
        String FullName = request.getParameter("FullName");
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");
        String Address = request.getParameter("Address");
        String City = request.getParameter("City");
        String Province = request.getParameter("Province");
        String ZipCode = request.getParameter("ZipCode");
        String NameOnCard = request.getParameter("NameOnCard");
        String CardNumber = request.getParameter("CardNumber");
        String ExpYear = request.getParameter("ExpYear");
        String ExpMonth = request.getParameter("ExpMonth");
        String CVN = request.getParameter("CVN");

        // Validate inputs here if necessary

        boolean isTrue = PaymentDBUtil.updatepayment(PayID, FullName, Email, Password, Address, City, Province, ZipCode, NameOnCard, CardNumber, ExpMonth, ExpYear, CVN);
        
        RequestDispatcher dis;
        
        if (isTrue) {
        	
        	List <Payment> PaymentDetails = PaymentDBUtil.getPaymentDetails(PayID);
        	request.setAttribute("PaymentDetails", PaymentDetails);
        	
            dis = request.getRequestDispatcher("PaymentRead.jsp");
        } else {
            request.setAttribute("errorMessage", "Payment update failed. Please try again.");
            dis = request.getRequestDispatcher("Unsuccess.jsp");
        }
        dis.forward(request, response);
    }
}

