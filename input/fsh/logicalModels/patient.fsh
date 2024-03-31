Logical: PatientBasic
Title: "Patient - Data Model"
Description: "Basic patient data relevant for this use case"
Characteristics: #can-be-target

* identifier 1..* II "Patient identifier"
* name 1..* EN "Patient's name, incl first name, last name, or any other relevant name parts"
* gender 0..1 CD "Gender" "Question: eHDSI prescription emphasisis the biological gender, but I think the reality is that most systems would have administrative gender or somekindof gender" 
* dateOfBirth 0..1 DT "Date of birth" "eHDSI"
* insuranceInformation 0..1 Class "Insurance information" "Question: shall we go here and how deep?"
* relatedHealthInformation 0..* ANY "Related health information, such as allergies, conditions, recent procedures, or certain lab results are not part of patient or prescription core data. IPS specification can be used for use-case-specific patient summary."