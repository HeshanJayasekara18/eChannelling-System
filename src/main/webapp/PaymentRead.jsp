<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Read Payment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">
    <div class="container my-5">
        <h2 class="text-center mb-4">Payment Details</h2>

        <c:forEach var="pay" items="${PaymentDetails}">
            <div class="card mb-4 shadow-sm">
                <div class="card-body">
                    <h3 class="card-title">Billing Address</h3>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <strong>Full Name:</strong>
                            <p>${pay.fullName}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>Email:</strong>
                            <p>${pay.email}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>Address:</strong>
                            <p>${pay.address}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>City:</strong>
                            <p>${pay.city}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>Province:</strong>
                            <p>${pay.province}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>Zip Code:</strong>
                            <p>${pay.zipCode}</p>
                        </div>
                    </div>

                    <h3 class="card-title">Payment Information</h3>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <strong>Name on Card:</strong>
                            <p>${pay.nameOnCard}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>Card Number:</strong>
                            <p>${pay.cardNumber}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>Exp Month:</strong>
                            <p>${pay.expMonth}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>Exp Year:</strong>
                            <p>${pay.expYear}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>CVN:</strong>
                            <p>${pay.CVN}</p>
                        </div>
                    </div>

                    <!-- Buttons for Update and Delete -->
                    <div class="d-flex justify-content-between">
                        <c:url value="UpdatePayment.jsp" var="paymentUpdate">
                            <c:param name="PayID" value="${pay.payID}"/>
                            <c:param name="FullName" value="${pay.fullName}"/>
                            <c:param name="Email" value="${pay.email}"/>
                            <c:param name="Address" value="${pay.address}"/>
                            <c:param name="City" value="${pay.city}"/>
                            <c:param name="Province" value="${pay.province}"/>
                            <c:param name="ZipCode" value="${pay.zipCode}"/>
                            <c:param name="NameOnCard" value="${pay.nameOnCard}"/>
                            <c:param name="CardNumber" value="${pay.cardNumber}"/>
                            <c:param name="ExpMonth" value="${pay.expMonth}"/>
                            <c:param name="ExpYear" value="${pay.expYear}"/>
                            <c:param name="CVN" value="${pay.CVN}"/>
                        </c:url>
                        <a href="${paymentUpdate}" class="btn btn-primary">Update Data</a>

                        <!-- Delete Button Trigger Modal -->
                       <c:url value="DeletePayment.jsp" var="paymentDelete">
                                <c:param name="PayID" value="${pay.payID}"/>
                                <c:param name="FullName" value="${pay.fullName}"/>
                                <c:param name="Email" value="${pay.email}"/>
                                <c:param name="Password" value="${pay.password}"/>
                                <c:param name="Address" value="${pay.address}"/>
                                <c:param name="City" value="${pay.city}"/>
                                <c:param name="Province" value="${pay.province}"/>
                                <c:param name="ZipCode" value="${pay.zipCode}"/>
                                <c:param name="NameOnCard" value="${pay.nameOnCard}"/>
                                <c:param name="CardNumber" value="${pay.cardNumber}"/>
                                <c:param name="ExpMonth" value="${pay.expMonth}"/>
                                <c:param name="ExpYear" value="${pay.expYear}"/>
                                <c:param name="CVN" value="${pay.CVN}"/>
                     </c:url>
                     <a href="${paymentDelete}" id="confirmDelete" class="btn btn-danger">Delete Data</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    
</body>
</html>

