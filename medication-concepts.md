
## Drug Information Elements

A medicinal drug can be in short defined by the following elements:
1. substance(s)
2. strength(s)
3. route(s)
4. Brand
5. Package Size

Even if we may be minimizing the complexity of drug information elements to core elements, this would be the absolute minimum to be able to identify a medicinal product in day-to-day.
We can then have different medication concepts that are built on these core elements. These concepts may have different purposes like grouping, prescription, dispense and so on. They may also vary according to country or jurisdiction.

Standardized information regarding drugs around the world and Europe is not new. However, several ways of implementing drug information are possible. Even though we can almost agree on the basis of the information: strength, ingredient(s) and form, there is almost an infinite way of combining these with other product characteristics to create a new drug representation or grouping or concept. A few examples around Europe are:
- CNPEM in Portugal (strength + ingredient(s) + form + package size)
- VOS Group in Belgium (strength + ingredient(s) + route)
- IDMP's Medicinal Product (strength + ingredient(s) + Brand + form)
- ...
  
These are only three examples, but every country has a similar set of concepts, only differing on the elements used for creating the concept.

<figure>
{% include medication-concepts.svg %}
<figcaption>Examples of medication concepts</figcaption> 

</figure>
<br clear="all"/>

## Drug Clinical lifecycle

Nowadays, the most common way of cataloging product lists is a spreadsheet-like manner (linked to relational database systems in most ehrs). With this, every possible drug combination is registered with its own properties and given a unique code, the relationship between products becomes very difficult to handle. Additionally, the concept used in different steps of the drug cycle can be dependent on context, like country, healthcare setting, drug, legal setting or even patients' or physicians' preferences.

Example: 

1. Prescription
   1. Drugs can prescribed without brand, so something such as "active principle + strength + form". 
      * 500 mg paracetamol tablet -> **which has one code**


    2. By brand also exist (when a single drug exist for an indication, or physician wants to lock to a certain brand, or patient's request, etc).
         * Ben-u-Ron 500 mg paracetamol -> **which can have a different code from above**
    3. Country-dependent concept, which is sometimes 
2. Dispense  
   
Following the prescription path, we can say that a different drug (code-wise) can be dispensed. An actual box of a brand even if it is a "generic brand" like *Drug X from manufacturer Z*  -> **which can have a third code, different from all of the above**
   1. A box can be dispensed (community pharmacy example)
      * A box of 60 tables Ben-U-Ron 500 mg Paracetamol
   2. A couple of pills can be dispensed as well (hospital pharmacy example) 
       * 7 pills of Ben-U-Ron 500 mg Paracetamol

They can be a packaged product or part of it or a single instance of the Medicinal Product.

<figure>
{% include med-concept-drug-cycle.svg %}
<figcaption>Examples of concepts per action.</figcaption> 
</figure>
