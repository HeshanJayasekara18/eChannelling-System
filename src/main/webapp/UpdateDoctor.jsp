<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
    
    <style>
    
        /* Basic reset for margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Setting the background image and applying a blue theme */
        body {
            font-family: Arial, sans-serif;
            background: url('images/bgimage.png') no-repeat center center fixed;
            background-size: cover;
            color: #ffff;
        }

        form {
            background-color: rgba(0, 0, 255, 0.6); /* Semi-transparent blue */
            padding: 50px;
            border-radius: 10px;
            width: 600px;
            margin: 50px auto;
            box-shadow: 10px 14px 10px rgba(0, 0, 0, 0.2);
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"],
        input[type="date"] {
            width: 100%;
            padding: 20px 20px 20px 50px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            font-size: 20px;
           font-family: sans-serif;
           
        }

        input[type="submit"] {
        	font-size: 20px;
            width: 100%;
            padding: 10px;
            background-color: #b7a09b;
            color: #000000;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-weight: bold;
        }

        input[type="submit"]:hover {
            background-color: #3db01c;
        }

        .error {
            color: #b7a09b;
            font-size: 12px;
        }
        
        #return{
       		padding: 20px 20px 20px 20px;
       		 background-color: #b7a09b;
       		 border-radius: 5px;
       		 font-size: 15px;
       		 margin-top: 20px;
       		 align-items: center;
       		 font-weight: bold;
        }
    </style>
    
    
   <!-- ---javaScript---------------------------------------------------------------------------------- --> 
    <script>
    function validateForm() {
        let valid = true;

        // Phone number validation (10 digits)
        const phone = document.forms["updateForm"]["phone"].value;
        const phoneError = document.getElementById('phoneError');
        phoneError.innerHTML = '';
        if (!/^\d{10}$/.test(phone)) {
            phoneError.innerHTML = 'Phone number must be 10 digits';
            valid = false;
        }

        // Username validation (starts with DOC)
        const username = document.forms["updateForm"]["uname"].value;
        const usernameError = document.getElementById('usernameError');
        usernameError.innerHTML = '';
        if (!/^DOC/.test(username)) {
            usernameError.innerHTML = 'Username must start with "DOC"';
            valid = false;
        }

        // Password validation (minimum 8 characters)
        const password = document.forms["updateForm"]["pass"].value;
        const passwordError = document.getElementById('passwordError');
        passwordError.innerHTML = '';
        if (password.length < 8) {
            passwordError.innerHTML = 'Password must be at least 8 characters long';
            valid = false;
        }

        return valid;
    }
</script>
</head>
<body>

<%
    String id = request.getParameter("id");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String specialization = request.getParameter("specialization");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String decription = request.getParameter("description");
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    String dob = request.getParameter("DOB");
    String gender = request.getParameter("gender");
    String address = request.getParameter("address");
%>

<form id="updateForm" action="doctorupdate" method="post" onsubmit="return validateForm()">
    Customer ID <input type="text" name="id" value="<%=id%>" readonly><br>
    First Name <input type="text" name="fname" value="<%=fname%>"><br>
    Last Name <input type="text" name="lname" value="<%=lname%>"><br>
    Specialization <input type="text" name="specialization" value="<%=specialization%>"><br>
    Phone Number <input type="text" name="phone" value="<%=phone%>"><br>
    <span id="phoneError" class="error"></span><br>
    Email <input type="text" name="email" value="<%=email%>"><br>
    Description <input type="text" name="decription" value="<%=decription%>"><br>
    User Name <input type="text" name="uname" value="<%=userName%>"><br>
    <span id="usernameError" class="error"></span><br>
    Password <input type="password" name="pass" value="<%=password%>"><br>
    <span id="passwordError" class="error"></span><br>
    Date Of Birth <input type="date" name="dob" value="<%=dob%>"><br>
    
    Gender <br>
    
    <input type="radio" id="male" name="gender" value="<%=gender%>" checked>
                    <label for="male">Male</label>
                    <input type="radio" id="female" name="gender" value="female">
                    <label for="female">Female</label>
                    <input type="radio" id="other" name="gender" value="other">
                    <label for="other">Other</label><br><br>
    
    Address <input type="text" name="address" value="<%=address%>"><br>
	
    <input type="submit" name="submit" value="Update Doctor Data"><br>
    <a href="doctorvaliditycheck.jsp" >
    <button id="return"> return home </button>
    </a>
</form>






</body>
</html>
