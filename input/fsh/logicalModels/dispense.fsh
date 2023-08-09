Logical: MedicationDispensation
Title: "Medication dispensation"
Description: "Logical model for medication dispensation (based on request or independently)"

* patient 1..1 Reference(PatientBasic) "The person for whom the medication is prescribed/ordered"
* dispenser 1..1 Reference(PractitionerBasic) "The person who dispensed the product, and takes the responsibility of the dispensation"
* relatedRequest 0..1 Reference(MedicationPrescription) "Prescription/request/order the dispense is related to"
* medication 1..1 Reference(MedicinalProduct) "Exact dispensed product"
* numberOfPackages 1..1 INT "Number of dispensed package. Pack size should be defined in medication data"
* timeOfDispensation 1..1 DateTime "Date and time of dispensation"
* substitutionOccurred 0..1 BL "Indicated whether substitution was made by the dispenser" "Question: is this relevant? It is in eHDSI dispensation."
* reimbursementRate 0..1 PQ "Reimbursement rate at the time of dispensation. In some cases, it may be different than on prescription."
// what else?

