//These extensions and profiles are shared with IHE-MPD profile

Extension: Classification
Description: "Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc."
* value[x] only CodeableConcept


Extension: MedicinalProductName
Description: "Name of the medicinal product. Optionally the type of name (Full official name, prescribing name, invented name) and language of the name can be specified. The extension is a simplified approach of what is used in MedicinalProductDefinition resource."
* extension contains
    name 1..1 and
    nameType 0..1 and
    language 0..1
* extension[name].value[x] only string
* extension[name] ^short = "Product name"
* extension[nameType].value[x] only CodeableConcept
* extension[nameType] ^short = "Type of product name"
* extension[language].value[x] only CodeableConcept
* extension[language].valueCodeableConcept from AllLanguages
* extension[language] ^short = "Language code of this name. A code with a combination of country and name can be used."

    