Standardized information regarding drugs around the world and Europe is not new. However, several ways of implementing drug information are possible. Even though we can almost agree on the basis of the information: strength, ingredient(s) and form, there is almost an infinite way of combining these with other product characteristics to create a new drug representation or grouping or concept. A few examples around Europe are:
- CNPEM in Portugal (strength + ingredient(s) + form + package size)
- VOS Group in Belgium (strength + ingredient(s) + route)
- IDMP's Medicinal Product (strength + ingredient(s) + Brand + form)

These are only three examples, but every country has a similar grouping, only differing on the characteristics used for grouping.

<figure>
{% include chemotherapyOrderAdminMMA.svg %}
<figcaption>Examples of grouping of data</figcaption> 

</figure>
<br clear="all"/>


Being that the most common way of cataloging product lists is a spreadsheet-like manner, where every possible drug combination is registered with its own properties and given a unique code, the relationship between products becomes very difficult to handle. Additionally, the concept used in different steps of the drug cycle can be dependent on context, like country, healthcare setting, drug, legal setting or even patients' or physicians' preferences.

Example: With e-prescription, drugs are generally prescribed without brand, so something like active principle + strength + form. Like 
* 500 mg paracetamol tablet -> **which has one code**
But can only be prescribed by brand (when a single drug exist for a indication, or physician wants to lock to a certain brand, or patient's request, etc).
* Ben-u-Ron 500 mg paracetamol -> **which can have a different code from above**

Moreover, following the prescription path, we can say that a different drug (code-wise) can be dispensed. An actual box of a brand (even if "generic brand" like *Drug X from manufacturer Z*)
* A box can be dispensed (community pharmacy example)
* A couple of pills can be dispensed as well (hospital pharmacy example)
  

......