Logical: MedicationDispensation
Title: "Medication dispensation"
Description: "Logical model for medication dispensation (based on request or independently)"

* identifier 0..1 II "Identifier for the dispense"
* patient 1..1 Reference(PatientBasic) "The person for whom the medication is prescribed/ordered"
* receiver 0..1 ANY "Identification of the person who received the dispensed medication, especially when it was not the patient"
* dispenser 1..1 Reference(PractitionerBasic) "The person who dispensed the product, and takes the responsibility of the dispensation"
* relatedRequest 0..1 Reference(MedicationPrescription) "Prescription/request/order the dispense is related to"
* medication 1..1 Reference(MedicinalProduct) "Exact dispensed product"
* dispensedQuantity 1..1 PQ "Number of dispensed packages if the pack size is known, or number of smaller items/units"
* timeOfDispensation 1..1 dateTime "Date and time of dispensation"
* substitutionOccurred 0..1 BL "Indicated whether substitution was made by the dispenser" "Question: is this relevant? It is in eHDSI dispensation."
* reimbursementRate 0..1 PQ "Reimbursement rate at the time of dispensation. In some cases, it may be different than on dispensation."

* status 1..1 CD "Status of the dispensation"
* statusReason 0..* CD "Reason for the current status of dispensation, for example the reason why the dispensation was made invalid"
* statusReasonText 0..1 ST "Textual reason for the current status of dispensation"

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


