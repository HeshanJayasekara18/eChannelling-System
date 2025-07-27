<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Your Appointment Details</title>
    <link rel="stylesheet" href="css/display.css" />
</head>
<body>
<h1>Your Appointment Details</h1>

<c:forEach var="cus" items="${cusDetails}">
    <c:set var="id" value="${cus.id}" />
    <c:set var="patientName" value="${cus.patientName}" />
    <c:set var="patientAge" value="${cus.patientAge}" />
    <c:set var="gender" value="${cus.gender}" />
    <c:set var="contactNumber" value="${cus.contactNumber}" />
    <c:set var="email" value="${cus.email}" />
    <c:set var="doctorName" value="${cus.doctorName}" />
    <c:set var="specialization" value="${cus.specialization}" />
    <c:set var="appointmentDate" value="${cus.appointmentDate}" />
    <c:set var="reasonForVisit" value="${cus.reasonForVisit}" />
    
    <div class="container">
        <div class="right-half">
            <table>
                <tr>
                    <td>Id:</td>
                    <td><input type="text" value="${cus.id}" readonly /></td>
                </tr>
                <tr>
                    <td>Patient Name:</td>
                    <td><input type="text" value="${cus.patientName}" readonly /></td>
                </tr>
                <tr>
                    <td>Patient Age:</td>
                    <td><input type="number" value="${cus.patientAge}" readonly /></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    
                                           <td><input type="text" value="${cus.gender}" readonly /></td>

                    
                </tr>
                <tr>
                    <td>Contact Number:</td>
                    <td><input type="tel" value="${cus.contactNumber}" readonly /></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="email" value="${cus.email}" readonly /></td>
                </tr>
                <tr>
                    <td>Doctor Name:</td>
                    <td><input type="text" value="${cus.doctorName}" readonly /></td>
                </tr>
                <tr>
                    <td>Specialization:</td>
                                       <td><input type="text" value="${cus.specialization}" readonly /></td>
                   
                </tr>
                <tr>
                    <td>Appointment Date:</td>
                    <td><input type="date" value="${cus.appointmentDate}" readonly /></td>
                </tr>
                <tr>
                    <td>Reason for Visit:</td>
                    <td><textarea rows="4" cols="50" readonly>${cus.reasonForVisit}</textarea></td>
                </tr>
            </table>

        </div>
    </div>
</c:forEach>

<!-- Create URLs for update and delete actions -->
<c:url value="Update.jsp" var="cusupdate">
    <c:param name="id" value="${id}"/>
    <c:param name="patientName" value="${patientName}"/>
    <c:param name="patientAge" value="${patientAge}"/>
    <c:param name="gender" value="${gender}"/>
    <c:param name="contactNumber" value="${contactNumber}"/>
    <c:param name="email" value="${email}"/>
    <c:param name="doctorName" value="${doctorName}"/>
    <c:param name="specialization" value="${specialization}"/>
    <c:param name="appointmentDate" value="${appointmentDate}"/>
    <c:param name="reasonForVisit" value="${reasonForVisit}"/>
</c:url>

<c:url value="Delete.jsp" var="cusdelete">
    <c:param name="id" value="${id}"/>
     <c:param name="patientName" value="${patientName}"/>
    <c:param name="patientAge" value="${patientAge}"/>
    <c:param name="gender" value="${gender}"/>
    <c:param name="contactNumber" value="${contactNumber}"/>
    <c:param name="email" value="${email}"/>
    <c:param name="doctorName" value="${doctorName}"/>
    <c:param name="specialization" value="${specialization}"/>
    <c:param name="appointmentDate" value="${appointmentDate}"/>
    <c:param name="reasonForVisit" value="${reasonForVisit}"/>
</c:url>

<div class="btncls">
    <a href="${cusupdate}"><button name="update">Update</button></a>
    <a href="${cusdelete}"><button name="delete" class="dkt">Delete</button></a>
</div>

</body>
</html>
