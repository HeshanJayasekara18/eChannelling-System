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
        function validateForm() {
            const doctorName = document.getElementById("doctor-name").value;
            const doctorEmail = document.getElementById("doctor-email").value;
            const password = document.getElementById("password").value;
            const patientFullname = document.getElementById("patient-fullname").value;
            const admissionDate = document.getElementById("admission-date").value;
            const medicalNumber = document.getElementById("patient-medical-number").value;

            if (doctorName === "") {
                alert("Doctor's name is required");
                return false;
            }
            if (doctorEmail === "") {
                alert("Doctor's email is required");
                return false;
            }
            const emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
            if (!doctorEmail.match(emailPattern)) {
                alert("Please enter a valid email address");
                return false;
            }
            if (password === "" || password.length < 6) {
                alert("Password must be at least 6 characters long");
                return false;
            }
            if (patientFullname === "") {
                alert("Patient's full name is required");
                return false;
            }
            if (admissionDate === "") {
                alert("Admission date is required");
                return false;
            }
            if (medicalNumber === "") {
                alert("Patient's medical number is required");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>  
<div class="container"> 
    <form action="reportinsert" method="post" onsubmit="return validateForm()"> 
        <div class="row"> 
            <div class="col"> 
                <h3 class="title" style="text-align: center;font-size: 30px;">Medical Report</h3>
                <br>

                <h3 class="title">Visit Information</h3>  
                
                <div class="inputBox"> 
                    <label for="doctor-name">Doctor's Name:</label> 
                    <input type="text" id="doctor-name" name="doctor_name" placeholder="ex: Dr. Saman Perera">
                </div> 

                <div class="inputBox"> 
                    <label for="doctor-email">Doctor's Email:</label> 
                    <input type="email" id="doctor-email" name="doctor_email" placeholder="example@gmail.com">
                </div> 

                <div class="inputBox"> 
                    <label for="password">Password</label> 
                    <input type="password" id="password" name="password" placeholder="Enter your password">
                </div> 
                
                <div class="inputBox"> 
                    <label for="doctor-specialization">Specialization:</label> 
                    <select name="doctor_specialization" id="doctor_specialization">
                        <option value="" disabled selected>Select specialization</option>
                        <option value="Cardiology">Cardiology</option>
                        <option value="Dermatology">Dermatology</option>
                        <option value="Neurology">Neurology</option>
                        <option value="Orthopedics">Orthopedics</option>
                        <option value="Pediatrics">Pediatrics</option>
                    </select> 
                </div> 
                 
                <div class="inputBox"> 
                    <label for="visit-date">Visit Date And time:</label> 
                    <input type="text" id="visit-date" name="visit_date" placeholder="ex: September 8, 2024/22.00H">
                </div> 
              
                <hr style="height:2px;border-width:0;color:gray;background-color:gray">   
            </div> 
            
            <div class="col"> 
                <h3 class="title">Patient Information</h3> 

                <div class="inputBox"> 
                    <label for="patient-fullname">Patient Full Name:</label>
                    <input type="text" id="patient-fullname" name="patient_fullname" placeholder="ex: Perera">
                </div> 
                 
                <div class="inputBox"> 
                    <label for="admission-date">Admission date:</label>
                    <input type="text" id="admission-date" name="admission_date" placeholder="ex: September 8, 2024">
                </div> 

                <div class="inputBox"> 
                    <label for="patient-medical-number">Patient Medical Number:</label>
                    <input type="text" id="patient-medical-number" name="patient_medical_number" placeholder="xxxx">
                </div> 

                <div class="inputBox"> 
                    <label for="reasonForAdmission">Reason for admission :</label>
                    <input type="text" id="reasonForAdmission" name="reason_for_admission" placeholder="ex: Chest Pain">
                </div> 
                
                <hr style="height:2px;border-width:0;color:gray;background-color:gray">   

                <div class="flex" > 
                    <div class="inputBox"> 
                        <legend style="font-size: medium;">Assessment</legend>
                        <textarea style="border: 1px solid #000000; border-radius: 10px;" name="patient_assessment" rows="8" cols="20"></textarea>
                    </div> 
                     
                    <div class="inputBox"> 
                        <legend style="font-size: medium;">Diagnosis</legend>
                        <textarea style="border: 1px solid #000000; border-radius: 10px;" name="patient_diagnosis" rows="8" cols="20"></textarea>
                    </div> 

                    <div class="inputBox"> 
                        <legend style="font-size: medium;">Prescription</legend> 
                        <textarea style="border: 1px solid #000000; border-radius: 10px;" name="patient_prescription" rows="8" cols="20"></textarea>
                    </div> 
                </div> 
            </div> 
        </div> 
        <input type="submit" name="submit" value='Generate Report' class="submit-btn"> 
        
    </form> 
    <a href="login.jsp">
        <input type="button" value="submit" class="submit-btn" style="background-color:rgb(243, 122, 164);color:white; border-radius: 5px; padding: 10px 20px;">
     </a>   
</div>
</body>
</html>

