package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeletePaymentServlet")
public class DeletePaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String PayID = request.getParameter("PayID");
        
        boolean isTrue = PaymentDBUtil.deletePayment(PayID);
        
        if (isTrue) {
        	
            RequestDispatcher dispatcher = request.getRequestDispatcher("Payment.jsp");
            dispatcher.forward(request, response);
            
        } else {
        	
            List<Payment> PaymentDetails = PaymentDBUtil.getPaymentDetails(PayID);
            request.setAttribute("PaymentDetails", PaymentDetails);
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("PaymentRead.jsp");
            dispatcher.forward(request, response);
        }
    }
}
