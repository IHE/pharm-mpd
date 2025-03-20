Instance: 10-prescription-cefuroxime-singleline
InstanceOf: IHEMedicationOrder
Usage: #example
Description: "A prescription/request with one medication and changing dosaging. Uses 'actionable' tag. Cefuroxime sodium."

* meta.tag = #actionable
* identifier.value = "10-123EP"  // prescription line identifier if exists
* status = #active
* intent = #order
* authoredOn = "2024-12-06"
* requester = Reference(doctor1)
* medication.reference = Reference(01A-Cefuroxime1500GenericExplicit)
* subject = Reference(patient1)
* reason.concept = $snomed#10625071000119104 "Bronchopneumonia caused by bacteria (disorder)"
* dosageInstruction[0]
  * sequence = 1
  * doseAndRate.doseQuantity = 1500 $ucum#mg "milligram(s)"
  * route = $snomed#78421000 "Intramuscular route"
  * timing
    * repeat.frequency = 1
    * repeat.period = 8
    * repeat.periodUnit = $ucum#h "hour(s)"
    * repeat.boundsDuration = 3 $ucum#d "day"
* dosageInstruction[+]
  * sequence = 2
  * doseAndRate.doseRange.low = 750 $ucum#mg "milligram(s)"
  * doseAndRate.doseRange.high = 1500 $ucum#mg "milligram(s)"
  * route = $snomed#78421000 "Intramuscular route"
  * timing
    * repeat.frequency = 1
    * repeat.period = 8
    * repeat.periodUnit = $ucum#h "hour(s)"
    * repeat.boundsDuration = 4 $ucum#d "day"

* dispenseRequest.extension[prescribedQuantity].valueQuantity = 21 $edqm-standardterms#15060000 "Vial"
* dispenseRequest.validityPeriod.start = "2024-12-06"
* dispenseRequest.validityPeriod.end = "2024-12-13"
* substitution.allowedBoolean = true
