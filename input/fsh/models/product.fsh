Logical: MedicinalProductLM
Title: "Medicinal product (model)"
Description: "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile."
Characteristics: #can-be-target
* ^status = #active

* identifyingCode[x] 0..* CD or II "Identifier or product code for the product, independently of the level of product. If several identifiers are specified, they shall not have conflicting meanings or very different granularities." 
* classification 0..* CD "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)"
* productName 0..1 ST "Name of the product (full name, invented name, other). When the product has different names, the appropriate one for the context should be used. Translations of names can be provided."
* marketingAuthorisationHolder 0..1 Class "Marketing authorisation holder of manufacturer of the medicinal product. Relevant for identifying the exact product."
  * organizationName 0..1 ST "Name of the organisation holding the authorisation for marketing/mahufacturing"
  * organizationIdentifier 0..* II "Identifier of the organisation and/or its physical location"
* doseForm 0..1 CD "Dose form(s) on a product level. Dose form for a single package item is defined below."
* packSize 0..* PQ "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)"
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
* characteristic 0..* Class "Other features of the product"
  * type 1..1 CD "A code expressing the type of characteristic"
  * value[x] 0..1 BL or CD or ST or PQ or DT or INT or REAL or RTO "Description of the characteristic"
* additionalProductInformation 0..1 Class "Additional information about product - for example, a reference to a product catalogue"
