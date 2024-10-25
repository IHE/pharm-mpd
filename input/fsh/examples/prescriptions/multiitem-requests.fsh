// EXAMPLE 1: 3 medication requests 
// How to say "start all three on the same day without specifying the date?"
// How to distinguish if all three need to be dispensed at the same time or administered at the same time or started at the same time?


Instance: 100-multiitem-prescription-with-orchestration
InstanceOf: Bundle
Usage: #example
Description: "Multiitem prescription with RequestOrchestration. 42-day cycle treatment consisting of three medications that should start at the same time. Wrapped in a Bundle for better readability."

* type = #collection
* entry[0].fullUrl = "https://example.com/RequestOrchestration/100-RequestOrchestration"
* entry[=].resource = 100-RequestOrchestration

* entry[+].fullUrl = "https://example.com/MedicationRequest/100-3-medication-prescription-request1"
* entry[=].resource = 100-3-medication-prescription-request1

* entry[+].fullUrl = "https://example.com/MedicationRequest/100-3-medication-prescription-request2"
* entry[=].resource = 100-3-medication-prescription-request2

* entry[+].fullUrl = "https://example.com/MedicationRequest/100-3-medication-prescription-request3"
* entry[=].resource = 100-3-medication-prescription-request3

* entry[+].fullUrl = "https://example.com/PractitionerRole/doctor1"
* entry[=].resource = doctor1

* entry[+].fullUrl = "https://example.com/Patient/patient1"
* entry[=].resource = patient1


Instance: 100-RequestOrchestration
InstanceOf: RequestOrchestration
Usage: #example
Description: "RequestOrchestration for the medication to be taken at the same time - in this case start at the same time."

* status = #active
* intent = #order

* subject = Reference(Patient1)
* identifier
  * system = "http://example.com/requestorchestration"
  * value = "prescr1"

* groupIdentifier
  * system = "http://example.com/prescriptions"
  * value = "100"


* action[0]
  * id = "1"
  * resource = Reference(100-3-medication-prescription-request1)
  * relatedAction[0]
    * targetId = "2"
    * relationship = #concurrent-with-start
  * relatedAction[+]
    * targetId = "3"
    * relationship = #concurrent-with-start
* action[+] 
  * id = "2"
  * resource = Reference(100-3-medication-prescription-request2)
  * relatedAction[0]
    * targetId = "1"
    * relationship = #concurrent-with-start
  * relatedAction[+]
    * targetId = "3"
    * relationship = #concurrent-with-start
* action[+]
  * id = "3"
  * resource = Reference(100-3-medication-prescription-request1)
  * relatedAction[0]
    * targetId = "1"
    * relationship = #concurrent-with-start
  * relatedAction[+]
    * targetId = "2"
    * relationship = #concurrent-with-start


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
* requester = Reference(PractitionerRole/doctor1)
* medication.concept = $snomed#376255008 "Thalidomide 50 mg oral capsule"
* subject = Reference(Patient/patient1)
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



// EXAMPLE 2: two medication requests grouped only by groupIdentifier. No orchestration.

Instance: 200-multiitem-prescription-without-orchestration
InstanceOf: Bundle
Usage: #example
Description: "Multiitem prescription where items on the same prescription are not interdependent. Kept together by the same groupIdentifier."

* type = #collection
* entry[0].fullUrl = "https://example.com/MedicationRequest/200-2-medication-prescription-request1"
* entry[=].resource = 200-2-medication-prescription-request1

* entry[0].fullUrl = "https://example.com/MedicationRequest/200-2-medication-prescription-request2"
* entry[=].resource = 200-2-medication-prescription-request2

* entry[+].fullUrl = "https://example.com/PractitionerRole/doctor1"
* entry[=].resource = doctor1

* entry[+].fullUrl = "https://example.com/Patient/patient1"
* entry[=].resource = patient1


Instance: 200-2-medication-prescription-request1
InstanceOf: IHEMedicationPrescription
Usage: #inline
Description: "A prescription item (MedicationRequest) that is a part of a two-item-prescription. "

* identifier.value = "200-1/2"  // prescription line identifier if exists
* groupIdentifier.value = "200" // prescription number
* status = #active
* intent = #order
* authoredOn = "2024-10-06"
* requester = Reference(doctor1)
* medication.concept = $snomed#324821004 "Valacyclovir (as valacyclovir hydrochloride) 500 mg oral tablet"
* subject = Reference(patient1)
* reason.concept = $snomed#407451003 "Herpes simplex type 1 infection"
* dosageInstruction[0].doseAndRate.doseQuantity = 1 $snomed#732936001 "Tablet"
* dosageInstruction[=].timing.repeat.frequency = 2
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
* dosageInstruction[=].timing.repeat.boundsDuration = 5 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 10 $snomed#732936001 "Tablet"
* dispenseRequest.validityPeriod.start = "2024-10-06"
* dispenseRequest.validityPeriod.end = "2024-12-06"

Instance: 200-2-medication-prescription-request2
InstanceOf: IHEMedicationPrescription
Usage: #inline
Description: "A prescription item (MedicationRequest) that is a part of a two-item-prescription. "

* identifier.value = "200-2/2"  // prescription line identifier if exists
* groupIdentifier.value = "200" // prescription number
* status = #active
* intent = #order
* authoredOn = "2024-10-06"
* requester = Reference(doctor1)
* medication.concept = $snomed#374647008 "Amoxicillin 875 mg oral tablet"
* subject = Reference(patient1)
* reason.concept = $snomed#88348008 "Maxillary sinusitis"
* dosageInstruction[0].doseAndRate.doseQuantity = 1 $snomed#732936001 "Tablet"
* dosageInstruction[=].timing.repeat.frequency = 2
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
* dosageInstruction[=].timing.repeat.boundsDuration = 7 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 14 $snomed#732936001 "Tablet"
* dispenseRequest.validityPeriod.start = "2024-10-06"
* dispenseRequest.validityPeriod.end = "2024-12-06"


// EXAMPLE 3: 2 medication requests that can be dispensed as one combi-product



Instance: 300-multiitem-prescription-with-orchestration
InstanceOf: Bundle
Usage: #example
Description: "Multiitem prescription with RequestOrchestration. 2 products dispensable as 1 multiitem product."

* type = #collection
* entry[0].fullUrl = "https://example.com/RequestOrchestration/300-RequestOrchestration"
* entry[=].resource = 300-RequestOrchestration

* entry[+].fullUrl = "https://example.com/MedicationRequest/300-2-medication-prescription-request1"
* entry[=].resource = 300-2-medication-prescription-request1

* entry[+].fullUrl = "https://example.com/MedicationRequest/300-2-medication-prescription-request2"
* entry[=].resource = 300-2-medication-prescription-request2

* entry[+].fullUrl = "https://example.com/PractitionerRole/doctor1"
* entry[=].resource = doctor1

* entry[+].fullUrl = "https://example.com/Patient/patient1"
* entry[=].resource = patient1

* entry[+].fullUrl = "https://example.com/Medication/02A2-CanifugCremolumPessaryItem"
* entry[=].resource = 02A2-CanifugCremolumPessaryItem

* entry[+].fullUrl = "https://example.com/Medication/02A1-CanifugCremolumCreamItem"
* entry[=].resource = 02A1-CanifugCremolumCreamItem

Instance: 300-RequestOrchestration
InstanceOf: RequestOrchestration
Usage: #inline
Description: "A grouper for the lines of a multiitem prescription."

// No identifier, because it's not an actual business object. 
// groupIdentifier is the prescription identifier. All MedicationRequest instances should have the same groupIdentifier value.
* groupIdentifier
  * value = "300"
* subject = Reference(patient1)
* status = #active
* action[0].resource = Reference(300-2-medication-prescription-request1)
* action[+].resource = Reference(300-2-medication-prescription-request2)
* intent = #order


Instance: 300-2-medication-prescription-request1
InstanceOf: IHEMedicationPrescription
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Thalidomide 50mgx4 once a day before bed for 42 days."

* identifier.value = "300-1/2"
* groupIdentifier.value = "300"
* status = #active
* intent = #order
* authoredOn = "2024-10-06"
* requester = Reference(doctor1)
* medication.reference = Reference(02A2-CanifugCremolumPessaryItem)
* subject = Reference(patient1)
* reason.concept = $snomed#72934000 "Candidiasis of vagina"
* dosageInstruction[0].doseAndRate.doseQuantity = 1 $snomed#733007009 "Pessary"
* dosageInstruction[=].timing.repeat.frequency = 1
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
* dosageInstruction[=].timing.repeat.when = $timing#EVE.late "Late Evening"
* dosageInstruction[=].timing.repeat.boundsDuration = 6 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 6 $snomed#733007009 "Pessary"
* dispenseRequest.validityPeriod.start = "2024-10-06"
* dispenseRequest.validityPeriod.end = "2024-12-06"


Instance: 300-2-medication-prescription-request2
InstanceOf: IHEMedicationPrescription
Usage: #example
Description: "A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Melphalan 2mgx4 once a day for 4 days in the beginning of cycle."

* identifier.value = "300-2/2"
* groupIdentifier.value = "300"
* status = #active
* intent = #order
* authoredOn = "2024-10-06"
* requester = Reference(doctor1)
* medication.reference = Reference(02A1-CanifugCremolumCreamItem)
* subject = Reference(patient1)
* reason.concept = $snomed#72934000 "Candidiasis of vagina"
* dosageInstruction[0].doseAndRate.doseQuantity = 1 $snomed#413568008 "Application - unit of product usage"
* dosageInstruction[=].timing.repeat.frequency = 2
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = $ucum#d "day"
* dosageInstruction[=].timing.repeat.boundsDuration = 6 $ucum#d "day"
* dispenseRequest.numberOfRepeatsAllowed = 1
* dispenseRequest.quantity = 20 $ucum#g "gram(s)"
* dispenseRequest.validityPeriod.start = "2024-10-06"
* dispenseRequest.validityPeriod.end = "2024-12-06"







