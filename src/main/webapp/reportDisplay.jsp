<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Report Data Display</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #e0f7fa; /* Light blue background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* More modern font */
            color: #31d8f9; /* Dark gray text for readability */
        }
        h1 {
            color: black; /* Dark blue title color */
            margin-bottom: 20px;
            font-weight: 600; /* Semi-bold title */
            
        }
        .card {
            border-radius:10px;

        }  
        
        .card:hover {
           
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3); /* Stronger shadow on hover */
        }
        .card-header {
            background-color: #5bc2f6;/* Light blue header color */
            color: black; /* Black text for the header */
            border-radius: 10px 15px 10 0;
            font-weight: 500; /* Medium bold for the header */
            

        }
        table th {
            background-color: #5bc2f6; /* Bright table header */
            color: black; /* Black text for table headers */
            border-radius: 10px;
            text-align: center; /* Align text to the left */
        }
        button {
            border-radius: 25px;
            padding: 10px 20px;
            margin: 10px;
            transition: background-color 0.3s, transform 0.3s; /* Smooth transition for buttons */
        }
        .btn-custom {
            background-color: #4caf50; /* Green button */
            color: white; /* White text */
        }
        .btn-custom:hover {
            background-color: #388e3c; /* Darker green on hover */
            transform: scale(1.05);
        }
        .btn-danger {
            background-color: #e57373; /* Light red button */
            color: white; /* White text */
        }
        .btn-danger:hover {
            background-color: #c62828; /* Darker red on hover */
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <div class="container mt-5">
        <h1 class="text-center mb-4">MEDICAL REPORT</h1>

        <c:forEach var="rep" items="${repDetails}">
            <div class="card mb-4 shadow-sm">
                <div class="card-header">
                    <h3 class="card-title">Doctor: ${rep.doctorName}</h3>
                </div>
                <div class="card-body">
                    <table class="table table-striped table-bordered">
                        <tbody>
                            <tr>
                                <th scope="row">Report ID</th>
                                <td>${rep.reportId}</td>
                            </tr>
                            <tr>
                                <th scope="row">Doctor Name</th>
                                <td>${rep.doctorName}</td>
                            </tr>
                            <tr>
                                <th scope="row">Email</th>
                                <td>${rep.doctorEmail}</td>
                            </tr>
                            <tr>
                                <th scope="row">Password</th>
                                <td>${rep.password}</td>
                            </tr>
                            <tr>
                                <th scope="row">Specialization</th>
                                <td>${rep.doctorSpecialization}</td>
                            </tr>
                            <tr>
                                <th scope="row">Visit Date</th>
                                <td>${rep.visitDate}</td>
                            </tr>
                            <tr>
                                <th scope="row">Patient Full Name</th>
                                <td>${rep.patientFullname}</td>
                            </tr>
                            <tr>
                                <th scope="row">Admission Date</th>
                                <td>${rep.admissiondate}</td>
                            </tr>
                            <tr>
                                <th scope="row">Medical Number</th>
                                <td>${rep.patientMedicalNumber}</td>
                            </tr>
                            <tr>
                                <th scope="row">Reason for Admission</th>
                                <td>${rep.reasonForAdmission}</td>
                            </tr>
                            <tr>
                                <th scope="row">Assessment</th>
                                <td>${rep.assessment}</td>
                            </tr>
                            <tr>
                                <th scope="row">Diagnosis</th>
                                <td>${rep.diagnosis}</td>
                            </tr>
                            <tr>
                                <th scope="row">Prescription</th>
                                <td>${rep.prescription}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Submit buttons inside a form -->
            <div class="text-center mb-4">
                <c:url value="updateReport.jsp" var="repupdate">
                    <c:param name="reportId" value ="${rep.reportId}"/>
                    <c:param name="doctorName" value ="${rep.doctorName}"/>
                    <c:param name="doctorEmail" value ="${rep.doctorEmail}"/>
                    <c:param name="password" value ="${rep.password}"/>
                    <c:param name="doctorSpecialization" value ="${rep.doctorSpecialization}"/>
                    <c:param name="visitDate" value ="${rep.visitDate}"/>
                    <c:param name="patientFullname" value ="${rep.patientFullname}"/>
                    <c:param name="Admissiondate" value ="${rep.admissiondate}"/>
                    <c:param name="patientMedicalNumber" value ="${rep.patientMedicalNumber}"/>
                    <c:param name="reasonForAdmission" value ="${rep.reasonForAdmission}"/>
                    <c:param name="assessment" value ="${rep.assessment}"/>
                    <c:param name="diagnosis" value ="${rep.diagnosis}"/>
                    <c:param name="prescription" value ="${rep.prescription}"/>
                </c:url>
                <a href="${repupdate}">
                    <button type="button" class="btn btn-custom btn-lg">Update my report</button>
                </a>

                <c:url value="deleteReport.jsp" var="repdelete">
                    <c:param name="reportId" value ="${rep.reportId}"/>
                    <c:param name="doctorName" value ="${rep.doctorName}"/>
                    <c:param name="doctorEmail" value ="${rep.doctorEmail}"/>
                    <c:param name="doctorSpecialization" value ="${rep.doctorSpecialization}"/>
                    <c:param name="visitDate" value ="${rep.visitDate}"/>
                    <c:param name="patientFullname" value ="${rep.patientFullname}"/>
                    <c:param name="Admissiondate" value ="${rep.admissiondate}"/>
                    <c:param name="patientMedicalNumber" value ="${rep.patientMedicalNumber}"/>
                    <c:param name="reasonForAdmission" value ="${rep.reasonForAdmission}"/>
                    <c:param name="assessment" value ="${rep.assessment}"/>
                    <c:param name="diagnosis" value ="${rep.diagnosis}"/>
                    <c:param name="prescription" value ="${rep.prescription}"/>
                </c:url>
                <a href="${repdelete}">
                    <button type="button" class="btn btn-danger btn-lg">Delete my report</button>
                </a>
            </div>
        </c:forEach>
    </div>

    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
