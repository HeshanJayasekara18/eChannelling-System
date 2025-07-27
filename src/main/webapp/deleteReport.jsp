<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medical Report</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/report.css">
    <script>
        function confirmDelete() {
            return confirm("Are you sure you want to delete this medical report?");
        }
    </script>
</head>
<body>  
<div class="container"> 

 <%
   String reportId= request.getParameter("reportId");
   String doctorName= request.getParameter("doctorName");
   String doctorEmail=request.getParameter("doctorEmail");
   String doctorSpecialization=request.getParameter("doctorSpecialization");
   String visitDate=request.getParameter("visitDate");
   String patientFullname=request.getParameter("patientFullname");
   String Admissiondate=request.getParameter("Admissiondate") ; 
   String patientMedicalNumber=request.getParameter("patientMedicalNumber");
   String reasonForAdmission=request.getParameter("reasonForAdmission") ;
   String assessment = request.getParameter("assessment");
   String diagnosis=request.getParameter("diagnosis");
   String prescription=request.getParameter("prescription");
 %>
    <h1>Delete Medical account</h1>
    <form action="reportdelete" method="post" onsubmit="return confirmDelete();"> 
        <div class="row"> 
            <div class="col"> 
                <h3 class="title" style="text-align: center;font-size: 30px;">Medical Report</h3>
                <br>

                <h3 class="title">Visit Information</h3>  
                
                <div class="inputBox"> 
                    <label for="doctor-name">Report ID</label> 
                    <input type="text" id="doctor-name" name="reportId" value="<%= reportId %>" readonly>
                </div>
                
                <div class="inputBox"> 
                    <label for="doctor-name">Doctor's Name:</label> 
                    <input type="text" id="doctor-name" name="doctorName" value="<%= doctorName %>" placeholder="ex: Dr. Saman Perera" readonly>
                </div> 

                <div class="inputBox"> 
                    <label for="doctor-email">Doctor's Email:</label> 
                    <input type="email" id="doctor-email" name="doctorEmail" value="<%= doctorEmail %>" placeholder="example@gmail.com" readonly>
                </div> 

                <div class="inputBox"> 
                    <label for="doctor-specialization">Specialization:</label> 
                    <select name="doctorSpecialization" id="doctor_specialization" readonly>
    <option value="" disabled <%= doctorSpecialization == null ? "selected" : "" %>>Select specialization</option>
    <option value="Cardiology" <%= "Cardiology".equals(doctorSpecialization) ? "selected" : "" %>>Cardiology</option>
    <option value="Dermatology" <%= "Dermatology".equals(doctorSpecialization) ? "selected" : "" %>>Dermatology</option>
    <option value="Neurology" <%= "Neurology".equals(doctorSpecialization) ? "selected" : "" %>>Neurology</option>
    <option value="Orthopedics" <%= "Orthopedics".equals(doctorSpecialization) ? "selected" : "" %>>Orthopedics</option>
    <option value="Pediatrics" <%= "Pediatrics".equals(doctorSpecialization) ? "selected" : "" %>>Pediatrics</option>
</select>
                    
                </div> 
                 
                <div class="inputBox"> 
                    <label for="visit-date">Visit Date And time:</label> 
                    <input type="text" id="visit-date" name="visitDate"  value="<%= visitDate %>" placeholder="ex: September 8, 2024/22.00H" readonly>
                </div> 
              
                <hr style="height:2px;border-width:0;color:gray;background-color:gray">   
            </div> 
            
            <div class="col"> 
                <h3 class="title">Patient Information</h3> 

                <div class="inputBox"> 
                    <label for="patient-fullname">Patient Full Name:</label>
                    <input type="text" id="patient-fullname" name="patientFullname" value="<%= patientFullname%>" placeholder="ex: Perera" readonly>
                </div> 
                 
                <div class="inputBox"> 
                    <label for="admission-date">Admission date:</label>
                    <input type="text" id="admission-date" name="Admissiondate" value="<%= Admissiondate%>" placeholder="ex: September 8, 2024" readonly>
                </div> 

                <div class="inputBox"> 
                    <label for="patient-medical-number">Patient Medical Number:</label>
                    <input type="text" id="patient-medical-number" name="patientMedicalNumber" value="<%= patientMedicalNumber %>" placeholder="xxxx" readonly>
                </div> 

                <div class="inputBox"> 
                    <label for="reasonForAdmission">Reason for admission :</label>
                    <input type="text" id="reasonForAdmission" name="reasonForAdmission" value="<%=reasonForAdmission %>" placeholder="ex: Chest Pain" readonly>
                </div> 
                
                <hr style="height:2px;border-width:0;color:gray;background-color:gray">   

                <div class="flex"> 
    <div class="inputBox"> 
        <legend style="font-size: medium;">Assessment</legend>
        <textarea style="border: 1px solid #000000; border-radius: 10px;" name="assessment" rows="8" cols="20" readonly><%= assessment %></textarea>
    </div> 
                     
    <div class="inputBox"> 
        <legend style="font-size: medium;">Diagnosis</legend>
        <textarea style="border: 1px solid #000000; border-radius: 10px;" name="diagnosis" rows="8" cols="20" readonly><%= diagnosis %></textarea>
    </div> 

    <div class="inputBox"> 
        <legend style="font-size: medium;">Prescription</legend> 
        <textarea style="border: 1px solid #000000; border-radius: 10px;" name="prescription" rows="8" cols="20"readonly><%= prescription %></textarea>
    </div> 
</div>
                
            </div> 
        </div> 
        <div>
            <input type="submit" value="delete" class="submit-btn" style="background-color:rgb(136, 136, 231);color:white; border-radius: 5px; padding: 10px 20px;">
            
        </div>
        
    </form> 
      
</div>
</body>
</html>
