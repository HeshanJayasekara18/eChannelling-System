<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auto Alert on Page Load</title>
    <script>
        window.onload = function() {
            alert("You Entered Credentials Are Invaild , Try Again");
            window.history.back(); // Navigate back to the previous page
        };
    </script>
</head>
<body>
    
    <h1>Error</h1>
</body>
</html>

