Logical: MedicationOrderHMW
Title: "Logical Model for medication order from HMW"
Description: "Logical Model for medication order from HMW"

* identifier 0..1 Identifier "The business identifier(s) for the medication Order" "The business identifier(s) for the medication order"
* patient 1..1 Reference(Patient) "The person for which the medication is prescribed." "The person for which the medication is prescribed."
* status 1..1 code "Status of the prescription" "Status of the prescription"
* statusReason 0..* CodeableConcept "Reason for current prescription status" "Reason for current prescription status"
* product[x] 1..1 Reference(Medication) or CodeableConcept "Product prescribed" "Product prescribed"
* encounter 0..1 Reference(Encounter) "Encounter on which the medication was prescribed" "Encounter on which the medication was prescribed"
* requester 0..1 Reference(Practitioner) "Who made the prescription" "Who made the prescription"
* reason 0..* Reference(Condition or Observation) "Reason or indication for ordering or not ordering the product" "Reason or indication for ordering or not ordering the product"
* groupIdentifier 0..1 Identifier "Composite request this is part of" "Composite request this is part of"
* dosageInstruction 0..* Dosage "How the product should be taken/administered" "How the product should be taken/administered"
* note 0..* Annotation "Additional Information about the prescription" "Additional Information about the prescription"
* date 0..1 dateTime "When prescription was initially made" "When prescription was initially made"

Logical: PharmaceuticalAdviceHMW
Title: "Logical Model for Pharmaceutical Advice from HMW"
Description: "Logical Model for Pharmaceutical Advice from HMW"

* identifier 0..1 Identifier "The business identifier(s) for the medication prescription" "The business identifier(s) for the medication prescription"
* patient 1..1 Reference(Patient) "The person for which the medication is prescribed." "The person for which the medication is prescribed."
* status 1..1 code "Status of the prescription" "Status of the prescription"
* statusReason 0..* CodeableConcept "Reason for current prescription status" "Reason for current prescription status"
* product[x] 1..1 Reference(Medication) or CodeableConcept "Product prescribed" "Product prescribed"
* encounter 0..1 Reference(Encounter) "Encounter on which the medication was prescribed" "Encounter on which the medication was prescribed"
* requester 0..1 Reference(Practitioner) "Who made the prescription" "Who made the prescription"
* reason 0..* Reference(Condition or Observation) "Reason or indication for ordering or not ordering the product" "Reason or indication for ordering or not ordering the product"
* dosageInstruction 0..* Dosage "How the product should be taken/administered" "How the product should be taken/administered"
* note 0..* Annotation "Additional Information about the prescription" "Additional Information about the prescription"
* date 0..1 dateTime "When advice was initially made" "When advice was initially made"
* prescription 0..1 Reference(MedicationRequest) "The prescription identification" "The prescription identification"
* Observation
* problems
* summaryOf
* physicianPharmacistDiscussion
* Decision
* pharmacist
* pharmacy
* substitutionStatus

Logical: MedicationDispenseHMW
Title: "Logical Model for dispense from HMW"
Description: "Logical Model for dispense from HMW"

* identifier 0..1 Identifier "The business identifier(s) for the medication dispense session" "The business identifier(s) for the medication dispense session"
* patient 1..1 Reference(Patient) "The person for which the medication is dispensed." "The person for which the medication is dispensed."
* dispenser 0..* BackboneElement "The dispenser, if known and relevant" "The dispenser, if known and relevant"
* date 1..1 dateTime "The date when the dispense ocurred (or not)" "The date when the dispense ocurred (or not)"
* prescription 0..1 Reference(MedicationRequest) "The information about a prescription related to the dispense" "The information about a prescription related to the dispense"
* status 1..1 code "Status of the dispense" "Status of the dispense"
* statusReason 0..* CodeableConcept "Reason for a dispense status" "Reason for a dispense status"
* product[x] 1..1 Reference(Medication) or CodeableConcept "The product that was dispensed" "The product that was dispensed - coded or not (e.g. for magistral preparations)"
* quantitydispensed 0..1 SimpleQuantity "The amound of product that was dispensed" "The amound of product that was dispensed"
* dosageInstruction 0..1 Dosage "The instructions for using the product" "The instructions for using the product"
* note 0..* Annotation "Additional information about the dispensed product" "Additional information about the dispensed product"


Logical: MedicationAdministrationHMW
Title: "Logical Model for administration from HMW"
Description: "Logical Model for administration from HMW"

* identifier 0..* Identifier "The business identifier(s) for the medication Administration"  "The business identifier(s) for the medication Administration"
* status 1..1 code "Status of the medication administration" "Status of the medication administration"
* statusReason 0..* CodeableConcept "Reason supporting the status of the medication administration" "Reason supporting the status of the medication administration"
* product[x] 1..1 Reference(Medication) or CodeableConcept "What was administered" "What was administered"
* subject 1..1 Reference(Patient) "Who received medication" "Who received medication"
* encounter 0..1 Reference(Encounter) "Encounter administered as part of" "Encounter administered as part of"
* occurence[x] 1..1 dateTime or Period "Start and end time of administration" "Start and end time of administration"
* recorded 0..1 dateTime "When the Medication administration was first captured in the subject's record" "When the Medication administration was first captured in the subject's record"
* performer 0..* BackboneElement "Who performed the medication administration and what they did" "Who performed the medication administration and what they did"
* reason[x] 0..* Reference(Condition or Observation or DiagnosticReport) or CodeableConcept "Information that supports why the medication was administered" "Information that supports why the medication was administered"
* prescription 0..1 Reference(MedicationRequest) "Prescription for which the administration was performed against" "Prescription for which the administration was performed against"
* device 0..* Reference(Device) "Device used to administer" "Device used to administer"
* note 0..* Annotation "Further information about the administration" "Further information about the administration"
* dosage 0..1 Dosage "Details of how medication was administered" "Details of how medication was administered"
* location 0..1 string "Where the administration was performed" "Where the administration was performed"
* reaction
