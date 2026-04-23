Profile: IHEMedicationDispense
Parent: MedicationDispense
Title: "IHE Medication Dispense"
Description: "MedicationDispense profile for capturing dispensation information based on a medication prescription."


* identifier MS // identifier
* subject MS // patient 1
* receiver MS // receiver
* statusChanged MS
* performer.actor 1..1 MS // dispenser 1
* authorizingPrescription MS // relatedRequest
* authorizingPrescription only Reference(MedicationRequest)
* medication MS // medication 1
* medication only CodeableReference(IHEMedication)
* quantity 1..1 MS // dispensedQuantity 1
* whenHandedOver 0..1 MS // timeOfDispensation 1
* substitution.wasSubstituted MS // substitutionOccurred
* substitution.reason ^short = "Why substitution was (or was not) done"
  // reimbursementRate (I think we planned to leave it out of scope)
* status MS // status 1
* notPerformedReason MS // statusReason, statusText (partial mapping to logical model!)
* note MS