Extension: MedicationClassification
Id:        ihe-ext-medication-classification
Title:     "Medication - Classification"
Description: "Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc.."
// Extension on Medication
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only CodeableConcept  // 0 or more


Extension: MedicationProductName
Id:        ihe-ext-medication-productname
Title:     "Medication - Product Name"
Description: "Name of the medicinal product. This is typically the name of a real product as registered. This element should not contain display names of virtual product concepts."
// Extension on Medication
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only string


Extension: MedicationSizeOfItem
Id:        ihe-ext-medication-sizeofitem
Title:     "Medication - Size of Item"
Description: "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials."
// Extension on Medication
* value[x] only Quantity


Extension: MedicationDevice
Id:        ihe-ext-medication-device
Title:     "Medication - Device"
Description: "Device, typically an administration device, included in the medicinal product."
// Extension on Medication
* extension contains
    device 1..1 and
    quantity 1..1
* extension[device].value[x] only CodeableReference(Device or DeviceDefinition)
* extension[device] ^short = "Coded or referenced device"
* extension[quantity].value[x] only Quantity
* extension[quantity] ^short = "Number of defined devices in te package"


Extension: MedicationRequestTotalAmount
Id:        ihe-ext-medicationrequest-totalamount
Title:     "MedicationRequest - Total Amount"
Description: "Total amount of product being requested."
// Extension on MedicationRequest
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* value[x] only Quantity  // 0 or more


