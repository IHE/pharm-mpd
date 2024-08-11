Logical: MedicationPrescription
Title: "Medication prescription (model)"
Description: "Logical model for medication prescription (or some other form of order)"
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true

* identifier 1..* II "Business identifier(s) for the prescription"
* groupIdentifier 0..1 II "Identifier for the group that this prescription belongs to. This might be the common identifier in use cases where one national prescription contains several medication items, which can be handled as separate orders"

* recordingDate 0..1 DT "Time of authoring the prescription/draft in the information system"
* issueDate 1..1 DT "Time of issuing (signing) the prescription by health care practicioner"
* recorder 0..1 Reference(PractitionerBasic or PractitionerRole) "The recorder of the prescription/draft in the information system"
* prescriber 1..1 Reference(PractitionerBasic or PractitionerRole) "The person who made the prescription, and who takes the responsibility of the treatment" "Question: would we want to add basic Practicioner model?"
* category 0..* CD "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."
* validFrom 0..1 DT "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate"
* validUntil 0..1 DT "The validity period end date. The prescription is not dispensable after this date."
* patient 1..1 Reference(PatientBasic) "The person for whom the medication is prescribed/ordered" "Question: would we want to add basic Patient model?"
* status 1..1 CD "Status of the prescription, this should not be status of treatment"
* statusReason 0..* CD "Reason for the current status of prescription, for example the reason why the prescription was made invalid"
* statusReasonText 0..1 ST "Textual reason for the current status of prescription"
* medication 1..1 Reference(MedicinalProductLM) "Prescribed product, branded, generic, virtual, extemporal, etc"
* indication 0..* CD "Reason for the prescription (typically diagnosis, or a procedure)"
* indicationText 0..1 ST "Reason for the prescription in textual form. This might not be allowed by some implementations."
* usageInstructions 1..1 Reference(DosagingInformation) "Dosaging and administration instructions"
* preparationInstructions 0..* ST "Additional instructions about preparation or dispense" 
* substitution 0..1 Class "Whether and which type of substitution is allowed for this medication treatment line" 
  * substitutionType 1..1 CD "The type of substitution that is allowed."
  * substitutionTypeReason 0..1 CD "Coded reason for the substitution requirement"
  * substitutionTypeReasonText 0..1 ST "Textual reason for the substitution requirement"
* comment 0..* ST "Additional information or comments"


// Legal authenticator?

//* reimbursementRate 0..1 PQ "Reimbursement/discount rate for the patient at the time of prescribing"
// related to chronic disease
// specific follow-up
// treatment start and end? It is in dosaging I think
// authoring information like in meow treatment line?

