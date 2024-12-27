/*

This is an example of how a combination pack would be described by using MedicationKnowledge. 
This approach is deprecated from this IG.


Instance: 100-CanifugCremolum-With-MedicationKnowledge
InstanceOf: Medication
Usage: #example
Description: "100. Canifug Cremolum (cream and pessaries in one package), defined using MedicationKnowledge + PackagedProductDefinition"

* identifier.value = "1033692"
* identifier.system = "https://www.ravimiregister.ee" // not official FHIR identifier URL
* doseForm = $edqm-standardterms#14001000 "Cream + pessary"
* definition = Reference(100-CanifugCremolum-MedicationKnowledge)
* contained[0] = 100-CanifugCremolum-MedicationKnowledge
* contained[+] = 100-CanifugCremolum-PackagedProductDefinition
* contained[+] = CanifugCremolum-10mg1g-Cream-EE-MID
* contained[+] = CanifugCremolum-100mg-Pessary-EE-MID
* contained[+] = CanifugCremolum-10mg1g-Cream-EE-I
* contained[+] = CanifugCremolum-100mg-Pessary-EE-I


Instance: 100-CanifugCremolum-MedicationKnowledge
InstanceOf: MedicationKnowledge
Usage: #inline
Description: "Canifug Cremolum - additional information in MedicationKnowledge"

* medicineClassification[0].type.coding.code = #unknown 
* medicineClassification[=].classification[0] = $who-atc#G01AF02 "clotrimazole"
* name[0] = "Canifug Cremolum"
* packaging.packagedProduct = Reference(100-CanifugCremolum-PackagedProductDefinition)

Instance: 100-CanifugCremolum-PackagedProductDefinition
InstanceOf: PackagedProductDefinition
Usage: #inline
Description: "Canifug Cremolum - combipackage description with PackagedProductDefinition"
//* identifier[pcid].value = "EE-100004795-10280-1033692"
//* packageFor = Reference(CanifugCremolum-EE-MPD)
* containedItemQuantity[0] = 6 $edqm-standardterms#15039000 "Pessary"
* containedItemQuantity[+] = 1 $edqm-standardterms#15058000 "Tube"
//* description = "Alu/PE-fooliumist valmistatud ribapakend, mis on asetatud väliskarpi. Kreem on alumiiniumtuubis ja omakorda pappkarbis. Kombineeritud pakend sisaldab: 6 vaginaalsuposiiti ja 20 g kreemi"
//* packaging.type = $100000073346#100000073498 "Box"
//* packaging.quantity = 1
* packaging.containedItem[+].item.reference = Reference(CanifugCremolum-100mg-Pessary-EE-MID)
* packaging.containedItem[=].amount.value = 6
//* packaging.type = $edqm-standardterms#15058000 "Tube"
//* packaging.quantity = 1
* packaging.containedItem[+].item.reference = Reference(CanifugCremolum-10mg1g-Cream-EE-MID)
* packaging.containedItem[=].amount = 20 $ucum#g "gram(s)"


Instance: CanifugCremolum-10mg1g-Cream-EE-MID
InstanceOf: ManufacturedItemDefinition
Usage: #inline
Description: "Manufactured Item: cream in tube"
* status = #active
* manufacturedDoseForm = $edqm-standardterms#10901000 "Vaginal cream"
* unitOfPresentation = $edqm-standardterms#15058000 "Tube"

Instance: CanifugCremolum-100mg-Pessary-EE-MID
InstanceOf: ManufacturedItemDefinition
Usage: #inline
Description: "Manufactured Item: pessary"
* status = #active
* manufacturedDoseForm = $edqm-standardterms#10909000 "Pessary"
* unitOfPresentation = $edqm-standardterms#15039000 "Pessary"

Instance: CanifugCremolum-10mg1g-Cream-EE-I
InstanceOf: Ingredient
Usage: #inline
Description: "Ingredient: clotrimazole, concentration strength"
* status = #active
* for[0] = Reference(CanifugCremolum-10mg1g-Cream-EE-MID)
* role = $ingredient-role#100000072072 "Active"
* substance.code.concept = $sms#100000092074 "CLOTRIMAZOLE"
* substance.strength.concentrationRatio.numerator = 10 $ucum#mg "milligram(s)"
* substance.strength.concentrationRatio.denominator = 1 $ucum#g "gram(s)"

Instance: CanifugCremolum-100mg-Pessary-EE-I
InstanceOf: Ingredient
Usage: #inline
Description: "Ingredient: clotrimazole, presentation strength"
* status = #active
* for[0] = Reference(CanifugCremolum-100mg-Pessary-EE-MID)
* role = $ingredient-role#100000072072 "Active"
* substance.code.concept = $sms#100000092074 "CLOTRIMAZOLE"
* substance.strength.presentationRatio.numerator = 100 $ucum#mg "milligram(s)"
* substance.strength.presentationRatio.denominator = 1 $edqm-standardterms#15039000 "Pessary"
*/