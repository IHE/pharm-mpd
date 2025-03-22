Logical: PractitionerBasic
Title: "Practitioner (model)"
Description: "Logical model for practitioner (basic data relevant for this use case)"
Characteristics: #can-be-target

* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* identifier 1..* Identifier "Prescribing/dispensing practitioner's identifier"
* name 1..* HumanName "Prescribing/dispensing practitioner's name, incl first name, last name, or any other relevant name parts"
* specialtyProfession 0..* CodeableConcept "Specialty/profession of the prescribing/dispensing practitioner"
* organisation 0..1 BackboneElement "Facility/organisation the prescribing/dispensing practitioner represents"
  * identifier 0..1 Identifier "Organisation identifier" 
  * facilityName 0..1 string "Facility/organisation name"
  * facilityAddress 0..1 Address "Facility/organisation address"
* contactInformation 0..1 BackboneElement "Contact information for the prescriber/dispenser or the organisation"
  * phone 0..1 string "Phone number"
  * email 0..* string "Email address"