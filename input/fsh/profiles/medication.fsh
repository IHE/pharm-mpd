//These extensions and profiles are shared between IHE-MEOW and IHE-MPD profiles

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
* extension[nameType] ^short = "Type of product name (full name, common name, prescription name, etc)"
* extension[language].value[x] only CodeableConcept
* extension[language].valueCodeableConcept from AllLanguages
* extension[language] ^short = "Language code of this name. A code with a combination of country and name can be used."

Extension: SizeOfMedicationItem
Description: "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials."
* value[x] only Quantity
// Extension for pack size or is the combination of SizeOfMedicationItem and totalAmount sufficient?

Profile: MedicinalProduct
Parent: Medication
Title: "Medicinal product"
Description: "Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products."

* extension contains MedicinalProductName named productName 0..* // productName
* extension[productName] ^short = "Name of the medicinal product. Names of different types (full name, short name, etc) and in different languages can be provided if relevant." 

* extension contains Classification named classification 0..* // classification
* extension[classification] ^short = "Classifications of the product, e.g ATC, narcotic/psychotropic, orphan drug, etc"

* extension contains SizeOfMedicationItem named sizeOfItem 0..1 // item.containedQuantity
* extension[sizeOfItem] ^short = "Size of one item (for example, in a pack of 5 vials, this would represent the size of 1 vial)"

* identifier MS 
  * ^short = "Identifier for the medicinal product, its generic representation, or packaged product." //identifier
* code MS 
  * ^short = "A terminology-based code for the product" // productCode
* doseForm MS // doseForm; item.doseForm
  * ^short = "Dose form. For a branded product, this would most likely be authorised dose form, but it could also be administrable dose form. For package items, it could be item's individual dose form." // doseForm
* totalVolume MS // item.amount; packSize
  * ^short = "Total volume or number of package items inside a package. This element should not contain overall prescribed amount, but describe the product itself. In case of complex packages, this element could be left empty, and number of different items could be indicated in the nested Medications." //packSize (almost)
* ingredient MS 
  * ^short = "Ingredient or a part product. For combination packs, each ingredient can be a separate manufactured item with its own ingredients, dose form, and strength" // item
  * item MS
    * ^short = "Substance (Substance resource or concept from terminology) or a medicinal product (Medication resource or concept from terminology). Medicinal product can be an ingredient in case of extemporal medications or combination packs (e.g Creme + 6 tablets)"
  * item only CodeableReference(Substance or MedicinalProduct) // item.ingredient.substance; item
  * isActive MS // item.ingredient.role
  * strength[x] MS // item.ingredient.strengthInfo (does not map exactly)

  //item.unitOfPresentation not profiled
  //device not profiled.