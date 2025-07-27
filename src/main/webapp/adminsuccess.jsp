<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <script type="text/javascript">
        // Show an alert and return to the previous page after "OK" is clicked
        window.onload = function() {
            alert("Operation Successful!"); // Show the success alert
            window.history.back(); // Go back to the previous page
        }
    </script>
</head>
<body>
    <h1>Success</h1>
</body>
</html>
