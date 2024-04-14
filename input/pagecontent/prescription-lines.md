
In some jurisdictions, a prescription has only one line - one prescription, one medication. In other countries, a prescription is a group of medication lines. This is normally legally established, and it is important to support both these cases.

The IHE MPD profile provides a common model that supports both these cases. This allows different types of implementations to use IHE, and allows for interoperability between these different systems, understanding the data needs and assumptions.

The model describes the medication prescription and dispensing processes. It supports the two common scenarios:

1. **Single-line Prescriptions**: Each prescription corresponds to one line.
2. **Multi-line Prescriptions**: A prescription can contain multiple lines.



### Core Entities and Relationships:

- **Medication Product**: Denotes a specific medication product.
  
- **Prescription**: Represents an overall prescription. In single-line prescriptions, this entity is not used.

- **Prescription Line**: Detailed line item within a prescription.

- **Dispense**: The dispensation of a medication, always tied to a Prescription Line.


#### Relationship with Dispense:

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
  {% include multiline.svg %}
</figure>



### Compatibility

The two approaches are made compatible by using the same objects and relationships, and by putting the group as an identifier.

Systems processing prescriptions that uses a different approach can safely process data: 
* A system working with single-line prescriptions can see that the prescription line has a grouping and can optionally retrieve the entire group (prescription)

A Dispensation is always related to an individual Prescription Line.

## Introduction

The IHE specification needs to accommodate both single-line and multi-line prescriptions. This diversity necessitates a unified model that clearly defines how various data elements are handled in each scenario. The purpose of this comparison is to guide system designers and implementers in understanding and modeling these data elements accurately.

## Data Element Comparison in Single-line and Multi-line Prescriptions

The table below provides a comparison of prescription data elements, indicating their presence at the prescription level, line level, or both, and whether their meanings change based on these levels. This comparison is important for defining a common model that effectively addresses the different ways of grouping prescriptions.

| Data Element               | Prescription Level | Line Level | Shared/Unique | Notes |
|----------------------------|--------------------|------------|---------------|-------|
| identifier 1..*            | Y                  | Y          | Unique        |       |
| status 1..1                | Y                  | Y          | Unique        | Lines may have different statuses, necessitating a distinct prescription status. |
| statusReasonCoded 0..1     | Y                  | Y          | Unique        |       |
| statusReasonText 0..1      | Y                  | Y          | Unique        |       |
| issueDate 1..1             | Y                  | Shared     | Shared        |       |
| recordedDate 1..1          | Y                  | Shared     | Shared        |       |
| validFrom 1..1             | Y                  | Shared     | Dependent     | Validity dates might differ across lines. Decision needed on uniformity. |
| validUntil 1..1            | Y                  | Shared     | Dependent     |       |
| patient 0..1               | Y                  | Shared     | Shared        |       |
| recorder 0..1              | Y                  | Shared     | Shared        |       |
| prescriber 0..1            | Y                  | Shared     | Shared        |       |
| indication 0..*            | Conditional        | Y          | Dependent     | Different lines may have unique indications, suggesting a need for separate indication handling. |
| medication 0..1            | N                  | Y          |               |       |
| dosage 0..1                | N                  | Y          |               |       |
| usageInstructions 0..1     | N                  | Y          |               |       |
| preparationInstructions 0..1 | N                | Y          |               |       |
| substitution 0..1          | N                  | Y          | Dependent     |       |
| .noSubstitutionFlag 0..1   | N                  | Y          | Dependent     |       |
| .noSubstitutionReasonCode 0..1 | N              | Y          | Shared        |       |
| .noSubstitutionReasonText 0..1 | N              | Y          | Shared        |       |
| comment 0..1               | Y                  | Y          | Dependent     |       |
| coverage 0..1              | -                  | -          | -             | Coverage is out of scope for the current version. |
| reimbursementRate 0..1     | -                  | -          | -             |       |
| category                   | Y                  | Shared     | Shared        |       |
{:.table-bordered .table-striped .table-light"}


*Notes: "Y" indicates presence, "N" indicates absence, "Shared" means the element at the prescription level applies to all lines, "Unique" indicates different potential values at each level, and "Dependent" denotes elements whose shared or unique nature depends on specific scenarios or requirements.*

## Interpretation and Key Considerations

- **Shared vs. Unique Elements:** It's important to distinguish between data elements that are shared across all lines in a multi-line prescription and those that are unique to each line. This distinction helps in maintaining data consistency and integrity.
- **Context-Dependent Elements:** Some data elements might require a case-by-case analysis to determine if they should be shared or unique (e.g., validity dates, indications).
- **Modeling for Flexibility:** The system should be modeled to flexibly handle both shared and unique elements, accommodating
