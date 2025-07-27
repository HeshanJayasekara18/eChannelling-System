package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ValidateServlet")
public class ValidateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");

        try {
            List<Payment> PaymentDetails = PaymentDBUtil.validate(Email, Password);

            if (PaymentDetails.isEmpty()) {
                // Set error message if the credentials are incorrect
                request.setAttribute("errorMessage", "Invalid email or password. Please try again.");
                RequestDispatcher dis = request.getRequestDispatcher("Validate.jsp");
                dis.forward(request, response);
                
            } else {
                // If valid, forward to PaymentRead.jsp with payment details
                request.setAttribute("PaymentDetails", PaymentDetails);
                RequestDispatcher dis = request.getRequestDispatcher("PaymentRead.jsp");
                dis.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
