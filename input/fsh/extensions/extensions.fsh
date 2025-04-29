Extension: OffLabel
Id:        ihe-ext-offLabel
Title:     "Off-label use"
Description: "Indicates that the prescriber has intentionally prescribed the medication in a manner not covered by the product authorization — such as for a different indication, age group, dosage, or route of administration."
Context: MedicationRequest, MedicationStatement

* extension contains
    isOffLabelUse 1..1 and
    reason 0..*
* extension[isOffLabelUse].value[x] only boolean
* extension[isOffLabelUse] ^short = "Indicates off-label use. Must be 'true' when .reason is provided."
* extension[reason].value[x] only CodeableConcept
* extension[reason] ^short = "Reason or related clarification for off-label use."

//Add proper invariant for offLabelUse?

Extension: MedicationClassification
Id:        ihe-ext-medication-classification
Title:     "Medication - Classification"
Description: "Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc.."
Context: Medication

* value[x] only CodeableConcept 
* valueCodeableConcept from $atcVS (example)


Extension: MedicationProductName
Id:        ihe-ext-medication-productname
Title:     "Medication - Product Name"
Description: "Name of the medicinal product. This is typically the name of a real product as registered. This element should not contain display names of virtual product concepts."
Context: Medication

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
// * extension[device].value[x] only CodeableReference(Device or DeviceDefinition)
// temporary fix
* extension[device].value[x] only CodeableConcept
// --------------------
* extension[device] ^short = "Coded or referenced device"
* extension[quantity].value[x] only Quantity
* extension[quantity] ^short = "Number of defined devices in te package"


Extension: MedicationCharacteristic
Id:        ihe-ext-medication-characteristic
Title:     "Medication - Characteristic"
Description: "Any characteristic of the medicinal product prescribed or dispensed (for example, price, textual package description, special program information, etc)"
Context: Medication

// Extension on Medication
* extension contains
    type 1..1 and
    value 0..1
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept from $medication-characteristic (example)
* extension[type] ^short = "Code specifying the type of characteristic of medication"
* extension[value] ^short = "Descriptive value of the characteristic"
* extension[value].value[x] only boolean or CodeableConcept or string or Quantity or dateTime or integer or decimal or Ratio
// the list of allowed types is from EHDS logical models. Might consider adding Attachment, as it is in MedicationKnowledge and MedicationDefinition characteristics.

Extension: MedicationUnitOfPresentation
Id:        ihe-ext-medication-unitofpresentation
Title:     "Medication - Unit of presentation"
Description: "Unit of presentation, typically describing the smallest countable package item (e.g tablet, vial, ampoule, etc). Unit of presentation is also often used in describing pack size and the denominator of strength. If the size of presentation unit is relevant, it should be described in sizeOfItem extension."
Context: Medication

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
* valueCodeableConcept from $substanceSCT (example)


Extension: MedicationStrengthType
Id: ihe-ext-medication-strengthtype
Title: "Medication - Strength type"
Description: "Strength type (e.g. concentration strength, presentation strength)"
Context: Medication.ingredient.strength[x]
* value[x] only CodeableConcept
* valueCodeableConcept 1..1


Extension: MedicationRequestPrescribedQuantity
Id:        ihe-ext-medicationrequest-prescribedQuantity
Title:     "MedicationRequest - Prescribed Quantity"
Description: "Total amount of product being requested. This may refer to number of packages when package size is indicated in Medication resource."
Context: MedicationRequest.dispenseRequest

* value[x] only Quantity





Extension: MedicationIngredientRole
Id:        ihe-ext-medication-ingredient-role
Title:     "Medication - Ingreditne role"
Description: "Medication ingredient role - whether it is an active ingredient, excipient, adjuvant, solvent, flavouring, etc."
Context: Medication

* value[x] only CodeableConcept 
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/ingredient-role (example)
