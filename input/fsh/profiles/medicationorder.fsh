Profile: IHEMedicationOrderModel
Title: "IHE Medication Order"
Parent: MedicationRequest
Description: "IHE Medication Order profile"


* extension contains OffLabelUse named offLabelUse 0..1 
* extension[offLabelUse] ^short = "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product." 


* identifier 
  * ^short = "Prescription/prescribed item ID"
  * ^comment = "It is the prescription ID if the presciption includes only one prescribed item"

* groupIdentifier 0..1 MS // groupIdentifier
  * ^comment = "It is the prescription ID if the presciption includes multiple prescribed items"

* status MS // status
* status ^short = "Status of the order"


* authoredOn 1..
* requester 1..
* groupIdentifier 
  * ^short = "Prescription this is part of. Not needed if a presciption includes only one prescribed item."
* dosageInstruction ^short = "How the medication should be taken."
  * timing ^short = "Administration schedule"
    * repeat
      * duration ^short = "Duration of the treatment"
      * frequency ^short = "Frequency times per period"
      * period ^short = "Duration of time over which repetitions are to occur"
      * periodUnit  ^short = "Unit of the period (e.g. day)"
    * code ^short = "A code for the timing schedule."
  * route ^short = "Route of administration"
  * text ^short = "Free text dosage instructions"
  * doseAndRate.doseQuantity ^short = "Amount of medication per dose"
* dispenseRequest
  * extension contains MedicationRequestPrescribedQuantity named prescribedQuantity 0..1
  * extension[prescribedQuantity] ^short = "Overall amount of product prescribed, independent from the number of repeats."
  * extension[prescribedQuantity] ^definition = "When Medication resource implies a pack size, prescribedQuantity should convey number of packages. When the Medication does not imply an amount, overall amount could be in tablets or millilitres."




* statusReason MS // statusReason, statusReasonText
* authoredOn 1..1 MS // issueDate; recordingDate maybe in Provenance?
* recorder 0..1 MS // recorder
* category MS // category
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
