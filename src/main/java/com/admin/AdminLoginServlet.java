package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String username = request.getParameter("uid");
        String password = request.getParameter("pass");

        try {
            
            List<Admin> adminDetails = AdminDBUtil.validate(username, password);
            
            if (adminDetails != null && !adminDetails.isEmpty()) {
               
                request.setAttribute("adminDetails", adminDetails);
                RequestDispatcher dis = request.getRequestDispatcher("adminhomepage.jsp");
     
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