Profile: IHEMedicationPrescription
Parent: MedicationRequest
Description: "MedicationRequest profile for medication prescription."

* identifier 1..* MS // identifier
* groupIdentifier 0..1 MS // groupIdentifier
* status MS // status
* statusReason MS // statusReason, statusReasonText
* authoredOn 1..1 MS // recordingDate
// issueDate
* recorder 0..1 MS // recorder
* requester 0..1 MS // prescriber
* category MS // category
* dispenseRequest.validityPeriod MS // validFrom, validUntil
* medication MS // medication
* medication only Reference(MedicinalProduct)
* subject MS // patient
* dosageInstruction MS // usageInstructions
* dosageInstruction.patientInstruction MS // preparationInstructions (?)
* reason MS // indication, indicationText
* note MS // comment
* substitution MS // Does not match current logical model (sync with meow?)

// noSubstitution (flag, reason, text)
// allowedSubstitutionType
// totalAmount prescribed is questionable - it seems to be used in many national prescribing systems, we don't have it in logical model.