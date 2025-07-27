<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pritam.Com | Feedback</title> 
    <link rel="stylesheet" href="css/patientfeedbackpage.css">
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

    <!-- Feedback Form Section -->
    <div class="feedback-form-container">
        <h2>We Value Your Feedback</h2>
        <form action="submitFeedback.jsp" method="post">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="fullName" placeholder="Enter your name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="rating">How would you rate your experience?</label>
                <select id="rating" name="rating" required>
                    <option value="" disabled selected>Select rating</option>
                    <option value="excellent">Excellent</option>
                    <option value="good">Good</option>
                    <option value="average">Average</option>
                    <option value="poor">Poor</option>
                </select>
            </div>
            <div class="form-group">
                <label for="comments">Additional Comments</label>
                <textarea id="comments" name="comments" placeholder="Share your experience with us" required></textarea>
            </div>
            <button type="submit" class="btn-submit">Submit Feedback</button>
        </form>
    </div>

    <script src="js/patienthomepage.js"></script>
</body>
</html>
