Logical: PrescribedProductModel
Title: "DRAFT: Medicinal Product in eP/eD"
Description: "DRAFT. eP/eD/PS medicinal product as a implementation-agnostic logical model"

* identifier 0..* Class "Identifier(s) for the product"
//  * phPID 0..* II "PhPID code/identifier"
//  * medicinalProductIdentifier 0..* II "MPID or national, virtual product code?"
//  * packagedProductIdentifier 0..* II "PCID"
  * otherIdentifier 0..* II "national or any"
    * type 1..1 CD "Type of identifier, e.g. PCID, PhPID, MPID, VMP, VMPP, BE-VMPG..."
    * value 1..1 ST "Value of the identifier"
// we can also have explicit identifiers for IDMP levels
* marketingAuthorisationHolder 0..1 ST "MAH name - do we need more?"
* classification 0..* Class "Classification"
  * atc 1..1 CD "ATC code"
  * otherClasses 1..1 CD "ATC code"
* fullName 0..* ST "Name of the product"
* packSize 1..* QT "Overall amount (100ml; 20 tablets; 1 tube & 6 pessaries)"
* doseForm 1..1 CD "Authorised dose form for eD; authorised or pharmaceutical for eP"
* routeOfAdministration 0..* CD "Route of Administration - if we need it on product level"
// I made routeOfAdministration 0..*, because in EDQM/EMA SPOR you normally have the route built into the dose form, and many implementations don't use the route separately. If they do, it's on the posology level, not product.
* constitution 0..* Class "What's in it - straight to ingredients or listing manuf items"
// to continue - levels of constitution vs content
// Rutt: if we continue with the flatter version, I think we should remove ingredients from here, and just go with manufactured item. The only downside to this would be, that if the authorised dose form is the same as the manufactured item dose form, this might have to be repeated.
  * ingredient 0..* Class "Active (/relevant?) ingredients"
    * role 1..1 CD "Active ingredient, excipient,... If we only want active, then not needed"
    * substance 1..1 CD "Substance"
    * strengthInfo 1..* Class "Concentration or presentation strength"
      * strength 1..* RTO "Concentration or presentation strength of the precise active ingredient"
        * referenceStrength 0..* Class "Reference strength; according to the substance+strength type above"
          * referenceSubstance 1..1 CD "Substance for reference strength"
          * strength 1..1 RTO "Reference strength"
* contents 1..* Class "What's in it - straight to ingredients or listing manuf items"
//  * packageItem 0..* class "Manufactured item if the prescription contains more than one type of items"
  * packageItemQuantity 1..1 QT "Quantity of this item in the parent product" "Number of such manufactured items in this product (5 vials)" 
  * item 0..* Class ""
    * manufacturedMedicinalProduct 0..* Class ""
      * unitOfPresentation 0..* CD "Unit of presentation for the manufactured item"
      * doseForm 1..1 CD "Manufactured item dose form"
      * ingredient 0..* Class "See Ingredient above"
      * containedQuantity 0..1 QT "Amount of product in a unitOfPresentation (e.g. 3ml/vial)"
    * device 0..* Class "Administrative device included in the product"
      * device 1..1 CD "Device coded"

// package type
// administrableDoseForm 0..* CD "Administrable dose form. One product can contain several manufactured items that are mixed into one administrable product, or have multiple manufactured items that are administered separately.  
    
