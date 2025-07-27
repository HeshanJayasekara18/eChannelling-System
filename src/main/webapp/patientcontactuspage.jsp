<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pritam.Com | Contact Us</title> 
    <link rel="stylesheet" href="css/patientcontactuspage.css">
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
    </section>

    <!-- Contact Us Content -->
    <div class="contact-us-container">
        <h2>Contact Us</h2>
        <form action="submitContact.jsp" method="post">
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" required placeholder="Enter your name">

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required placeholder="Enter your email">

            <label for="message">Message</label>
            <textarea id="message" name="message" required placeholder="Your message here..."></textarea>

            <button type="submit" class="submit-btn">Submit</button>
        </form>
    </div>

    <script src="js/patienthomepage.js"></script>
</body>
</html>
