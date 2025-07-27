<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Account Delete</title>
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

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f1f1f1;
        }

        .buttons {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        /* Submit button (delete) styling */
        .btn-delete {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            width: 45%;
        }

        /* Cancel button */
        .btn-cancel {
            background-color: #6c757d;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            width: 45%;
        }

        .btn-delete:hover, .btn-cancel:hover {
            opacity: 0.9;
        }

    </style>
</head>
<body>

<%
    String id = request.getParameter("id");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String userName = request.getParameter("uname");
%>

<div class="container">
    <div class="header">
        Delete Admin Account Details
    </div>
    <div class="form-content">
        <form action="admindelete" method="post">
            <label>Admin ID</label>
            <input type="text" name="id" value="<%= id %>" readonly>

            <label>First Name</label>
            <input type="text" name="fname" value="<%= fname %>" readonly>

            <label>Last Name</label>
            <input type="text" name="lname" value="<%= lname %>" readonly>

            <label>Phone Number</label>
            <input type="text" name="phone" value="<%= phone %>" readonly>

            <label>Email</label>
            <input type="text" name="email" value="<%= email %>" readonly>

            <label>User Name</label>
            <input type="text" name="uname" value="<%= userName %>" readonly>

            <div class="buttons">
                <button type="submit" class="btn-delete">Delete My Data</button>
                <button type="button" class="btn-cancel" onclick="window.location.href='adminhomepage.jsp';">Cancel</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
