<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Delete Payment Details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body class="bg-light">
        <div class="container my-5">
            <h2 class="text-center mb-4">Delete Payment Details</h2>
            
            <%
            String PayID = request.getParameter("PayID");
            String FullName = request.getParameter("FullName");
            String Email = request.getParameter("Email");
            String Password = request.getParameter("Password");
            String Address = request.getParameter("Address");
            String City = request.getParameter("City");
            String Province = request.getParameter("Province");
            String ZipCode = request.getParameter("ZipCode");
            String NameOnCard = request.getParameter("NameOnCard");
            String CardNumber = request.getParameter("CardNumber");
            String ExpYear = request.getParameter("ExpYear");
            String ExpMonth = request.getParameter("ExpMonth");
            String CVN = request.getParameter("CVN");
            %>

            <form action="Delete" method="post">
                <div class="card mb-4 shadow-sm">
                    <div class="card-body">
                        <h3 class="card-title">Billing Address</h3>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <input type="hidden" name="PayID" value="<%= PayID %>"> <!-- Hidden field for PayID -->
                                <label for="full-name">Full Name:</label>
                                <input type="text" id="FullName" name="FullName" class="form-control" value="<%= FullName %>" readonly>
                            </div>
                            <div class="col-md-6">
                                <label for="email">Email:</label>
                                <input type="email" id="Email" name="Email" class="form-control" value="<%= Email %>" readonly>
                            </div>
                            <div class="col-md-6">
                                <label for="password">Password:</label>
                                <input type="password" id="Password" name="Password" class="form-control" value="<%= Password %>" readonly>
                            </div>
                            <div class="col-md-6">
                                <label for="address">Address:</label>
                                <input type="text" id="Address" name="Address" class="form-control" value="<%= Address %>" readonly>
                            </div>
                            <div class="col-md-6">
                                <label for="city">City:</label>
                                <input type="text" id="City" name="City" class="form-control" value="<%= City %>" readonly>
                            </div>
                            <div class="col-md-6">
                                <label for="province">Province:</label>
                                <input type="text" id="Province" name="Province" class="form-control" value="<%= Province %>" readonly>
                            </div>
                            <div class="col-md-6">
                                <label for="zip-code">Zip Code:</label>
                                <input type="text" id="ZipCode" name="ZipCode" class="form-control" pattern="\d{5}" value="<%= ZipCode %>" readonly>
                            </div>
                        </div>

                        <h3 class="card-title">Payment Information</h3>
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="name-on-card">Name on Card:</label>
                                <input type="text" id="NameOnCard" name="NameOnCard" class="form-control" value="<%= NameOnCard %>" readonly>
                            </div>
                            <div class="col-md-6">
                                <label for="card-number">Card Number:</label>
                                <input type="text" id="CardNumber" name="CardNumber" class="form-control" pattern="\d{16}" value="<%= CardNumber %>" readonly>

                            </div>
                            <div class="col-md-6">
                                <label for="exp-month">Exp Month:</label>
                                <select name="ExpMonth" id="exp-month" class="form-control" disabled>
                                    <option value="January" <%= "January".equals(ExpMonth) ? "selected" : "" %>>January</option>
                                    <option value="February" <%= "February".equals(ExpMonth) ? "selected" : "" %>>February</option>
                                    <option value="March" <%= "March".equals(ExpMonth) ? "selected" : "" %>>March</option>
                                    <option value="April" <%= "April".equals(ExpMonth) ? "selected" : "" %>>April</option>
                                    <option value="May" <%= "May".equals(ExpMonth) ? "selected" : "" %>>May</option>
                                    <option value="June" <%= "June".equals(ExpMonth) ? "selected" : "" %>>June</option>
                                    <option value="July" <%= "July".equals(ExpMonth) ? "selected" : "" %>>July</option>
                                    <option value="August" <%= "August".equals(ExpMonth) ? "selected" : "" %>>August</option>
                                    <option value="September" <%= "September".equals(ExpMonth) ? "selected" : "" %>>September</option>
                                    <option value="October" <%= "October".equals(ExpMonth) ? "selected" : "" %>>October</option>
                                    <option value="November" <%= "November".equals(ExpMonth) ? "selected" : "" %>>November</option>
                                    <option value="December" <%= "December".equals(ExpMonth) ? "selected" : "" %>>December</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="exp-year">Exp Year:</label>
                                <select name="ExpYear" id="exp-year" class="form-control" disabled>
                                    <option value="2024" <%= "2024".equals(ExpYear) ? "selected" : "" %>>2024</option>
                                    <option value="2025" <%= "2025".equals(ExpYear) ? "selected" : "" %>>2025</option>
                                    <option value="2026" <%= "2026".equals(ExpYear) ? "selected" : "" %>>2026</option>
                                    <option value="2027" <%= "2027".equals(ExpYear) ? "selected" : "" %>>2027</option>
                                    <option value="2028" <%= "2028".equals(ExpYear) ? "selected" : "" %>>2028</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="cvn">CVN:</label>
                                <input type="text" id="CVN" name="CVN" class="form-control" pattern="\d{3}" value="<%= CVN %>" readonly>
                            </div>
                        </div>


                        <!-- Submit Button -->
                        <div class="d-flex justify-content-between">
                            <button type="submit" class="btn btn-primary">Delete</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
