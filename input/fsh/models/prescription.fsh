Logical: IHEMedicationOrder
Title: "Medication prescription (model)"
Description: "Logical model for medication prescription (or some other form of order)"
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true

* groupIdentifier 0..1 Identifier "Identifier for the group that this prescription belongs to. This might be the common identifier in use cases where one national prescription contains several medication items, which can be handled as separate orders"

* identifier 1..* Identifier "Business identifier(s) for the prescription"
//1
* prescriber 1..1 Reference(PractitionerBasic or PractitionerRole) "The person who made the prescription, and who takes the responsibility of the treatment" "Question: would we want to add basic Practicioner model?"
//2
* issueDate 1..1 dateTime "Time of issuing (signing) the prescription by health care practicioner"
//3
* patient 1..1 Reference(PatientBasic) "The person for whom the medication is prescribed/ordered" "Question: would we want to add basic Patient model?"
//4
* recorder 0..1 Reference(PractitionerBasic or PractitionerRole) "The recorder of the prescription/draft in the information system"
//8
* recordingDate 0..1 dateTime "Time of authoring the prescription/draft in the information system"
//9
* status 1..1 CodeableConcept "Status of the prescription, this should not be status of treatment"
//10
* statusReason 0..* CodeableConcept "Reason for the current status of prescription, for example the reason why the prescription was made invalid"
//11

* basedOn 0..1 Reference (IHEMedicationOrder) "What this order is based on" "This is a reference to the order that this order is based on. For example, a prescription for a medication may be based on a proposal, and an administration request may be based on a prescription."

* category 0..* CodeableConcept "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc)."
//5
* validFrom 0..1 dateTime "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate"
//6
* validUntil 0..1 dateTime "The validity period end date. The prescription is not dispensable after this date."
//7


* prescriptionIntent 0..1 CodeableConcept "Type of intent of the prescription - prophylaxis, treatment, anesthesia, etc"
//18

* medication 1..1 Reference(MedicinalProductLM) "Prescribed product, branded, generic, virtual, extemporal, etc"
//15

* indication 0..* CodeableConcept "Reason for the prescription (typically diagnosis, prophylaxis, or a procedure)"
//16
* indicationText 0..* string "Reason for the prescription in textual form. This might not be allowed by some implementations."
//17
//17

* treatmentPeriod 0..1 Period "Period over which the medication is to be taken (in case of multiple dosaging schemes, this would be the overall period of all dosages.)"
//19
* quantityPrescribed 0..1 Quantity "Overall quantity of prescribed product (e.g number of packages or number of tablets)."
//20 NEW

* dosageInstructions 0..* Reference(DosagingInformation) "Dosaging and administration instructions"
//21
* preparationInstructions 0..1 string "Additional instructions about preparation or dispense" 
//22

* substitution 0..1 BackboneElement "Whether and which type of substitution is allowed for this medication treatment line"
  * allowed 0..1 boolean "Whether substitution is allowed or not."
  //See issue 47 for removing or relaxing the following element
  * type 0..1 CodeableConcept "The type of substitution that is allowed."
  * reason[x] 0..1 CodeableConcept or string "Reason for the substitution requirement"
//  * substitutionTypeReasonText 0..1 string "Textual reason for the substitution requirement"
* offLabel 0..1 Base "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product." 
  * offLabelUse 1..1 boolean "Indicates off-label use. Must be 'true' when .reason is provided."
  * offLabelUseReason[x] 0..* CodeableConcept or string "Reason or related clarification for off-label use."

* repeatsAllowed 0..1 integer "Number of refills authorized" "How many times the prescription item can be dispensed in addition to the original dispense."

* minimumDispenseInterval 0..1 Duration "Minimum Dispense Interval" "If a prescription allows for repeated dispensations, the interval between dispensations shall be stated here."

* comment 0..* string "Additional information or comments"
//12

//* reimbursementRate 0..1 Quantity "Reimbursement/discount rate for the patient at the time of prescribing"
// related to chronic disease
// specific follow-up
// treatment start and end? It is in dosaging I think
// authoring information like in meow treatment line?

