package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DoctorDetailsServlet")
public class DoctorDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	String avalability = request.getParameter("avalability");
        

        try {
            
        	List<Doctor> docDetails = AdminDBUtil.getDoctorDtails(avalability);

            
            if (docDetails != null && !docDetails.isEmpty()) {
                // Login successful, set doctor details in the request and forward to homepage
            	request.setAttribute("doctorDetails", docDetails);

                RequestDispatcher dis = request.getRequestDispatcher("doctoraccountmanage.jsp");
     
                dis.forward(request, response);
            } else {
                
                response.sendRedirect("adminunsuccess.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            
            response.sendRedirect("adminunsuccess.jsp");
        }
    }
}
