
In some jurisdictions, prescriptions are issud with multiple lines (one medication). In other jurisdictions, a prescription contains only one line.

The IHE MPD profile provides a common model that supports both these cases. This allows different types of implementations to use IHE, and allows for interoperability between these different systems, understanding the data needs and assumptions.

The model describes the medication prescription and dispensing processes. It supports the two common scenarios:

1. **Single-line Prescriptions**: Each prescription corresponds to one line.
2. **Multi-line Prescriptions**: A prescription can contain multiple lines.

### Core Entities and Relationships:

- **Medication Product**: Denotes a specific medication product.
  
- **Prescription**: Represents an overall prescription. In single-line prescriptions, this entity is not used.

- **Prescription Line**: Detailed line item within a prescription.

- **Dispense**: The dispensation of a medication, always tied to a Prescription Line.

#### Relationships:

- For multi-line prescriptions, a **Prescription** can contain multiple **Prescription Lines**.
- Both **Prescription Line** and **Dispense** refer to **Medication Product**.

### Model Application:

1. **Single-line Prescriptions**: The "Prescription" entity isn't utilized. The "Prescription Line" captures all prescription details.

2. **Multi-line Prescriptions**: "Prescription" serves as a grouping, containing multiple "Prescription Lines".

Dispensation always pertains to individual Prescription Lines.

### Derived Diagrams:

**Scenario a (Single-line Prescriptions)**:
When a prescription has one single line, the prescription and the line are the same object.

<figure>
  {% include single-line.svg %}
</figure>


**Scenario b (Multi-line Prescriptions)**:
When a prescription is issued with multiple lines, two data objects are used:
* Prescription - containing the attributes of the order (prescriber, patient,...)
* Prescription line - containing the attributes relative to each medication (medication, dosage, ...)

<figure>
  {% include single-line.svg %}
</figure>



### Compatibility

The two approaches are made compatible by using the same objects and relationships, and by putting the group as an identifier.

Systems processing prescriptions that uses a different approach can safely process data: 
* A system working with single-line prescriptions can see that the prescription line has a grouping and can optionally retrieve the entire group (prescription)
