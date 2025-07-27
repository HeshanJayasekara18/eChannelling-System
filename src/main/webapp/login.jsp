<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medical Report</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/report.css">
</head>

<body>
    <div class="container">
        <form action="reportvalidate" method="post" class="needs-validation" >
            <div class="row">
                <div class="col">


                    <h3 class="title">enter your email and password</h3>



                    <div class="inputBox">
                        <label for="doctor-email">Doctor's Email:</label>
                        <input type="email" id="doctor-email" name="doctor_email" 
                            >
                        <div class="invalid-feedback">
                           
                        </div>
                    </div>

                    <div class="inputBox">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" 
                            >
                        <div class="invalid-feedback">
                          
                        </div>
                    </div>




                </div>




            </div>
            <input type="submit" value='submit' class="submit-btn">
        </form>
    </div>


</body>

</html>