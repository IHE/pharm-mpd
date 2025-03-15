Profile: IHEMedicationPrescription
Title: "IHE Medication Prescription"
Parent: MedicationRequest
Description: "IHE Medication Prescription profile"

* extension contains OffLabelUse named offLabelUse 0..1 
* extension[offLabelUse] ^short = "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product." 

* identifier 1..* MS // identifier
* groupIdentifier 0..1 MS // groupIdentifier
* status MS // status
* statusReason MS // statusReason, statusReasonText
* authoredOn 1..1 MS // issueDate; recordingDate maybe in Provenance?
* recorder 0..1 MS // recorder
* requester 0..1 MS // prescriber
* category MS // category
* dispenseRequest.extension contains MedicationRequestPrescribedQuantity named prescribedQuantity 0..1 
* dispenseRequest.extension[prescribedQuantity] ^short = "Total amount of product requested on this medication request."
* dispenseRequest.validityPeriod MS // validFrom, validUntil
* medication MS // medication
* medication only CodeableReference(IHEMedication)
* subject MS // patient
* effectiveDosePeriod MS // treatmentPeriod
* dosageInstruction MS // usageInstructions
* dosageInstruction.patientInstruction MS // preparationInstructions (?)
* reason MS // indication, indicationText
* note MS // comment
* substitution MS // Does not match current logical model (sync with meow?)


//* recorder 0..1 Reference(PractitionerBasic or PractitionerRole) "The recorder of the prescription/draft in the information system"
//* prescriber 1..1 Reference(PractitionerBasic or PractitionerRole) "The person who made the prescription, and who takes the responsibility of the treatment" "Question: would we want to add basic Practicioner model?"
