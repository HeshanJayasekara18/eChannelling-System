<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Account</title>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f7;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 700px;
            animation: fadeIn 0.8s ease;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            font-size: 24px;
            font-weight: 500;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: white;
            font-weight: 500;
        }
        td {
            background-color: #ecf0f1;
            border-bottom: 1px solid #bdc3c7;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            
            background-color: #3498db;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #2980b9;
        }
        .btn-danger {
            background-color: #e74c3c;
        }
        .btn-danger:hover {
            background-color: #c0392b;
        }
        .actions {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Admin Account Details</h1>
    <c:forEach var="admin" items="${sessionScope.adminDetails}">
        <table>
            <tr>
                <th>Admin ID</th>
                <td>${admin.id}</td>
            </tr>
            <tr>
                <th>First Name</th>
                <td>${admin.firstName}</td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td>${admin.lastName}</td>
            </tr>
            <tr>
                <th>Phone</th>
                <td>${admin.phone}</td>
            </tr>
            <tr>
                <th>Email</th>
                <td>${admin.email}</td>
            </tr>
            <tr>
                <th>Username</th>
                <td>${admin.userName}</td>
            </tr>
        </table>
    </c:forEach>

    <!-- Update and Delete buttons -->
    <div class="actions">
        <!-- Update Button -->
        <c:url value="updateadmin.jsp" var="adminupdate">
            <c:param name="id" value="${admin.id}"/>
            <c:param name="fname" value="${admin.firstName}"/>
            <c:param name="lname" value="${admin.lastName}"/>
            <c:param name="phone" value="${admin.phone}"/>
            <c:param name="email" value="${admin.email}"/>
            <c:param name="uname" value="${admin.userName}"/>
            <c:param name="pass" value="${admin.password}"/>
        </c:url>
        <a href="${adminupdate}" class="btn"><button>Update My Data</button></a>

        <!-- Delete Button -->
        <c:url value="deleteadmin.jsp" var="admindelete">
            <c:param name="id" value="${admin.id}"/>
            <c:param name="fname" value="${admin.firstName}"/>
            <c:param name="lname" value="${admin.lastName}"/>
            <c:param name="phone" value="${admin.phone}"/>
            <c:param name="email" value="${admin.email}"/>
            <c:param name="uname" value="${admin.userName}"/>
            <c:param name="pass" value="${admin.password}"/>
        </c:url>
        <a href="${admindelete}" class="btn btn-danger"><button>Delete My Data</button></a>
    </div>
</div>

</body>
</html>
