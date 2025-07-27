package com.lab;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FirstloginServlet")
public class FirstloginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            List<Registration> logDetails = ReportDBUtil.validate1(email, password);

            if (!logDetails.isEmpty()) {
                // If login is successful, forward to the report page
                request.setAttribute("logDetails", logDetails);
                RequestDispatcher de = request.getRequestDispatcher("reportnew.jsp");
                de.forward(request, response);
            } else {
                // If login fails, redirect back to the login page with an error message
                request.setAttribute("errorMessage", "Invalid email or password. Please try again.");
                RequestDispatcher rd = request.getRequestDispatcher("medicallogin.jsp");
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}