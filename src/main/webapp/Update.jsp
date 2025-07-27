<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Setting character encoding and title for the page -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Update Your Appointment Details</title>
    
    <!-- Linking external CSS file for styling -->
    <link rel="stylesheet" href="css/insert.css" />
  </head>
  <body>
  
  <%-- Retrieving parameters from the request --%>
  <%
    String id = request.getParameter("id");
    String patientName = request.getParameter("patientName");
    String patientAge = request.getParameter("patientAge");
    String gender = request.getParameter("gender");
    String contactNumber = request.getParameter("contactNumber");
    String email = request.getParameter("email");
    String doctorName = request.getParameter("doctorName");
    String specialization = request.getParameter("specialization");
    String appointmentDate = request.getParameter("appointmentDate");
    String reasonForVisit = request.getParameter("reasonForVisit");
  %>

    <h1>Update Your Appointment Details</h1>
    <div class="container">
      <div class="right-half">
        <form action="update" method="post">
          <table>
            <tr>
              <td>ID</td>
              <td><input type="text" id="id" name="id" required value="<%= id %>" readonly /></td>
            </tr>

            <!-- Patient Details -->
            <tr>
              <td>Patient Name:</td>
              <td><input type="text" name="patientName" pattern="[A-Za-z\s]+" title="Only letters and spaces are allowed." required value="<%= patientName %>" /></td>
            </tr>
            <tr>
              <td>Patient Age:</td>
              <td><input type="number" name="patientAge" min="0" max="120" title="Age should be between 0 and 120." required value="<%= patientAge %>" /></td>
            </tr>
            <tr>
              <td>Gender:</td>
              <td>
                <select name="gender" required>
                  <option value="">Select Gender</option>
                  <option value="Male" <%= "Male".equals(gender) ? "selected" : "" %>>Male</option>
                  <option value="Female" <%= "Female".equals(gender) ? "selected" : "" %>>Female</option>
                  <option value="Other" <%= "Other".equals(gender) ? "selected" : "" %>>Other</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>Contact Number:</td>
              <td><input type="tel" name="contactNumber" pattern="\d{10}" title="Please enter a 10-digit phone number." required value="<%= contactNumber %>" /></td>
            </tr>
            <tr>
              <td>Email:</td>
              <td><input type="email" name="email" title="Please enter a valid email address." required value="<%= email %>" /></td>
            </tr>

            <!-- Appointment Details -->
            <tr>
              <td>Doctor Name:</td>
              <td><input type="text" name="doctorName" pattern="[A-Za-z\s]+" title="Only letters and spaces are allowed." required value="<%= doctorName %>" /></td>
            </tr>
            <tr>
              <td>Specialization:</td>
              <td>
                <select name="specialization" required>
                  <option value="">Select Specialization</option>
                  <option value="General Medicine" <%= "General Medicine".equals(specialization) ? "selected" : "" %>>General Medicine</option>
                  <option value="Cardiology" <%= "Cardiology".equals(specialization) ? "selected" : "" %>>Cardiology</option>
                  <option value="Dermatology" <%= "Dermatology".equals(specialization) ? "selected" : "" %>>Dermatology</option>
                  <option value="Pediatrics" <%= "Pediatrics".equals(specialization) ? "selected" : "" %>>Pediatrics</option>
                  <option value="Orthopedics" <%= "Orthopedics".equals(specialization) ? "selected" : "" %>>Orthopedics</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>Appointment Date:</td>
              <td><input type="date" name="appointmentDate" min="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" title="Please choose a future date." required value="<%= appointmentDate %>" /></td>
            </tr>
           
            <tr>
              <td>Reason for Visit:</td>
              <td><textarea name="reasonForVisit" rows="4" cols="50" minlength="10" maxlength="500" title="Reason should be between 10 and 500 characters." required><%= reasonForVisit %></textarea></td>
            </tr>
          </table>
          
          <div class="btncls">
            <button type="submit">Submit</button>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
