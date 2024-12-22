Extension: MedicationClassification
Id:        ihe-ext-medication-classification
Title:     "Medication - Classification"
Description: "Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc.."
// Extension on Medication
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only CodeableConcept 
* valueCodeableConcept from $atcVS (example)


Extension: MedicationProductName
Id:        ihe-ext-medication-productname
Title:     "Medication - Product Name"
Description: "Name of the medicinal product. This is typically the name of a real product as registered. This element should not contain display names of virtual product concepts."
// Extension on Medication
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only string
* valueString 1..1


Extension: MedicationSizeOfItem
Id:        ihe-ext-medication-sizeofitem
Title:     "Medication - Size of Item"
Description: "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials."
Context: Medication

* value[x] only Quantity
* valueQuantity 1..1


Extension: MedicationDevice
Id:        ihe-ext-medication-device
Title:     "Medication - Device"
Description: "Device, typically an administration device, included in the medicinal product."
Context: Medication
* extension contains
    device 1..1 and
    quantity 1..1
* extension[device].value[x] only CodeableReference(Device or DeviceDefinition)
* extension[device] ^short = "Coded or referenced device"
* extension[quantity].value[x] only Quantity
* extension[quantity] ^short = "Number of defined devices in te package"


Extension: MedicationCharacteristic
Id:        ihe-ext-medication-characteristic
Title:     "Medication - Characteristic"
Description: "Any characteristic of the medicinal product prescribed or dispensed (for example, price, textual package description, special program information, etc)"
// Extension on Medication
* extension contains
    type 1..1 and
    value 0..1
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from $medication-characteristic (example)
* extension[type] ^short = "Code specifying the type of characteristic of medication"
* extension[value] ^short = "Descriptive value of the characteristic"


Extension: MedicationUnitOfPresentation
Id:        ihe-ext-medication-unitofpresentation
Title:     "Medication - Unit of presentation"
Description: "Unit of presentation, typically describing the smallest countable package item (e.g tablet, vial, ampoule, etc). Unit of presentation is also often used in describing pack size and the denominator of strength. If the size of presentation unit is relevant, it should be described in sizeOfItem extension."
// Extension on Medication
* ^context[+].type = #element
* ^context[=].expression = "Medication"
* value[x] only CodeableConcept 
* valueCodeableConcept 1..1 
* valueCodeableConcept from $unitOfPresentation (example)


Extension: MedicationStrengthSubstance
Id: ihe-ext-medication-strengthsubstance
Title: "Medication - Strength substance"
Description: "Substance for marking the basis of strength. When the precise active ingredient is a salt, the strength is often provided for the active moiety (basis of strength)."
Context: Medication.ingredient.strength[x]
* value[x] only CodeableConcept
* valueCodeableConcept 1..1


Extension: MedicationStrengthType
Id: ihe-ext-medication-strengthtype
Title: "Medication - Strength type"
Description: "Strength type (e.g. concentration strength, presentation strength)"
Context: Medication.ingredient.strength[x]
* value[x] only CodeableConcept
* valueCodeableConcept 1..1


Extension: MedicationRequestTotalAmount
Id:        ihe-ext-medicationrequest-totalamount
Title:     "MedicationRequest - Total Amount"
Description: "Total amount of product being requested."
// Extension on MedicationRequest
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* value[x] only Quantity


