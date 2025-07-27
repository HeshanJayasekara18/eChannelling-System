<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en"> 
<head> 
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Payment Form</title> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/Payment.css"> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/Payment.js"></script>
</head> 
<body>  
<div class="container"> 
    <form method="post" class="needs-validation" action="ValidateServlet" novalidate> 
        <div class="row"> 
            <div class="col">
                <div class="inputBox"> 
                    <label for="email">Email:</label> 
                    <input type="email" id="Email" name="Email" required placeholder="example@gmail.com"> 
                    <div class="invalid-feedback">
                        Please provide a valid email address.
                    </div>
                </div> 
                <div class="inputBox"> 
                    <label for="password">Password:</label> 
                    <input type="password" id="Password" name="Password" required> 
                    <div class="invalid-feedback">
                        Please provide your password.
                    </div>
                </div> 
                <input type="submit" value="Submit" class="submit-btn">
            </div>
        </div>
    </form>

    <%
        // Check if there is an error message set by the servlet
        String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null) {
    %>
    <script>
        // Display an alert if email/password doesn't match
        alert("<%= errorMessage %>");
    </script>
    <%
        }
    %>

</div>
</body>
</html>
