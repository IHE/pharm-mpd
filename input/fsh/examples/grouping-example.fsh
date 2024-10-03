// In an oncology prescription, in a multiline setting, a prescription with 3 lines is created
// Each line has a unique identifier, and a group identifier that links them together, and additionally a RequestOrchestration.

Instance: PrescriptionLine1
InstanceOf: MedicationRequest
* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.com/prescriptionlines"
  * value = "line1"
* groupIdentifier
  * system = "http://example.com/prescriptions"
  * value = "prescr1"
* status = #active
* intent = #option
* medication.concept = #med1



Instance: PrescriptionLine2
InstanceOf: MedicationRequest
* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.com/NamingSystem/prescriptionlines"
  * value = "line2"
* groupIdentifier
  * system = "http://example.com/prescriptions"
  * value = "prescr1"
* status = #active
* intent = #option
* medication.concept = #med1



Instance: PrescriptionLine3
InstanceOf: MedicationRequest
* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.com/prescriptionlines"
  * value = "line3"
* groupIdentifier
  * system = "http://example.com/prescriptions"
  * value = "prescr1"
* status = #active
* intent = #option
* medication.concept = #med1





Instance: RequestOrchestration1
InstanceOf: RequestOrchestration
* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.com/requestorchestration"
  * value = "prescr1"

* groupIdentifier
  * system = "http://example.com/prescriptions"
  * value = "prescr1"

* status = #active
* action[0].resource = Reference(PrescriptionLine1)
* action[+].resource = Reference(PrescriptionLine2)
* action[+].resource = Reference(PrescriptionLine3)
* intent = #order



// Another prescription in a multiline setting with 2 lines.
// Each line has a unique identifier, and a group identifier that links them together.

Instance: PrescriptionLine4
InstanceOf: MedicationRequest
* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.com/prescriptionlines"
  * value = "line4"
* groupIdentifier
  * system = "http://example.com/prescriptions"
  * value = "prescr2"
* status = #active
* intent = #order
* medication.concept = #med1



Instance: PrescriptionLine5
InstanceOf: MedicationRequest
* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.com/prescriptionlines"
  * value = "line5"

* groupIdentifier
  * system = "http://example.com/prescriptions"
  * value = "prescr2"
* status = #active
* intent = #order
* medication.concept = #med1




// In another setting, a single-line prescription is created.
// RequestOrchestration is not needed in this case.
// GroupIdentifier is optional - but let's add it to see if it works

Instance: PrescriptionLine6
InstanceOf: MedicationRequest
* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.com/prescriptionlines"
  * value = "line6"
* groupIdentifier
  * system = "http://example.com/prescriptions"
  * value = "prescr3"
* status = #active
* intent = #order
* medication.concept = #med1






// In another setting, 3 prescriptions are created, each with 1 line.
// RequestOrchestration is not needed in this case.
// GroupIdentifier is not present in this case.

Instance: PrescriptionLine7
InstanceOf: MedicationRequest
* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.com/prescriptionlines"
  * value = "line7"
* status = #active
* intent = #order
* medication.concept = #med1



Instance: PrescriptionLine8
InstanceOf: MedicationRequest
* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.com/prescriptionlines"
  * value = "line8"
* status = #active
* intent = #order
* medication.concept = #med1

Instance: PrescriptionLine9
InstanceOf: MedicationRequest
* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.com/prescriptionlines"
  * value = "line9"
* status = #active
* intent = #order
* medication.concept = #med1

