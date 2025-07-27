package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DoctorLogServlet")
public class DoctorLogServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get 'option' parameter from the request
        String avalability = request.getParameter("option");

        // Validate the input parameter
        if (avalability == null || avalability.trim().isEmpty()) {
            // Log for debugging
            System.out.println("Invalid availability parameter.");
            response.sendRedirect("adminunsuccess.jsp");
            return;
        }

        try {
            // Validate doctor availability
            List<Doctor> docDetails = AdminDBUtil.validateDoc(avalability);

            // If doctor details are found, forward to the JSP page
            if (docDetails != null && !docDetails.isEmpty()) {
                request.setAttribute("doctorDetails", docDetails);
                RequestDispatcher dis = request.getRequestDispatcher("doctoraccountmanage.jsp");
                dis.forward(request, response);
            } else {
                // If no details are found, redirect to unsuccessful page
                response.sendRedirect("adminunsuccess.jsp");
            }
        } catch (Exception e) {
            // Print the error stack trace for debugging
            e.printStackTrace();
            response.sendRedirect("adminunsuccess.jsp");
        }
    }
}

