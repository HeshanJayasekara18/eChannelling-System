package com.lab;

public class Report {
    int reportId;
    String doctorName;
    String doctorEmail;
    String password;
    String doctorSpecialization;
    String visitDate;
    String patientFullname;
    String Admissiondate; 
    String patientMedicalNumber;
    String reasonForAdmission ;
    String assessment;
    String diagnosis;
    String prescription;

   public Report(int reportId, String doctorName, String doctorEmail,String password, String doctorSpecialization, String visitDate,
           String patientFullname, String Admissiondate, String patientMedicalNumber, String reasonForAdmission,
           String assessment, String diagnosis, String prescription) {
     
       this.reportId = reportId;
       this.doctorName = doctorName;
       this.doctorEmail = doctorEmail;
       this.password=password;
       this.doctorSpecialization = doctorSpecialization;
       this.visitDate = visitDate;
       this.patientFullname = patientFullname;
       this.Admissiondate = Admissiondate;
       this.patientMedicalNumber = patientMedicalNumber;
       this.reasonForAdmission = reasonForAdmission;
       this.assessment = assessment;
       this.diagnosis = diagnosis;
       this.prescription = prescription;
   }

 public int getReportId() {
   return reportId;
 }

 public String getDoctorName() {
   return doctorName;
 }

 public String getDoctorEmail() {
   return doctorEmail;
 }
 
   public String getPassword() {
   return password;
 }

 public String getDoctorSpecialization() {
   return doctorSpecialization;
 }

 public String getVisitDate() {
   return visitDate;
 }

 public String getPatientFullname() {
   return patientFullname;
 }

 public String getAdmissiondate() {
   return Admissiondate;
 }

 public String getPatientMedicalNumber() {
   return patientMedicalNumber;
 }

 public String getReasonForAdmission() {
   return reasonForAdmission;
 }

 public String getAssessment() {
   return assessment;
 }

 public String getDiagnosis() {
   return diagnosis;
 }

 public String getPrescription() {
   return prescription;
 }

 
}

