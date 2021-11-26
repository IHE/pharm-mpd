Logical: MedicationOrderHMW
Title: "[HMW] Logical Model for medication order"
Description: "[HMW] Logical Model for medication order"

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
Title: "[HMW] Logical Model for Pharmaceutical Advice"
Description: "[HMW] Logical Model for Pharmaceutical Advice"

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
* Observation 0..1 string "" ""
* problems 0..1 string "" ""
* summaryOf 0..1 string "" ""
* physicianPharmacistDiscussion 0..1 string "" ""
* Decision 0..1 string "" ""
* pharmacist 0..1 string "" ""
* pharmacy 0..1 string "" ""
* substitutionStatus 0..1 string "" ""

Logical: MedicationDispenseHMW
Title: "[HMW] Logical Model for dispense"
Description: "[HMW] Logical Model for dispense"

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
Title: "[HMW] Logical Model for administration"
Description: "[HMW] Logical Model for administration"

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
* reaction 0..1 string "" ""


Logical: MedicationOrderIHEPWP
Title: "[IHE PHARM White Paper] Logical Model for order"
Description: "A prescription is issued by one ordering healthcare professional for one patient, in the context of zero or one encounter (between the patient and the ordering physician and/or the healthcare institution)."

* identifier 0..1 Identifier "The business identifier(s) for the medication Order" "The business identifier(s) for the medication order"
* date 0..1 dateTime "When prescription was initially made" "When prescription was initially made"
* patient 1..1 Reference(Patient) "The person for which the medication is prescribed." "The person for which the medication is prescribed."
* reason 0..* Reference(Condition or Observation) "Reason for prescribing (e.g. diagnosis, prognosis, protocol, clinical assessment …)(may or may not be explicitly stated)" "Reason for prescribing (e.g. diagnosis, prognosis, protocol, clinical assessment …)(may or may not be explicitly stated)"
* note 0..* Annotation "Additional Information about the prescription" "Additional Information about the prescription"
* requester 0..1 Reference(Practitioner) "Who made the prescription" "Who made the prescription"
* status 1..1 code "Status of the prescription ORDERED|PLACED|IN PROGRESS|COMPLETED|CANCELLED|DISCONTINUED|SUSPENDED" "Status of the prescription ORDERED|PLACED|IN PROGRESS|COMPLETED|CANCELLED|DISCONTINUED|SUSPENDED"
* prescriptionItem 0..* BackboneElement "A prescription item belongs to one prescription and represents one prescribed medication. It may  be associated with one or more observations. Prescription Item is the atomic entity for logistics, distribution and billing." "A prescription item belongs to one prescription and represents one prescribed medication. It may  be associated with one or more observations. Prescription Item is the atomic entity for logistics, distribution and billing."
  * prescriptionItemID 1..1 Identifier " Prescription Item ID " " Prescription Item ID "
  * treatmentDate 0..1 Duration "Beginning date of treatment / length of treatment / End of treatment date ( the date the treatment is due to end) and/or number of renewals " "Beginning date of treatment / length of treatment / End of treatment date ( the date the treatment is due to end) and/or number of renewals"
  * reasonForPrescribing 0..1 string "Reason for prescribing (e.g. diagnosis, prognosis, protocol, clinical assessment …)" "Reason for prescribing (e.g. diagnosis, prognosis, protocol, clinical assessment …)"
  * Frequency 0..1 string "" ""
  * substitutionAllowed 0..1 string "Substitution allowed or not (can the pharmacist do a substitution of medication?)" "Substitution allowed or not (can the pharmacist do a substitution of medication?)"
  * route 0..1 string "Route of administration" "Route of administration"
  * Dosage 0..1 string "" ""
  * intakePattern 0..1 string "Intake pattern for the medication" "Intake pattern for the medication"
  * medicalInstructions 0..1 string "Diagnosis or reason for prescribing is this similar the 3rd bullet point?" "Diagnosis or reason for prescribing is this similar the 3rd bullet point?"
  * alertAboutRestrictions 0..1 string "Alert about prescribing restrictions" ""
  * relatedtoChronic 0..1 string "Related to a chronic disease or not (listed or unlisted)" ""
  * specificFollowUp 0..1 string "Specific follow-up elements" ""
  * additionalComment 0..1 string "Additional comment (may be used by the prescriber to inform the pharmacist that he is aware of a potential ICA)" ""
  * status 0..1 string "Status (see the “Relevant Standards” chapter)" ""



Logical: PharmaceuticalAdviceIHEPWP
Title: "[IHE PHARM White Paper] Logical Model for pharmaceutical advice"
Description: "Pharmaceutical advice relates to one or more prescription items of one prescription. It is issued by one pharmacist. It may be associated with one or more observations."

* pharmaceuticalAdviceID 0..1 Identifier "Pharmaceutical advice ID" "Pharmaceutical advice ID"
* date 0..1 dateTime "Date/Time of advice" "Date/Time of advice"
* patient 1..1 Reference(Patient) "The person for which the medication is prescribed." "The person for which the medication is prescribed."
* problems 0..* string "A problem can be a supply problem (suspended medication, out-of-stock...) or a medical issue (redundancy, interaction, contra-indication, overdose, adverse effect...)"
* summary 0..1 string "Summary of physician/pharmacist discussion (by phone, mail, messages…)" ""
* status 0..1 string "OPEN|CLOSED" ""
* decision 0..1 string "Decision (i.e. dispense without change | dispense with changes | refusal to dispense until further discussion with prescriber | definite cancellation of the prescription item)" ""
* datetimeDecision 0..1 dateTime "Date/Time of decision" ""
* pharmacist 0..1 string "pharmacist" "pharmacist"

Logical: MedicationDispenseIHEPWP
Title: "[IHE PHARM White Paper] Logical Model for medication dispense"
Description: "A medication dispense relates to zero or one prescription item of one prescription. There are cases when a medication is dispensed before the prescription is created. Medications dispensed outside the context of any prescription are considered as self-prescribed by the professional who dispenses. Thus they are still attached to a pseudo-prescription. A medication dispense is issued by one pharmacy staff. It is related to zero (community use case) or one (hospital use case) encounter of care."

* dispenseID 0..1 Identifier "Pharmaceutical advice ID" "Pharmaceutical advice ID"
* refillnumber 0..1 string "refill number"
* date 0..1 dateTime "Date/Time of dispense" "Date/Time of dispense"
* location 0..1 string " " ""
* patient 1..1 Reference(Patient) "The person for which the medication is prescribed." "The person for which the medication is prescribed."
* expectedQuantity 0..1 integer "Expected quantity (number of packs/number of units)" ""
* quantityDelivered 0..1 integer "Quantity delivered (number of packs/number of units)" ""
* dispensingperiod 0..1 Period "Dispensing period (period for which the medication is dispensed)"
* dispensingPresentation 0..1 string "Dispensing presentation: blister, box, single dose unit"
* deliveryMode 0..1 string "Delivery mode : bulk, nominative (per patient)" " Delivery mode : bulk, nominative (per patient)"
* batchNumber 0..1 string "" ""
* expirationDate 0..1 string "" ""
* pharmaceuticalInstructions 0..1 string "" ""
* pricepaidbypatient 0..1 string "" ""
* pharmacist 0..1 string "" ""
* dosageInstruction


Logical: MedicationDispenseIHEMM
Title: "[IHE MM] Logical Model for medication dispense"
Description: "A medication dispense relates to zero or one prescription item of one prescription. There are cases when a medication is dispensed before the prescription is created. Medications dispensed outside the context of any prescription are considered as self-prescribed by the professional who dispenses. Thus they are still attached to a pseudo-prescription. A medication dispense is issued by one pharmacy staff. It is related to zero (community use case) or one (hospital use case) encounter of care."

* identifier 0..1 string "" ""
* status 0..1 string "" ""
* statusReason 0..1 string "" ""
* category 0..1 string "" ""
* medication 0..1 string "" ""
* subject 0..1 string "" ""
* context 0..1 string "" ""
* supportingInformation 0..1 string "" ""
* type 0..1 string "" ""
* quantity 0..1 string "" ""
* note 0..1 string "" ""
* prescription 0..1 string "" ""
* steps 0..* BackboneElement "" ""
  * step_name 0..1 string "" ""
  * datetime 0..1 string "" ""
  * actor 0..1 string "" ""
* substitution 0..1 string "" ""
* receiver 0..1 string "" ""
* destination 0..1 string "" ""
* detectedIssues 0..1 string "" ""
* eventHistory 0..1 string "" ""


Logical: PharmaceuticalAdviceIHEMM
Title: "[IHE MM] Logical Model for pharmaceutical advice"
Description: "Pharmaceutical advice relates to one or more prescription items of one prescription. It is issued by one pharmacist. It may be associated with one or more observations."

Logical: MedicationOrderIHEMM
Title: "[IHE MM] Logical Model for order"
Description: "A prescription is issued by one ordering healthcare professional for one patient, in the context of zero or one encounter (between the patient and the ordering physician and/or the healthcare institution)."

Logical: MedicationAdministrationIHEMM
Title: "[IHE MM] Logical Model for administration"
Description: "[HMW] Logical Model for administration"
