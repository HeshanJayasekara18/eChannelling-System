<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>
 <h2>Payment Details</h2>
    
    <table border="1" >
    
       
        <tr>
           <th>Id</th>
           <th>First Name</th>
           <th>Last Name</th>
           <th>Specialization</th>
           <th>Phone</th>
           <th>Email</th>
           <th>Description</th>
           <th>DOB</th>
           <th>Gender</th>
        </tr>  
        
        <c:forEach var="doc" items="${alldoc}">
        <tr>
           <td>${doc.id}</td>
           <td>${doc.firstname}</td>
           <td>${doc.lastname}</td>
           <td>${doc.specialization}</td>
           <td>${doc.phone}</td>
           <td>${doc.email}</td>
           <td>${doc.Description}</td>
           <td>${doc.username}</td>
           <td>${doc.password}</td>
           <td>${doc.dob}</td>
           <td>${doc.Gender}</td>
           <td>${doc.address}</td>
           <td>
              <a href="UpdateDoctor.jsp?id=${doc.id}&fname=${doc.firstname}&lname=${lastname}&specialization=${doc.specialization}&phone=${doc.phone}&email=${doc.email}&description=${doc.description}&uname=${doc.username}&pass=${doc.password} &dob=${doc.dob} &gender=${doc.gender} &address=${doc.address}">
              <button>Update</button>
              </a><br>
              
              <form action="DoctorDeleteServlet" method="post">
              	<input type="hidden" name="pid" value="${doc.id}">
              	<button>Delete</button>
              
              </form>
           
           
        </tr>   
        
    </c:forEach>
    
    </table>

</body>
</html>