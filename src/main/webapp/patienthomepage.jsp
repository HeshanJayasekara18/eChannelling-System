<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E Care.Com</title>
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
                <li><a href="patientloginpage.jsp">Login/Sign up</a></li>
            </ul>
        </nav>

        <!-- Centered Content -->
        <div class="content">
            <a href="#" class="logoclick">
            <h2> E Care</h2></a>
            <a href="Insert.jsp" class="explore-btn">Make An Appointment</a>
            <p class="intro">
                Finding the right healthcare has never been easier. At E Care, we believe in providing you 
                with a hassle-free experience
                 to connect with the best medical professionals. Whether it is a routine check-up or 
                 a specialist consultation, we are here to make your
                  healthcare journey smooth, 
                reliable, and efficient. Your well-being is our priority, and we're here to support you every step of the way.</p>
        </div>
    </section>

    <!-- Add your JS here if needed -->
    <script src="js/patienthomepage.js"></script>
</body>
</html>
