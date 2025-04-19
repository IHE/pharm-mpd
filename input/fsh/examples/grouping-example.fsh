// In an oncology prescription, in a multiline setting, a prescription with 3 lines is created
// Each line has a unique identifier, and a group identifier that links them together, and additionally a RequestOrchestration.

Instance: PrescriptionLine1
InstanceOf: MedicationRequest
Description: "Prescription Line 1"

* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.org/prescriptionlines"
  * value = "line1"
* groupIdentifier
  * system = "http://example.org/prescriptions"
  * value = "prescr1"
* status = #active
* intent = #option
* medication.concept = http://id.who.int/icd/release/11/mms#XM63K0 



Instance: PrescriptionLine2
InstanceOf: MedicationRequest
Description: "Prescription Line 2"

* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.org/NamingSystem/prescriptionlines"
  * value = "line2"
* groupIdentifier
  * system = "http://example.org/prescriptions"
  * value = "prescr1"
* status = #active
* intent = #option
* medication.concept = http://id.who.int/icd/release/11/mms#XM2L06



Instance: PrescriptionLine3
InstanceOf: MedicationRequest
Description: "Prescription Line 3"
* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.org/prescriptionlines"
  * value = "line3"
* groupIdentifier
  * system = "http://example.org/prescriptions"
  * value = "prescr1"
* status = #active
* intent = #option
* medication.concept = http://id.who.int/icd/release/11/mms#med1





// Instance: RequestOrchestration1
// InstanceOf: RequestOrchestration
// * subject.identifier.value = "patient1"
// * identifier
//   * system = "http://example.org/requestorchestration"
//   * value = "prescr1"

// * groupIdentifier
//   * system = "http://example.org/prescriptions"
//   * value = "prescr1"

// * status = #active
// * action[0]
//   * id = "1"
//   * resource = Reference(PrescriptionLine1)
//   * relatedAction[0]
//     * targetId = "2"
//     * relationship = #concurrent-with-start
//   * relatedAction[+]
//     * targetId = "3"
//     * relationship = #concurrent-with-start
// * action[+] 
//   * id = "2"
//   * resource = Reference(PrescriptionLine2)
//   * relatedAction[0]
//     * targetId = "1"
//     * relationship = #concurrent-with-start
//   * relatedAction[+]
//     * targetId = "3"
//     * relationship = #concurrent-with-start
// * action[+]
//   * id = "3"
//   * resource = Reference(PrescriptionLine3)
//   * relatedAction[0]
//     * targetId = "1"
//     * relationship = #concurrent-with-start
//   * relatedAction[+]
//     * targetId = "2"
//     * relationship = #concurrent-with-start

// * intent = #order



// Another prescription in a multiline setting with 2 lines.
// Each line has a unique identifier, and a group identifier that links them together.

Instance: PrescriptionLine4
InstanceOf: MedicationRequest
Description: "Prescription Line 4"

* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.org/prescriptionlines"
  * value = "line4"
* groupIdentifier
  * system = "http://example.org/prescriptions"
  * value = "prescr2"
* status = #active
* intent = #order
* medication.concept = http://id.who.int/icd/release/11/mms#med1



Instance: PrescriptionLine5
InstanceOf: MedicationRequest
Description: "Prescription Line 5"

* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.org/prescriptionlines"
  * value = "line5"

* groupIdentifier
  * system = "http://example.org/prescriptions"
  * value = "prescr2"
* status = #active
* intent = #order
* medication.concept = http://id.who.int/icd/release/11/mms#med1




// In another setting, a single-line prescription is created.
// RequestOrchestration is not needed in this case.
// GroupIdentifier is optional - but let's add it to see if it works

Instance: PrescriptionLine6
InstanceOf: MedicationRequest
Description: "Prescription Line 6"

* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.org/prescriptionlines"
  * value = "line6"
* groupIdentifier
  * system = "http://example.org/prescriptions"
  * value = "prescr3"
* status = #active
* intent = #order
* medication.concept = http://id.who.int/icd/release/11/mms#med1






// In another setting, 3 prescriptions are created, each with 1 line.
// RequestOrchestration is not needed in this case.
// GroupIdentifier is not present in this case.

Instance: PrescriptionLine7
InstanceOf: MedicationRequest
Description: "Prescription Line 7"

* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.org/prescriptionlines"
  * value = "line7"
* status = #active
* intent = #order
* medication.concept = http://id.who.int/icd/release/11/mms#med1



Instance: PrescriptionLine8
InstanceOf: MedicationRequest
Description: "Prescription Line 8"

* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.org/prescriptionlines"
  * value = "line8"
* status = #active
* intent = #order
* medication.concept = http://id.who.int/icd/release/11/mms#med1

Instance: PrescriptionLine9
InstanceOf: MedicationRequest
Description: "Prescription Line 9"

* subject.identifier.value = "patient1"
* identifier
  * system = "http://example.org/prescriptionlines"
  * value = "line9"
* status = #active
* intent = #order
* medication.concept = http://id.who.int/icd/release/11/mms#med1

