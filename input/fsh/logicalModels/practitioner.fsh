Logical: PractitionerBasic
Title: "Practitioner - Data Model"
Description: "Basic prescribing/dispensing practitioner's data relevant for this use case"
Characteristics: #can-be-target

* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* identifier 1..* II "Prescribing/dispensing practitioner's identifier"
* name 1..* EN "Prescribing/dispensing practitioner's name, incl first name, last name, or any other relevant name parts"
* specialtyProfession 0..* CD "Specialty/profession of the prescribing/dispensing practitioner"
* organisation 0..1 Class "Facility/organisation the prescribing/dispensing practitioner represents"
  * identifier 0..1 II "Organisation identifier" 
  * facilityName 0..1 EN "Facility/organisation name"
  * facilityAddress 0..1 AD "Facility/organisation address"
* contactInformation 0..1 Class "Contact information for the prescriber/dispenser or the organisation"
  * phone 0..1 ST "Phone number"
  * email 0..* ST "Email address"