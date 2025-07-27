<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Details</title>
    <style>
        /* Set the body and html to take full screen */
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
            background-image: url(images/bgimage.png);
        }

        h1.topic {
            color: white;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Wrapper to ensure the table container fills the viewport height */
        .table-wrapper {
            display: flex;
            flex-direction: column;
            height: 100vh; /* Full height of the viewport */
            padding: 10px;
        }

        /* Styling for the back to home button */
        .back-home-btn {
            background-color: #3c91e6;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-bottom: 20px;
            text-decoration: none;
            text-align: center;
            display: inline-block;
        }

        .back-home-btn:hover {
            background-color: #347ac9;
        }

        /* Table container to allow scrolling */
        .table-container {
            flex-grow: 1;
            overflow-y: auto;
            overflow-x: auto; /* Allow horizontal scrolling */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            table-layout: auto; /* Allow flexible column width */
        }

        table, th, td {
            border: 1px solid black;
        }

        /* Increase padding and set minimum width for all cells */
        th, td {
            padding: 20px; /* Increase padding for larger cell size */
            text-align: left;
            background-color: #f4f4f4;
            min-width: 150px; /* Set minimum width for all columns */
        }

        th {
            background-color: #333;
            color: white;
            position: sticky;
            top: 0;
            z-index: 1; /* Keep headers above rows when scrolling */
        }

        /* Button styles */
        .btn {
            padding: 10px 15px; /* Increased padding for buttons */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-update {
            background-color: #4CAF50; /* Green */
        }

        .btn-delete {
            background-color: #f44336; /* Red */
        }

        .btn-update:hover {
            background-color: #45a049;
        }

        .btn-delete:hover {
            background-color: #d73727;
        }

        /* Optional: Styling for scrollbars */
        .table-container::-webkit-scrollbar {
            width: 10px;
            height: 10px;
        }

        .table-container::-webkit-scrollbar-thumb {
            background-color: #888;
            border-radius: 5px;
        }

        .table-container::-webkit-scrollbar-thumb:hover {
            background-color: #555;
        }
    </style>
</head>
<body>

<div class="table-wrapper">
    <!-- Back to Home Button ---------------------------------------->
    <a href="adddoctoraccount.jsp" class="back-home-btn">Back to Home Page</a>
    
    <h1 class="topic">Doctor Details</h1>

    <!-- Table wrapper for scrollable content -->
    <div class="table-container">
        <table>
            <tr>
                <th>Doctor ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Specialization</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Description</th>
                <th>User Name</th>
                <th>Password</th>
                <th>DOB</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Avalability</th>
               
                <th>Actions</th>
            </tr>

            <c:forEach var="doctor" items="${doctorDetails}">
            
            <c:set var="id" value="${doctor.id}"/>
		    <c:set var="fname" value="${doctor.firstName}"/>
		    <c:set var="lname" value="${doctor.lastName}"/>
		    <c:set var="specialization" value="${doctor.specialization}"/>
		    <c:set var="phone" value="${doctor.phone}"/>
		    <c:set var="email" value="${doctor.email}"/>
		    <c:set var="description" value="${doctor.description}"/>
		    <c:set var="userName" value="${doctor.userName}"/>
		    <c:set var="password" value="${doctor.password}"/>
		    <c:set var="DOB" value="${doctor.DOB}"/>
		    <c:set var="gender" value="${doctor.gender}"/>
		    <c:set var="address" value="${doctor.address}"/>
		     
		    
		    
		        
                <tr>
                    <td>${doctor.id}</td>
                    <td>${doctor.firstName}</td>
                    <td>${doctor.lastName}</td>
                    <td>${doctor.specialization}</td>
                    <td>${doctor.phone}</td>
                    <td>${doctor.email}</td>
                    <td>${doctor.description}</td>
                    <td>${doctor.userName}</td>
                    <td>${doctor.password}</td>
                    <td>${doctor.DOB}</td>
                    <td>${doctor.gender}</td>
                    <td>${doctor.address}</td>
                    <td>${doctor.avalability}</td>
                     
                    
                    <td>
                        <!-- Update button -->
                        <form action="doctorupdate" method="post" style="display:inline;">
                            <input type="hidden" name="id" value="${doctor.id}">
                            
                            <!-- Update buttons -->
					    
					        
					        <c:url value="UpdateDoctor.jsp" var="doctorDetails">
					            <c:param name="id" value="${id}"/>
					            <c:param name="fname" value="${fname}"/>
					            <c:param name="lname" value="${lname}"/>
					            <c:param name="specialization" value="${specialization}"/>
					            <c:param name="phone" value="${phone}"/>
					            <c:param name="email" value="${email}"/>
					            <c:param name="description" value="${description}"/>
					            <c:param name="userName" value="${userName}"/>
					            <c:param name="password" value="${password}"/>
					            <c:param name="DOB" value="${DOB}"/>
					            <c:param name="gender" value="${gender}"/>
					            <c:param name="address" value="${address}"/>
					             
					        </c:url>
					        
					        <a href="${doctorDetails}" class="btn">
					        <input type="button"  class="btn btn-update" name="Update My Data" value="Update">
					        </a>
                            
                            
                        </form>

                        <!-- Delete button -->
                        <form action="doctordelete" method="post" style="display:inline;">
                            <input type="hidden" name="id" value="${doctor.id}">
                            <button type="submit" class="btn btn-delete" onclick="return confirm('Are you sure you want to delete this doctor?');">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

</body>
</html>
 

