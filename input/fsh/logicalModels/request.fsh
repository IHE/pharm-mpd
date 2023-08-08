Logical: MedicationPrescription
Title: "Medication prescription/request/order - logical model"
Description: "Logical model for medication request (incl prescription, or some other form of order)"

* identifier 0..* II "Business identifier for the prescription" "Question: 0..1 or 0..*? I think crossborder use cases may have several?"
* date 0..1 dateTime "Time of creating the prescription"
* validUntil 0..1 dateTime "The validity period end date"
* patient 1..1 Reference(PatientBasic) "The person for whom the medication is prescribed/ordered" "Question: would we want to add basic Patient model?"
* status 1..1 CD "Status of the prescription"
* statusReason 0..* CD "Reason for the current status of prescription, for example the reason why the prescription was made invalid"
* statusReasonText 0..1 ST "Textual reason for the current status of prescription"
* medication 1..1 Reference(MedicinalProduct) "Prescribed product, branded, generic, virtual, extemporal, etc"
* prescriber 1..1 Reference(PractitionerBasic) "The person who made the prescription, and who takes the responsibility of the treatment" "Question: would we want to add basic Practicioner model?"
* indication 0..* CD "Reason for the prescription (typically diagnosis, or a procedure)" "Question: cardinality 0..1 or 0..*? Should we allow text like in meow treatment line?"
* groupIdentifier 0..1 II "Identifier for the group that this prescription belongs to. This might be the common identifier in use cases where one national prescription contains several medication items, which can be handled as separate orders"
* usageInstructions 1..1 Reference(DosagingInformation) "Dosaging and administration instructions"
* preparationInstructions 0..* string "Additional instructions about preparation or dispense" 
* noSubstitution 0..1 BackboneElement "Substitution is not allowed for a given reason" 
  * noSubstitutionFlag 1..1 boolean "Substitution of the product is not allowed."
  * noSubstitutionReason 0..1 CD "Coded reason for the no-substitution requirement"
  * noSubstitutionReasonText 0..1 ST "Textual reason for the no-substitution requirement"
* comment 0..* ST "Additional information or comments"
* reimbursementRate 0..1 PQ "Reimbursement/discount rate for the patient at the time of prescribing"
// related to chronic disease
// specific follow-up



