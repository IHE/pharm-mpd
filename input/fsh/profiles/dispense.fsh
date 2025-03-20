Profile: IHEMedicationDispense
Parent: MedicationDispense
Title: "IHE Medication Dispense"
Description: "MedicationDispense profile for capturing dispensation information based on a medication prescription."


* identifier MS // identifier
* subject MS // patient 1
* receiver MS // receiver
* performer.actor 1..1 MS // dispenser 1
* authorizingPrescription MS // relatedRequest
* authorizingPrescription only Reference(IHEMedicationOrder)
* medication MS // medication 1
* medication only CodeableReference(IHEMedication)
* quantity 1..1 MS // dispensedQuantity 1
* whenHandedOver 1..1 MS // timeOfDispensation 1
* substitution.wasSubstituted MS // substitutionOccurred
  // reimbursementRate (I think we planned to leave it out of scope)
* status MS // status 1
* notPerformedReason MS // statusReason, statusText (partial mapping to logical model!)
