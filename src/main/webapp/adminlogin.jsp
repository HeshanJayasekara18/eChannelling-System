<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Login</title>
    <link rel="stylesheet" href="css/newlogin.css" />

   
</head>

<body>
    
    <form action="adminlog" method="post" class="frame" onsubmit="return validateLoginForm();">
        <div class="login">Admin Login</div>
        <div class="email">
            <input type="text" placeholder="Username" name="uid" required>
            <img src="images/user.png" width="23px" />
        </div>
        <div class="password">
            <input type="password" placeholder="Password" name="pass" required>
            <img src="images/padlock.png" width="23px" />
        </div>
        <div class="remember_forgot">
            <div class="remember">
                <input type="checkbox" id="check" />
                <label for="charset">Remember Me</label>
            </div>
            <div class="forgot"><a href="#">Forgot password?</a></div>
        </div>
        <input type="submit" class="log" value="Login">
        <div class="reg"></div>
        Don't have an account?<a href="admininsert.jsp">Register</a>

        <a href="patienthomepage.jsp">
            <button type="button" class="home">Return Home</button>
        </a>
    </form>

</body>

</html>
