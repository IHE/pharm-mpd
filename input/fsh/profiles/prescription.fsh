Profile: IHEMedicationPrescription
Title: "IHE Medication Prescription"
Parent: MedicationRequest
Description: "IHE Medication Prescription profile"

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
* medication only Reference(IHEMedication)
* subject MS // patient
* dosageInstruction MS // usageInstructions
* dosageInstruction.patientInstruction MS // preparationInstructions (?)
* reason MS // indication, indicationText
* note MS // comment
* substitution MS // Does not match current logical model (sync with meow?)


//* recorder 0..1 Reference(PractitionerBasic or PractitionerRole) "The recorder of the prescription/draft in the information system"
//* prescriber 1..1 Reference(PractitionerBasic or PractitionerRole) "The person who made the prescription, and who takes the responsibility of the treatment" "Question: would we want to add basic Practicioner model?"
/*
* category 0..* CodeableConcept "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."
* validFrom 0..1 dateTime "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate"
* validUntil 0..1 dateTime "The validity period end date. The prescription is not dispensable after this date."
* patient 1..1 Reference(PatientBasic) "The person for whom the medication is prescribed/ordered" "Question: would we want to add basic Patient model?"
* status 1..1 CD "Status of the prescription, this should not be status of treatment"
* statusReason 0..* CD "Reason for the current status of prescription, for example the reason why the prescription was made invalid"
* statusReasonText 0..1 ST "Textual reason for the current status of prescription"
* medication 1..1 Reference(MedicinalProduct) "Prescribed product, branded, generic, virtual, extemporal, etc"
* indication 0..* CD "Reason for the prescription (typically diagnosis, or a procedure)"
* indicationText 0..1 ST "Reason for the prescription in textual form. This might not be allowed by some implementations."
* usageInstructions 1..1 Reference(DosagingInformation) "Dosaging and administration instructions"
* preparationInstructions 0..* string "Additional instructions about preparation or dispense" 
* noSubstitution 0..1 BackboneElement "Substitution is not allowed for a given reason" 
  * noSubstitutionFlag 1..1 boolean "Substitution of the product is not allowed."
  * noSubstitutionReason 0..1 CD "Coded reason for the no-substitution requirement"
  * noSubstitutionReasonText 0..1 ST "Textual reason for the no-substitution requirement"
* allowedSubstitutionType 0..* CD "Specific type of substitution that is allowed. Can be an explicit relaxation to normal jurisdictional substitution rules, especially in hospital context."
* comment 0..* ST "Additional information or comments"

*/   


// noSubstitution (flag, reason, text)
// allowedSubstitutionType
// totalAmount prescribed is questionable - it seems to be used in many national prescribing systems, we don't have it in logical model.
