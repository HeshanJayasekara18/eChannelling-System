<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Your Appointment Details</title>
    <link href="css/delete.css" rel="stylesheet">
    <script type="text/javascript">
        function confirmDelete() {
            return confirm("Are you sure you want to delete this Appointment record?");
        }
    </script>
</head>
<body>

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

<h1>Payment Details Delete Confirmation</h1>
<div class="container">
    <div class="right-half">
        <form action="DeleteServlet" method="post" onsubmit="return confirmDelete();">
            <table>
                <tr>
                    <td><label for="id">ID</label></td>
                    <td><input type="text" id="id" name="id" required value="<%= id %>" readonly /></td>
                </tr>
                <tr>
                    <td>Patient Name:</td>
                    <td><input type="text" name="patientName" pattern="[A-Za-z\s]+" title="Only letters and spaces are allowed." required value="<%= patientName %>" readonly /></td>
                </tr>
                <tr>
                    <td>Patient Age:</td>
                    <td><input type="text" name="patientAge" pattern="\\d+" title="Only numbers are allowed." required value="<%= patientAge %>" readonly /></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><input type="text" name="gender" required value="<%= gender %>" readonly /></td>
                </tr>
                <tr>
                    <td>Contact Number:</td>
                    <td><input type="text" name="contactNumber" required value="<%= contactNumber %>" readonly /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="email" name="email" required value="<%= email %>" readonly /></td>
                </tr>
                <tr>
                    <td>Doctor Name:</td>
                    <td><input type="text" name="doctorName" required value="<%= doctorName %>" readonly /></td>
                </tr>
                <tr>
                    <td>Specialization:</td>
                    <td><input type="text" name="specialization" required value="<%= specialization %>" readonly /></td>
                </tr>
                <tr>
                    <td>Appointment Date:</td>
                    <td><input type="text" name="appointmentDate" required value="<%= appointmentDate %>" readonly /></td>
                </tr>
                <tr>
                    <td>Reason for Visit:</td>
                    <td><input type="text" name="reasonForVisit" required value="<%= reasonForVisit %>" readonly /></td>
                </tr>
                <tr>
                    <td colspan="2">
                       <div class="btncls">
      <button type="submit">Delete</button>
    </div>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

</body>
</html>
