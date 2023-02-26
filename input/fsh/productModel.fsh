// This attempts to be flatter than other models, but still allow complex packages.
Logical: PrescribedProductModel1
Title: "DRAFT: Flattened Medicinal Product on ePrescription. Focused on an authorised product."
Description: "DRAFT. eP/eD/PS medicinal product as a implementation-agnostic logical model"

* identifier 0..* Class "Identifier(s) for the product"
    * type 1..1 CD "Type of identifier, e.g. PCID, PhPID, MPID, VMP, VMPP, BE-VMPG..."
    * identifier 1..1 II "Identifier"
* marketingAuthorisationHolder 0..1 ST "MAH name - do we need more?"
* classification 0..* Class "Classification"
  * atc 1..1 CD "ATC code"
  * otherClassification 1..1 CD "Any other classification"
* fullName 0..* ST "Name of the product"
* doseForm 0..1 CD "Dose form (authorised/combined dose form for full product)"
* packSize 0..* PQ "Overall amount (100ml; 20 tablets; 1 tube & 6 pessaries)"
* manufacturedItem 1..* Class "Actual product description. Repeated for products that contain multiple different items"
  * itemQuantity 1..1 PQ "Quantity of such items in the package"
  * containedQuantity 0..1 PQ "Amount of product per unit of presentation when applicable (3ml vial)"
  * unitOfPresentation 0..* CD "Unit of presentation for the manufactured item"
  * doseForm 1..1 CD "Manufactured dose form"
  * ingredient 0..* Class "Active/relevant(?) ingredients"
    * role 1..1 CD "ingredient role"
    * substance 1..1 CD "Substance"
    * strengthInfo 1..* Class "Concentration or presentation strength"
      * strength 1..* RTO "Concentration or presentation strength of the precise active ingredient"
      * referenceStrength 0..* Class "Reference strength; according to the substance+strength type above"
        * referenceSubstance 1..1 CD "Substance for reference strength"
        * strength 1..1 RTO "Reference strength"
* device 0..* Class "Administrative device included in the product"
  * device 1..1 CD "Separate device included in the package, not the container of the product"
  * itemQuantity 1..1 PQ "Number of such devices"

// package type
// administrable dose form


Logical: CrossBorderProduct
Title: "DRAFT: Medicinal Product in crossborder eP/eD"
Description: "DRAFT. Crossborder eP/eD/PS medicinal product as a implementation-agnostic logical model"

* medicinalProductIdentifier 0..* II "MPID or national identifier"
* packagedProductIdentifier 0..* II "PCID or national"
* pharmaceuticalProductIdentifier 0..* II "PhPID"
* atc 1..1 CD "ATC code"
* packSize 1..* PQ "Overall amount of product (100ml; 20 tablets; 1 creme & 6 pessaries)"
* fullName 0..* ST "Name of the product"
* doseForm 1..1 CD "Authorised dose form for eD; authorised or pharmaceutical for eP"
* constitution 1..* Class "Content of the product - defines ingredients, manufactured items, or device"
  * ingredient 0..* Class "Ingredients, by default only active ingredients"
    * role 1..1 CD "(might not be needed if only active ingredients are expected)"
    * substance 1..1 CD "Substance"
    * strengthInfo 1..* Class "Concentration or presentation strength"
      * strength 1..1 RTO "Concentration or presentation strength of the precise active ingredient"
      * referenceStrenth 0..* Class "Reference strength; according to the substance+strength type above"
        * referenceSubstance 1..1 CD "Substance for reference strength"
        * strength 1..1 RTO "Reference strength"
  * manufacturedItem 0..* Class "Manufactured item if the prescription contains more than one type of items"
    * doseForm 1..1 CD "Manufactured item dose form"
    * ingredient 0..* Class "See Ingredient above" //TO DO Add content reference
    * unitOfPresentation 0..* CD "Unit of presentation for the manufactured item"
    * containedQuantity 0..1 PQ "Manufactured item quantity for liquids (3ml/vial)"
    * manufacturedItemQuantity 1..1 PQ "Number of such manufactured items in this product (5 vials)"
  * device 0..* Class "Administrative device included in the product"
    * deviceQuantity 1..1 PQ "Number of such devices"
    * device 1..1 CD "Device coded"
* marketingAuthorisationHolder 0..1 ST "MAH name - do we need more?"
* routeOfAdministration 1..* CD "Route of Administration - if we need it on product level"
    
