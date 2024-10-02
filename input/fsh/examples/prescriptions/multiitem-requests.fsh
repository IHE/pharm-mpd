// How to say "start all three on the same day without specifying the date?"
// How to distinguish if all three need to be dispensed at the same time or administered at the same time or started at the same time?

Instance: 100-3-medication-prescription-request1
InstanceOf: IHEMedicationPrescription
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Thalidomide 50mgx4 once a day before bed for 42 days."

* identifier.value = "100-1/3"
//* identifier.system = "" 
* groupIdentifier.value = "100"
* status = #active
* intent = #order
* authoredOn = "2024-10-03"
* requester = Reference(Doctor1)
* medication.concept = $snomed#376255008 "Thalidomide 50 mg oral capsule"
* subject = Reference(Patient1)
* reason.concept = $snomed#109989006 "Multiple myeloma"
* dosageInstruction[0].doseAndRate.doseQuantity = 4 $snomed#732936001 "Tablet"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
* dosageInstruction[=].timing.repeat.when = $timing#EVE.late "Late Evening"
* dosageInstruction[=].timing.repeat.boundsDuration = 42 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 168 $snomed#732936001 "Tablet"
* dispenseRequest.validityPeriod.start = "2024-10-03"
* dispenseRequest.validityPeriod.end = "2024-12-03"


Instance: 100-3-medication-prescription-request2
InstanceOf: IHEMedicationPrescription
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Melphalan 2mgx4 once a day for 4 days in the beginning of cycle."

* identifier.value = "100-2/3"
//* identifier.system = "" 
* groupIdentifier.value = "100"
* status = #active
* intent = #order
* authoredOn = "2024-10-03"
* requester = Reference(Doctor1)
* medication.concept = $snomed#326766003 "Melphalan 2 mg oral tablet"
* subject = Reference(Patient1)
* reason.concept = $snomed#109989006 "Multiple myeloma"
* dosageInstruction[0].doseAndRate.doseQuantity = 4 $snomed#732936001 "Tablet"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
//* dosageInstruction[=].timing.repeat.when = $timing#EVE.late "Late Evening"
* dosageInstruction[=].timing.repeat.boundsDuration = 4 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 16 $snomed#732936001 "Tablet"
* dispenseRequest.validityPeriod.start = "2024-10-03"
* dispenseRequest.validityPeriod.end = "2024-12-03"


Instance: 100-3-medication-prescription-request3
InstanceOf: IHEMedicationPrescription
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Prednisone 50mgx3 once a day for 4 days in the beginning of cycle."

* identifier.value = "100-3/3"
//* identifier.system = "" 
* groupIdentifier.value = "100"
* status = #active
* intent = #order
* authoredOn = "2024-10-03"
* requester = Reference(Doctor1)
* medication.concept = $snomed#374072009 "Prednisone 50 mg oral tablet"
* subject = Reference(Patient1)
* reason.concept = $snomed#109989006 "Multiple myeloma"
* dosageInstruction[0].doseAndRate.doseQuantity = 3 $snomed#732936001 "Tablet"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
//* dosageInstruction[=].timing.repeat.when = $timing#EVE.late "Late Evening"
* dosageInstruction[=].timing.repeat.boundsDuration = 4 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 12 $snomed#732936001 "Tablet"
* dispenseRequest.validityPeriod.start = "2024-10-03"
* dispenseRequest.validityPeriod.end = "2024-12-03"