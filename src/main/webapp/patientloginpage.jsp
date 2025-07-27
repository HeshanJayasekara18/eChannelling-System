<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pritam.Com | Login</title> 
    <link rel="stylesheet" href="css/patientloginpage.css">
    <link rel="stylesheet" href="css/patienthomepage.css">
</head>
<body>
    
    <section class="Navbar-Menu" id="Navbar-Menu-Id">
        <!-- Video Background -->
        <video autoplay muted loop id="background-video">
            <source src="video/homevideo.mp4" type="video/mp4">
        </video>

        <!-- Navigation Bar -->
        <nav class="nav-menu">
            <h1 class="logo">E Care.Com</h1>
            <ul>
                <li><a href="patienthomepage.jsp">Home</a></li>
                <li><a href="patientaboutuspage.jsp">About Us</a></li>
                <li><a href="patientfeedbackpage.jsp">Feedback</a></li>
                <li><a href="patientcontactuspage.jsp">Contact Us</a></li>
                <li><a href="patientloginpage.jsp">Login/Sign Up</a></li>
            </ul>
        </nav>
    </section>

    <!-- Login Form Section -->
    <div class="login-container">
        <div class="login-form">
            <h2>Login</h2>
            <form action="login.jsp" method="post">
                <div class="input-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" required placeholder="Enter your username">
                </div>
                <div class="input-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required placeholder="Enter your password">
                </div>
                <div class="remember-me">
                    <input type="checkbox" id="remember" name="remember">
                    <label for="remember">Remember me</label>
                    <a href="#" class="forgot-password">Forgot password?</a>
                </div>
                <button type="submit" class="submit-btn">Login</button>
                <p class="register-prompt">Don't have an account? <a href="patientsigninpage.jsp">Register</a><br>
                <a href="adminlogin.jsp">login as a Admin</a><br>
                <a href="medicallogin.jsp">login as a Lab Staff Member</a></p>
            </form>
        </div>
    </div>

    <script src="js/patienthomepage.js"></script>
</body>
</html>
