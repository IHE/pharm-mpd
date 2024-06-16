Logical: MedicinalProductLM
Title: "Medicinal product (model)"
Description: "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile."
Characteristics: #can-be-target
* ^status = #active

* identifier 0..* Class "The identifier(s) of the product, independently of the level of product. If several identifiers are specified, they shall not have conflicting meanings." 
  * medicinalProductIdentifier 0..* II "Identifier at the product level - can be MPID or national identifier" 
  * packagedProductIdentifier 0..* II "Identifier at the package level - can be PCID or national"
  * pharmaceuticalProductIdentifier 0..* II "Identifier at the virtual or administrable product level - can be PhPID or national virtual/administrable product code"
* productCode 0..1 CD "Code for the product that is actually being specified, in established terminologies" // To do: challenge this with examples. Do  we want one code or more? 
* classification 0..* CD "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)"
* packSize 0..* PQ "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)"
* productName 0..* Class "Name of the product (full name, invented name, other)"
  * name 1..1 ST "Name of type and language that is relevant for the users"
  * language 0..1 CD "Language of the name"
  * type 0..1 CD "Type of the name (full name, common name, etc)"
* doseForm 0..1 CD "Dose form(s) on a product level. Dose form for a single package item is defined below."

* item 0..* Class "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined"
  * doseForm 0..1 CD "Dose form"
  * ingredient 1..* Class "Ingredients"
    * role 0..1 CD "Role (active ingredient, excipient). Typically excipients are not needed, so by default active ingredients are expected."
    * substance 1..1 CD "Substance"
    * strengthInfo 0..* Class "Concentration or presentation strength"
      * strength 1..1 RTO "Concentration or presentation strength of the precise active ingredient"
      * strengthType 0..1 CD "Type of strength that is expressed"
      * strengthSubstance 0..1 CD "Substance that the strength refers to, if different from the main substance"
  * unitOfPresentation 0..1 CD "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package."
  * containedQuantity 0..1 PQ "Manufactured item quantity for liquids (3ml/vial)"
  * amount 0..1 PQ "Number of such manufactured items in this product (5 vials)"
* device 0..* Class "Administration device included in the product"
  * deviceQuantity 1..1 PQ "Number of such devices"
  * device 1..1 CD "Device coded"

