<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Apply the background image with a blue overlay */
        body {
            font-family: Arial, sans-serif;
            background: url('images/bgimage.png') no-repeat center center fixed;
            background-size: cover;
        }

        /* Centering the form container */
        .container {
            width: 400px;
            margin: 100px auto;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        /* Header styling */
        .header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 24px;
        }

        /* Form fields styling */
        .form-content {
            padding: 20px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f1f1f1;
        }

        input[readonly] {
            background-color: #e9ecef;
        }

        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        /* Submit button styling */
        .btn-update {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        .btn-update:hover {
            opacity: 0.9;
        }

        /* Optional: A back button if needed */
        .btn-back {
            background-color: #6c757d;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            text-align: center;
            display: block;
            margin-top: 10px;
            text-decoration: none;
        }

        .btn-back:hover {
            opacity: 0.9;
        }

    </style>

    <!-- Adding JavaScript for Validation -->
    <script>
        function validateForm() {
            // Validate phone number (should be exactly 10 digits)
            var phone = document.forms["updateForm"]["phone"].value;
            if (phone.length != 10 || isNaN(phone)) {
                alert("Phone number must be exactly 10 digits.");
                return false;
            }

            // Validate email (should contain @)
            var email = document.forms["updateForm"]["email"].value;
            if (email.indexOf("@") == -1) {
                alert("Email must contain @.");
                return false;
            }

            // Validate password (minimum 8 characters)
            var password = document.forms["updateForm"]["pass"].value;
            if (password.length < 8) {
                alert("Password must be at least 8 characters long.");
                return false;
            }

            // If everything is valid, allow the form to be submitted
            return true;
        }
    </script>

</head>
<body>

<%
    String id = request.getParameter("id");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String userName = request.getParameter("uname");
    String password = request.getParameter("pass");
%>

<div class="container">
    <div class="header">
        Update Admin Profile
    </div>
    <div class="form-content">
        <!-- Form with onsubmit event calling the validation function -->
        <form name="updateForm" action="adminupdate" method="post" onsubmit="return validateForm();">
            <input type="hidden" name="id" value="<%= id %>" readonly>

            <label>First Name</label>
            <input type="text" name="fname" value="<%= fname %>">

            <label>Last Name</label>
            <input type="text" name="lname" value="<%= lname %>">

            <label>Phone Number</label>
            <input type="text" name="phone" value="<%= phone %>">

            <label>Email</label>
            <input type="text" name="email" value="<%= email %>">

            <label>User Name</label>
            <input type="text" name="uname" value="<%= userName %>" readonly>

            <label>Password</label>
            <input type="password" name="pass" value="<%= password %>">

            <button type="submit" class="btn-update">Update My Data</button>
        </form>

        <!-- Optional Back Button -->
        <a href="adminhomepage.jsp" class="btn-back">Back to Home</a>
    </div>
</div>

</body>
</html>