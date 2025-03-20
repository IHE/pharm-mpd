Logical: MedicationDispensation
Title: "Medication dispensation (model)"
Description: "Logical model for medication dispensation (based on request or independently)"
Characteristics: #can-be-target

* identifier 0..* II "Identifier for the dispense"
* patient 1..1 Reference(PatientBasic) "The person for whom the medication is prescribed/ordered"
* receiver 0..1 Reference(PatientBasic or PractitionerBasic) "Identification of the person who received the dispensed medication, especially when it was not the patient"
* dispenser 1..1 Reference(PractitionerBasic or Organization or Device) "The person who dispensed the product, and takes the responsibility of the dispensation" //TODO not all models exist, references FHIR resources
* relatedRequest 0..* Reference(MedicationOrder) "Prescription/request/order the dispense is related to"
* medication 1..1 Reference(MedicinalProductLM) "Exact dispensed product"
* dispensedQuantity 1..1 PQ "Number of dispensed packages if the pack size is known, or number of smaller items/units"
* timeOfDispensation 1..1 DT "Date and time of dispensation"
* substitution 0..1 BackboneElement "Indicated whether substitution was made by the dispenser" "Question: is this relevant? It is in eHDSI dispensation."
  * substitutionOccurred 0..1 BL "Indicated whether substitution was made by the dispenser" "Question: is this relevant? It is in eHDSI dispensation."
  * substitutionType 0..1 CD "Indicated whether substitution was made by the dispenser" "Question: is this relevant? It is in eHDSI dispensation."
* status 1..1 CD "Status of the dispensation"
* statusReason 0..* CD "Reason for the current status of dispensation, for example the reason why the dispensation was made invalid"
* statusReasonText 0..1 ST "Textual reason for the current status of dispensation"
* usageInstructions 0..* Reference(DosagingInformation) "Dosaging and administration instructions" //TODO Validate the inclusion, added according to a proposal from 5.09.2024

//* reimbursementRate 0..1 PQ "Reimbursement rate at the time of dispensation. In some cases, it may be different than on dispensation."
// price, broken to patient part and reimbursed part and per package and per dispensation
// category CD
// context (Encounter)
// supporting information (Reference)
// type CD
// note
// steps (stepName, datetimeStep, actor) - I think it would go into the workflow?
// destination (Location ) - workflow? or relevant for epharmacy?
// detected issues
// event history
