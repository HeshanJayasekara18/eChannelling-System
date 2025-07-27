<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
  
<!-- Setting character encoding and viewport -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Search Your Appointment Details</title>
    
 <!-- Linking external CSS file for styling -->  
    <link href="css/search.css" rel="stylesheet" />
  </head>
  <body>
  
 <!-- Heading for the search form --> 
    <h1>Search Your Appointment Details</h1>
    
 <!-- Form for searching payment details --> 
    <form action="search" method="post">
    
 <!-- Label and input for entering name -->  
      <label>Enter Patient name</label>
      <input
        type="text"
        name="patientName"
        class="form-group"
        placeholder="Enter name"
      /><br /><br />
      
 <!-- Label and input for entering email -->    
      <label>Enter email</label>

      <input
        type="text"
        name="email"
        class="form-group"
        placeholder="Enter email"
      /><br />
      
  <!-- Div for styling the search button -->   
      <div class="btncls">
        <button>Search</button>
       
      </div>
    </form>
    <div class="btncls">
    <a href="Payment.jsp">
        <button>Make your payment</button>
        </a>
       
      </div>
    
  </body>
</html>