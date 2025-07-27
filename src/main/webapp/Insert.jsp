<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Setting character encoding and viewport -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Insert Your Appointment Details</title>

    <!-- Linking external CSS file -->
    <link rel="stylesheet" href="css/insert.css" />

    <!-- JavaScript function for form validation -->
    <script>
      function validateForm() {
        // Get form field values
        const patientName = document.forms["appointmentForm"]["patientName"].value;
        const patientAge = document.forms["appointmentForm"]["patientAge"].value;
        const gender = document.forms["appointmentForm"]["gender"].value;
        const contactNumber = document.forms["appointmentForm"]["contactNumber"].value;
        const email = document.forms["appointmentForm"]["email"].value;
        const doctorName = document.forms["appointmentForm"]["doctorName"].value;
        const specialization = document.forms["appointmentForm"]["specialization"].value;
        const appointmentDate = document.forms["appointmentForm"]["appointmentDate"].value;
        const reasonForVisit = document.forms["appointmentForm"]["reasonForVisit"].value;

        // Validate Patient Name (letters and spaces only)
        const namePattern = /^[A-Za-z\s]+$/;
        if (!namePattern.test(patientName)) {
          alert("Please enter a valid Patient Name (only letters and spaces are allowed).");
          return false;
        }

        // Validate Age (between 0 and 120)
        if (isNaN(patientAge) || patientAge < 0 || patientAge > 120) {
          alert("Please enter a valid age between 0 and 120.");
          return false;
        }

        // Validate Contact Number (10 digits)
        const phonePattern = /^\d{10}$/;
        if (!phonePattern.test(contactNumber)) {
          alert("Please enter a valid 10-digit phone number.");
          return false;
        }

        // Validate Email (basic email format)
        const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
          alert("Please enter a valid email address.");
          return false;
        }

        // Validate Doctor Name (letters and spaces only)
        if (!namePattern.test(doctorName)) {
          alert("Please enter a valid Doctor Name (only letters and spaces are allowed).");
          return false;
        }

        // Validate Specialization selection
        if (specialization === "") {
          alert("Please select a Specialization.");
          return false;
        }

        // Validate Appointment Date (must be a future date)
        const today = new Date().toISOString().split("T")[0];
        if (appointmentDate < today) {
          alert("Please choose a future date for the appointment.");
          return false;
        }

        // Validate Reason for Visit (between 10 and 500 characters)
        if (reasonForVisit.length < 10 || reasonForVisit.length > 500) {
          alert("Reason for Visit should be between 10 and 500 characters.");
          return false;
        }

        // If all validations pass
        return true;
      }
    </script>
  </head>
  <body>
    <!-- Heading for the form -->
    <h1>Insert Your Appointment Details</h1>
    <!-- Div container for the form -->
    <div class="container">
      <!-- Div for the right half of the form -->
      <div class="right-half">
        <!-- Form for collecting payment details -->
        <form name="appointmentForm" action="insert" method="post" onsubmit="return validateForm();">
          <table>
            <!-- Patient Details -->
            <tr>
              <td>Patient Name:</td>
              <td>
                <input
                  type="text"
                  name="patientName"
                  pattern="[A-Za-z\s]+"
                  title="Only letters and spaces are allowed."
                  required
                />
              </td>
            </tr>
            <tr>
              <td>Patient Age:</td>
              <td>
                <input
                  type="number"
                  name="patientAge"
                  min="0"
                  max="120"
                  title="Age should be between 0 and 120."
                  required
                />
              </td>
            </tr>
            <tr>
              <td>Gender:</td>
              <td>
                <select name="gender" required>
                  <option value="">Select Gender</option>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
                  <option value="Other">Other</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>Contact Number:</td>
              <td>
                <input
                  type="tel"
                  name="contactNumber"
                  pattern="\d{10}"
                  title="Please enter a 10-digit phone number."
                  required
                />
              </td>
            </tr>
            <tr>
              <td>Email:</td>
              <td>
                <input
                  type="email"
                  name="email"
                  title="Please enter a valid email address."
                  required
                />
              </td>
            </tr>

            <!-- Appointment Details -->
            <tr>
              <td>Doctor Name:</td>
              <td>
                <input
                  type="text"
                  name="doctorName"
                  pattern="[A-Za-z\s]+"
                  title="Only letters and spaces are allowed."
                  required
                />
              </td>
            </tr>
            <tr>
              <td>Specialization:</td>
              <td>
                <select name="specialization" required>
                  <option value="">Select Specialization</option>
                  <option value="General Medicine">General Medicine</option>
                  <option value="Cardiology">Cardiology</option>
                  <option value="Dermatology">Dermatology</option>
                  <option value="Pediatrics">Pediatrics</option>
                  <option value="Orthopedics">Orthopedics</option>
                </select>
              </td>
            </tr>
            <tr>
              <td>Appointment Date:</td>
              <td>
                <input
                  type="date"
                  name="appointmentDate"
                  min="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>"
                  title="Please choose a future date."
                  required
                />
              </td>
            </tr>

            <tr>
              <td>Reason for Visit:</td>
              <td>
                <textarea
                  name="reasonForVisit"
                  rows="4"
                  cols="50"
                  minlength="10"
                  maxlength="500"
                  title="Reason should be between 10 and 500 characters."
                  required
                ></textarea>
              </td>
            </tr>
          </table>
          <!-- Div for styling the submit button -->
          <div class="btncls">
            <button type="submit">Submit</button>
          </div>
        </form>
        <!-- Button to navigate to the Search page -->
        <div class="btncls">
          <button type="button" onclick="window.location.href='Search.jsp';">Go to Search Page</button>
        </div>
      </div>
    </div>
  </body>
</html>
