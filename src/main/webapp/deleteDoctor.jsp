<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>
	
	
	<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
		
	%>
	
	<h1>Doctor Account Delete</h1>
	
	<form action="delete" method="post">
		Doctor ID<input type="text" name="id" value="<%= id %>" readonly><br>
		First Name<input type="text" name="fname" value="<%= fname %>" readonly><br>
		Last Name<input type="text" name="lname" value="<%= lname %>" readonly><br>
		Phone Number<input type="text" name="phone" value="<%= phone %>" readonly><br>
		Email<input type="text" name="email" value="<%= email %>" readonly><br>
		User Name <input type="text" name="uname" value="<%= userName %>" readonly><br>
		
		
		<input type="submit" name="submit" value="Delete My Data"><br>
		
	</form>
	
	
</body>
</html>