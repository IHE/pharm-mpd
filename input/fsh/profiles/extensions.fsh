
Extension: MedicationClassification
Id:        ihe-ext-medication-classification
Title:     "Medication Classification"
Description: "Classification."
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only CodeableConcept  // 0 or more


Extension: MedicationPackSize
Id:        ihe-ext-medication-packsize
Title:     "Medication Package Size"
Description: "Package size of a product."
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only unsignedInt  // 0 or more


Extension: MedicationProductName
Id:        ihe-ext-medication-productname
Title:     "Medication Package Size"
Description: "Classification."
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only string  // 0 or more


Extension: MedicationRequestTotalAmount
Id:        ihe-ext-medicationrequest-totalamount
Title:     "MedicationRequest - Total Amount"
Description: "Total amount of product being requested."
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* value[x] only unsignedInt  // 0 or more


