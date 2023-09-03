
In some jurisdictions, prescriptions are issud with multiple lines (one medication). In other jurisdictions, a prescription contains only one line.

The IHE MPD profile provides a common model that supports both these cases. This allows different types of implementations to use IHE, and allows for interoperability between these different systems, understanding the data needs and assumptions.

<div>{% include multiline-singleline.svg %}
</div>
<br clear="all"/>

### Multiple lines per prescription

When a prescription is issued with multiple lines, two data objects are used:
* Prescription - containing the attributes of the order (prescriber, patient,...)
* Prescription line - containing the attributes relative to each medication (medication, dosage, ...)

> TO DO: Adding grouping constraints (should be same as line, but left out of scope for now)



### Single line per prescription

When a prescription has one single line, the prescription and the line are the same object.

> TO DO: Adding lines related to an existing line

### Relationship to Dispense and Administration Request
Both the Dispense and Administration Request are related to the prescription line.

### Compatibility

The two approaches are compatible
