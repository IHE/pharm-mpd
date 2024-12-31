Instance: 10-dispense-1
InstanceOf: IHEMedicationDispensation
Usage: #example
Description: "Medication dispense fulfilling the first part of the order: 1 package containing 10 vials"

* status = #completed
* medication.reference = Reference(01C-Cefuroxime1500Branded)
* medication.reference.display = "Cefuroxime MIP 1500 mg, powder for solution for injection/infusion. N10."
* subject = Reference(patient1)
* performer[0].actor = Reference(pharmacist1)
* authorizingPrescription[0] = Reference(10-prescription-cefuroxime-singleline)
* quantity = 1 $ucum#1 // 1 pack containing 10 vials
* daysSupply = 3 $ucum#d "day(s)"
* whenHandedOver = "2024-12-06T19:54:00Z"

Instance: 10-dispense-2
InstanceOf: IHEMedicationDispensation
Usage: #example
Description: "Medication dispense fulfilling the second part of the order: 3 packages containing 5 vials each"

* status = #completed
* medication.reference = Reference(01D-Cefuroxime750Branded)
* medication.reference.display = "Cefuroxime MIP 750 mg, powder for solution for injection. N5."
* subject = Reference(patient1)
* performer[0].actor = Reference(pharmacist1)
* authorizingPrescription[0] = Reference(10-prescription-cefuroxime-singleline)
* quantity = 3 $ucum#1 // 3 packs containing 5 vials each
* daysSupply = 4 $ucum#d "day(s)"
* whenHandedOver = "2024-12-09T10:55:00Z"