<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Online Job portal website">
    <meta name="language" content="EN">
    <meta name="Author" content="Jayani Thashmila">
    <title>Login</title>
    <link rel="icon" type="image/x-icon" href="../IMG/img4.ico">
    <link rel="stylesheet" href="css/login.css">
    <script>
        function validateLogin() {
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;

            // Email validation regex
            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (email === "" || password === "") {
                alert("Please fill all fields.");
                return false;
            }

            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            return true;
        }
    </script>
</head>

<body>
    <main>
        <div class="box">
            <div class="inside-box">
                <div class="form-w">
                    <form action="reportlogin" method="POST" autocomplete="off" onsubmit="return validateLogin()">
                        <div class="Logo">
                            <img src="image/img5.png" alt="logo" class="logo">
                        </div>
                        <div class="heading">
                            <h2>LOG IN</h2>
                        </div>
                        <div class="real-form">
                            <div class="input-w">
                                <input id="email" name="email" type="email" class="input-field" autocomplete="off" placeholder="Email" required />
                            </div>
                            <div class="input-w">
                                <input id="password" name="password" type="password" class="input-field" autocomplete="off" placeholder="Password" required />
                            </div>
                            
                            <input type="submit" name="site_login" value="Login" class="login-b" />
                            
                            <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
                            <% if (errorMessage != null) { %>
                                <p style="color:red;"><%= errorMessage %></p>
                            <% } %>
                        </div>
                    </form>
                    
                    <p class="text">
                        Don't have an account?
                        <a href="registration.jsp">
                            <button class="signupbtn" id="signUP">Sign up here</button>
                        </a>
                    </p>
                </div>
                <div class="carousel">
                    <div class="image">
                        <img src="image/img1.jpg" alt="carousel image" />
                        <img src="image/img3.jpg" alt="carousel image" />
                        <img src="image/img4.jpg" alt="carousel image" />
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>

</html>
