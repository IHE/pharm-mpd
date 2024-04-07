Instance: 01A-Cefuroxime1500GenericExplicit
InstanceOf: MedicinalProduct
Usage: #example
Description: "1A. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by attributes."

* doseForm = $edqm-standardterms#50053000 "Powder for solution for injection or infusion"
* extension[classification].valueCodeableConcept = $who-atc#J01DC02 "cefuroxime"
* ingredient.item.concept = $snomed#372833007 "Cefuroxime"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 1500 $ucum#mg "milligram"
* ingredient.strengthRatio.denominator = 1 $edqm-standardterms#15060000 "Vial"

Instance: 01B-Cefuroxime1500GenericConcept
InstanceOf: MedicinalProduct
Usage: #example
Description: "1B. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by a code system (receiving system is expected to have access to the code system for additional attributes or display names)."

* code = $snomed#1193769004 "Cefuroxime (as cefuroxime sodium) 1.5 g powder for solution for injection vial"

Instance: 01C-Cefuroxime1500Branded
InstanceOf: MedicinalProduct
Usage: #example
Description: "1C. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Branded packaged product, defined by attributes."

* identifier.value = "1529962"
* identifier.system = "https://www.ravimiregister.ee" // not official FHIR identifier URL
* doseForm = $edqm-standardterms#50053000 "Powder for solution for injection or infusion"
* extension[classification].valueCodeableConcept = $who-atc#J01DC02 "cefuroxime"
* extension[productName].extension[name].valueString = "Cefuroxime MIP 1500 mg, süste-/infusioonilahuse pulber"
* extension[productName].extension[language].valueCodeableConcept = $bcp47#et-EE "Estonian (Estonia)"
* totalVolume = 10 $edqm-standardterms#15060000 "Vial"
* ingredient.item.concept = $snomed#372833007 "Cefuroxime"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 1500 $ucum#mg "milligram"
* ingredient.strengthRatio.denominator = 1 $edqm-standardterms#15060000 "Vial"
* marketingAuthorizationHolder.display = "MIP Pharma GmbH" //We did not profile MAH data, shall we try better?

Instance: 02A-ClotrimazoleCanifugCremolum
InstanceOf: MedicinalProduct
Usage: #example
Description: "2A. Clotrimazole cream 10mg/g and 6 pessaries 100g. Branded packaged product, consisting of different medication items. Defined by attributes."

* identifier.value = "1033692"
* identifier.system = "https://www.ravimiregister.ee" // not official FHIR identifier URL
* doseForm = $edqm-standardterms#14001000 "Cream + pessary"
* extension[classification].valueCodeableConcept = $who-atc#G01AF02 "clotrimazole"
* extension[productName].extension[name].valueString = "Canifug Cremolum"
* extension[productName].extension[language].valueCodeableConcept = $bcp47#et-EE "Estonian (Estonia)"
//* extension[administrableDoseForm].valueCodeableConcept = $edqm-standardterms#10909000 "Pessary"
//* extension[administrableDoseForm].valueCodeableConcept = $edqm-standardterms#10901000 "Vaginal cream"

* ingredient[0].item.reference = Reference(02A1-CanifugCremolumCreamItem)
* ingredient[+].item.reference = Reference(02A2-CanifugCremolumPessaryItem)

Instance: 02A1-CanifugCremolumCreamItem
InstanceOf: MedicinalProduct
Usage: #example
Description: "Clotrimazole cream (10mg/g, 1 tube of 20g) as part of Canifug Cremolum product (ISO IDMP manufactured item)"

* doseForm = $edqm-standardterms#10901000 "Vaginal cream"
* totalVolume = 1 $edqm-standardterms#15058000 "Tube"
* extension[sizeOfItem].valueQuantity = 20 $ucum#g "gram"
* ingredient.item.concept = $snomed#387325003 "Clotrimazole"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 10 $ucum#mg "milligram"
* ingredient.strengthRatio.denominator = 1 $ucum#g "gram"

Instance: 02A2-CanifugCremolumPessaryItem
InstanceOf: MedicinalProduct
Usage: #example
Description: "Clotrimazole pessary (6 pessaries of 100mg) as part of Canifug Cremolum product (ISO IDMP manufactured item)"

* doseForm = $edqm-standardterms#10909000 "Pessary"
* totalVolume = 6 $edqm-standardterms#15039000 "Pessary"
* ingredient.item.concept = $snomed#387325003 "Clotrimazole"
* ingredient.isActive = true
* ingredient.strengthRatio.numerator = 100 $ucum#mg "milligram"
* ingredient.strengthRatio.denominator = 1 $edqm-standardterms#15039000 "Pessary"


Instance: 03B-VitaminBComplexBranded
InstanceOf: MedicinalProduct
Usage: #example
Description: "3B. Milgamma N, B-vitamin complex. Branded packaged product, defined by attributes."

* identifier.value = "1029776"
* identifier.system = "https://www.ravimiregister.ee" // not official FHIR identifier URL
* doseForm = $edqm-standardterms#13047000 "Solution for suspension for injection"
* extension[classification].valueCodeableConcept = $who-atc#A11DB "Vitamin B1 in combination with vitamin B6 and/or vitamin B12"
* extension[productName].extension[name].valueString = "MILGAMMA N"
* extension[productName].extension[language].valueCodeableConcept = $bcp47#et-EE "Estonian (Estonia)"
* extension[sizeOfItem].valueQuantity = 2 $ucum#mL "milliliter"
* totalVolume = 5 $edqm-standardterms#15002000 "Ampoule" // possibility to use UCUM {Vial} or extension for unit of presentation.

* ingredient[0].item.concept = $snomed#259659006 "Thiamine"
* ingredient[=].isActive = true
* ingredient[=].strengthRatio.numerator = 50 $ucum#mg "milligram"
* ingredient[=].strengthRatio.denominator = 1 $ucum#mL "milliliter"

* ingredient[+].item.concept = $snomed#430469009 "Pyridoxine"
* ingredient[=].isActive = true
* ingredient[=].strengthRatio.numerator = 50 $ucum#mg "milligram"
* ingredient[=].strengthRatio.denominator = 1 $ucum#mL "milliliter"

* ingredient[+].item.concept = $snomed#419382002 "Cyanocobalamin"
* ingredient[=].isActive = true
* ingredient[=].strengthRatio.numerator = 0.5 $ucum#mg "milligram"
* ingredient[=].strengthRatio.denominator = 1 $ucum#mL "milliliter"

* ingredient[+].item.concept = $snomed#387480006 "Lidocaine"
* ingredient[=].isActive = true
* ingredient[=].strengthRatio.numerator = 10 $ucum#mg "milligram"
* ingredient[=].strengthRatio.denominator = 1 $ucum#mL "milliliter"
