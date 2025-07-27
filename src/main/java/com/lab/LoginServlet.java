package com.lab;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String doctor_email = request.getParameter("doctor_email");
    String password = request.getParameter("password");
    
    try {
    List<Report> repDetails = ReportDBUtil.validate(doctor_email, password);
    request.setAttribute("repDetails", repDetails);
    }catch(Exception e) {
       e.printStackTrace();
    }
    RequestDispatcher de= (RequestDispatcher) request.getRequestDispatcher("reportDisplay.jsp");
      de.forward(request, response);
  }

}