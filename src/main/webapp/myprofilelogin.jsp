<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="css/myprofilelogin.css">
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="profilelog" method="post">
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="adminusername" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="adminpass" required>
            </div>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
