<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="echannelling web site">
    <meta name="language" content="EN">
    <meta name="Author" content="Jayani Thashmila">
    <title>Sign up </title>
    <link rel="stylesheet" href="css/reg.css">
    <script>
        function validateSignup() {
            var firstname = document.getElementById('firstname').value;
            var lastname = document.getElementById('lastname').value;
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;
            var repassword = document.getElementById('repassword').value;

            // Email validation regex
            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (firstname === "" || lastname === "" || email === "" || password === "" || repassword === "") {
                alert("Please fill all fields.");
                return false;
            }

            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            if (password.length < 6) {
                alert("Password must be at least 6 characters long.");
                return false;
            }

            if (password !== repassword) {
                alert("Passwords do not match.");
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
                    <form action="regFrom" method="POST" autocomplete="off" onsubmit="return validateSignup()">
                        <div class="Logo">
                            <img src="image/img5.png" alt="logo" class="logo">
                        </div>
                        <div class="heading">
                            <h2>Sign up</h2>
                        </div>
                        <div class="real-form">
                            <div class="input-w">
                                <input id="firstname" type="text" class="input-field" autocomplete="off" placeholder="First name" name="firstname" required />
                            </div>
                            <div class="input-w">
                                <input id="lastname" type="text" class="input-field" autocomplete="off" placeholder="Last name" name="lastname" required />
                            </div>
                            <div class="input-w">
                                <input id="email" type="email" class="input-field" autocomplete="off" placeholder="Email address" name="email" required />
                            </div>
                            <div class="input-w">
                                <input id="password" type="password" class="input-field" autocomplete="off" placeholder="Password" name="password" required />
                            </div>
                            <div class="input-w">
                                <input id="repassword" type="password" class="input-field" autocomplete="off" placeholder="Re-type password" name="repassword" required />
                            </div>
                            <button class="register" type="submit" id="register" name="register">Register</button>
                        </div>
                    </form>
                </div>
                <div class="carousel">
                    <div class="image">
                        <img src="image/img2.jpg" alt="carousel image" />
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>

</html>
