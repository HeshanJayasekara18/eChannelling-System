<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/signuppage.css" />

    <script>
    function validateForm() {
        // Get form values
        const username = document.getElementById("username").value;
        const password = document.getElementById("password").value;
        const confirmPassword = document.getElementById("confirmPassword").value;
        const phone = document.getElementById("phone").value;

        
        if (!username.startsWith('AD')) {
            alert("Username must start with 'AD'.");
            return false; 
        }

       
        if (password.length < 8) {
            alert("Password must be at least 8 characters long.");
            return false; 
        }

        
        if (password !== confirmPassword) {
            alert("Passwords do not match! Please try again.");
            return false; 
        }

        
        const phoneRegex = /^\d{10}$/;
        if (!phoneRegex.test(phone)) {
            alert("Phone number must be exactly 10 digits.");
            return false; 
        }

        
        alert("New ADMIN Details Added Successfully! \n Please Re-Login");
        return true;
    }


    window.onload = function() {
        document.getElementById('signinForm').addEventListener('submit', function(event) {
            if (!validateForm()) {
                event.preventDefault(); 
            }
        });
    }
    </script>
</head>




<body>
    <form class="frame" action="admininsert" method="post" id="signinForm">

        <div class="login">Admin Sign Up</div>
        
        <!-- First Name Field -->
        <div class="email">
            <input type="text" placeholder="First Name" name="firstName" required/>
            <img src="images/user.png" width="23px" />
        </div>

        <!-- Last Name Field -->
        <div class="email">
            <input type="text" placeholder="Last Name" name="lastName" required/>
            <img src="images/user.png" width="23px" />
        </div>

        <!-- Phone Number Field -->
        <div class="email">
            <input type="text" placeholder="Phone" id="phone" name="phone" required/>
            <img src="images/user.png" width="23px" />
        </div>

        <!-- Email Field -->
        <div class="email">
            <input type="email" placeholder="Email" name="email" required/>
            <img src="images/email.png" width="23px" />
        </div>
        
        <!-- Username Field -->
        <div class="email">
            <input type="text" placeholder="Username" id="username" name="userName" required/>
            <img src="images/user.png" width="23px" />
        </div>

        <!-- Password Field -->
        <div class="password">
            <input type="password" placeholder="Password" id="password" name="password" required/>
            <img src="images/padlock.png" width="23px" />
        </div>
        
        <!-- Confirm Password Field -->
        <div class="password">
            <input type="password" placeholder="Confirm Password" id="confirmPassword" name="confirmPassword" required/>
            <img src="images/padlock.png" width="23px" />
        </div>
        
        <!-- Sign Up Button -->
        <a href="adminlogin.jsp">
        <button type="submit" class="log">
       Sign Up
        </button>
		</a>
		
        <div class="reg"></div>
        Already have an account? <a href="adminlogin.jsp">Login</a>

        <!-- Return Home Button -->
        <a href="patienthomepage.jsp">
            <button type="button" class="home">Return Home</button>
        </a>
    </form>
</body>
</html>
