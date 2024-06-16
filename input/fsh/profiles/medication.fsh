//These extensions and profiles are shared between IHE-MEOW and IHE-MPD profiles


Profile: IHEMedication
Parent: Medication
Title: "Medicinal product"
Description: "Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products."


* extension contains MedicationProductName named productName 0..* // productName
* extension[productName] ^short = "Name of the medicinal product. Names of different types (full name, short name, etc) and in different languages can be provided if relevant." 

* extension contains MedicationClassification named classification 0..* // classification
* extension[classification] ^short = "Classifications of the product, e.g ATC, narcotic/psychotropic, orphan drug, etc"

* extension contains MedicationSizeOfItem named sizeOfItem 0..1 // item.containedQuantity
* extension[sizeOfItem] ^short = "Size of one item (for example, in a pack of 5 vials, this would represent the size of 1 vial)"

* extension contains MedicationDevice named device 0..1 // device
* extension[device] ^short = "Device, typically an administration device, included in the product."

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
  * item only CodeableReference(Substance or IHEMedication) // item.ingredient.substance; item
  * isActive MS // item.ingredient.role
  * strength[x] MS // item.ingredient.strengthInfo (does not map exactly)

  //item.unitOfPresentation not profiled
 

