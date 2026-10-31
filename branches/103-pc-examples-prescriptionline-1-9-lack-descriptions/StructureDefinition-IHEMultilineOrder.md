# Medication order - multiline (model) - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication order - multiline (model)**

## Logical Model: Medication order - multiline (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMultilineOrder | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-22 | *Computable Name*:IHEMultilineOrder |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for multiline medication prescription 

**Usages:**

* Refer to this Logical Model: [Medication order - multiline (model)](StructureDefinition-IHEMultilineOrder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/IHEMultilineOrder)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHEMultilineOrder.csv), [Excel](StructureDefinition-IHEMultilineOrder.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHEMultilineOrder",
  "extension" : [{
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMultilineOrder",
  "version" : "1.0.0-comment-3",
  "name" : "IHEMultilineOrder",
  "title" : "Medication order - multiline (model)",
  "status" : "active",
  "date" : "2026-04-22T13:12:14+00:00",
  "publisher" : "Integrating the Healthcare Enterprise (IHE)",
  "contact" : [{
    "name" : "Integrating the Healthcare Enterprise (IHE)",
    "telecom" : [{
      "system" : "url",
      "value" : "http://ihe.net"
    },
    {
      "system" : "email",
      "value" : "secretary@ihe.net"
    }]
  },
  {
    "name" : "José Costa Teixeira",
    "telecom" : [{
      "system" : "email",
      "value" : "jose.a.teixeira@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Logical model for multiline medication prescription",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMultilineOrder",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "IHEMultilineOrder",
      "path" : "IHEMultilineOrder",
      "short" : "Medication order - multiline (model)",
      "definition" : "Logical model for multiline medication prescription"
    },
    {
      "id" : "IHEMultilineOrder.identifier",
      "path" : "IHEMultilineOrder.identifier",
      "short" : "Business identifier(s) for the prescription group",
      "definition" : "Business identifier(s) for the prescription group",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "IHEMultilineOrder.patient",
      "path" : "IHEMultilineOrder.patient",
      "short" : "The person for whom the medication is prescribed/ordered",
      "definition" : "Question: would we want to add basic Patient model?",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PatientBasic"]
      }]
    },
    {
      "id" : "IHEMultilineOrder.prescriber",
      "path" : "IHEMultilineOrder.prescriber",
      "short" : "The person who made the prescription, and who takes the responsibility of the treatment",
      "definition" : "Question: would we want to add basic Practicioner model?",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PractitionerBasic",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "IHEMultilineOrder.issueDate",
      "path" : "IHEMultilineOrder.issueDate",
      "short" : "Time of issuing (signing) the prescription by health care practicioner",
      "definition" : "Time of issuing (signing) the prescription by health care practicioner",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "IHEMultilineOrder.recorder",
      "path" : "IHEMultilineOrder.recorder",
      "short" : "The recorder of the prescription/draft in the information system",
      "definition" : "The recorder of the prescription/draft in the information system",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PractitionerBasic",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "IHEMultilineOrder.recordingDate",
      "path" : "IHEMultilineOrder.recordingDate",
      "short" : "Time of authoring the prescription/draft in the information system",
      "definition" : "Time of authoring the prescription/draft in the information system",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "IHEMultilineOrder.validFrom",
      "path" : "IHEMultilineOrder.validFrom",
      "short" : "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate",
      "definition" : "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "IHEMultilineOrder.validUntil",
      "path" : "IHEMultilineOrder.validUntil",
      "short" : "The validity period end date. The prescription is not dispensable after this date.",
      "definition" : "The validity period end date. The prescription is not dispensable after this date.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine",
      "path" : "IHEMultilineOrder.medicationLine",
      "short" : "Medication line in the prescription",
      "definition" : "Medication line in the prescription",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.status",
      "path" : "IHEMultilineOrder.medicationLine.status",
      "short" : "Status of the prescription, this should not be status of treatment",
      "definition" : "Status of the prescription, this should not be status of treatment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.statusReason",
      "path" : "IHEMultilineOrder.medicationLine.statusReason",
      "short" : "Reason for the current status of prescription, for example the reason why the prescription was made invalid",
      "definition" : "Reason for the current status of prescription, for example the reason why the prescription was made invalid",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.category",
      "path" : "IHEMultilineOrder.medicationLine.category",
      "short" : "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc).",
      "definition" : "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.basedOn",
      "path" : "IHEMultilineOrder.medicationLine.basedOn",
      "short" : "What this order is based on",
      "definition" : "This is a reference to the order that this order is based on. For example, a prescription for a medication may be based on a proposal, and an administration request may be based on a prescription.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMultilineOrder"]
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.medication",
      "path" : "IHEMultilineOrder.medicationLine.medication",
      "short" : "Prescribed product, branded, generic, virtual, extemporal, etc",
      "definition" : "Prescribed product, branded, generic, virtual, extemporal, etc",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/MedicinalProductModel"]
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.prescriptionIntent",
      "path" : "IHEMultilineOrder.medicationLine.prescriptionIntent",
      "short" : "Type of intent of the prescription - prophylaxis, treatment, anesthesia, etc",
      "definition" : "Type of intent of the prescription - prophylaxis, treatment, anesthesia, etc",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.indication",
      "path" : "IHEMultilineOrder.medicationLine.indication",
      "short" : "Reason for the prescription (typically diagnosis, prophylaxis, or a procedure)",
      "definition" : "Reason for the prescription (typically diagnosis, prophylaxis, or a procedure)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.indicationText",
      "path" : "IHEMultilineOrder.medicationLine.indicationText",
      "short" : "Reason for the prescription in textual form. This might not be allowed by some implementations.",
      "definition" : "Reason for the prescription in textual form. This might not be allowed by some implementations.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.indicationReference",
      "path" : "IHEMultilineOrder.medicationLine.indicationReference",
      "short" : "Reason for the prescription - as a reference to a problem, result, etc.",
      "definition" : "Reason for the prescription - as a reference to a problem, result, etc.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.treatmentPeriod",
      "path" : "IHEMultilineOrder.medicationLine.treatmentPeriod",
      "short" : "Period over which the medication is to be taken (in case of multiple dosaging schemes, this would be the overall period of all dosages.)",
      "definition" : "Period over which the medication is to be taken (in case of multiple dosaging schemes, this would be the overall period of all dosages.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.quantityPrescribed",
      "path" : "IHEMultilineOrder.medicationLine.quantityPrescribed",
      "short" : "Overall quantity of prescribed product (e.g number of packages or number of tablets).",
      "definition" : "Overall quantity of prescribed product (e.g number of packages or number of tablets).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.dosageInstructions",
      "path" : "IHEMultilineOrder.medicationLine.dosageInstructions",
      "short" : "Dosaging and administration instructions",
      "definition" : "Dosaging and administration instructions",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/DosagingInformation"]
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.preparationInstructions",
      "path" : "IHEMultilineOrder.medicationLine.preparationInstructions",
      "short" : "Additional instructions about preparation or dispense",
      "definition" : "Additional instructions about preparation or dispense",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.substitution",
      "path" : "IHEMultilineOrder.medicationLine.substitution",
      "short" : "Whether and which type of substitution is allowed for this medication treatment line",
      "definition" : "Whether and which type of substitution is allowed for this medication treatment line",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.substitution.allowed[x]",
      "path" : "IHEMultilineOrder.medicationLine.substitution.allowed[x]",
      "short" : "Whether substitution is allowed or not (or type of substitution).",
      "definition" : "Whether substitution is allowed or not (or type of substitution).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      },
      {
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.substitution.reason[x]",
      "path" : "IHEMultilineOrder.medicationLine.substitution.reason[x]",
      "short" : "Reason for the substitution requirement",
      "definition" : "Reason for the substitution requirement",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.offLabel",
      "path" : "IHEMultilineOrder.medicationLine.offLabel",
      "short" : "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product.",
      "definition" : "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.offLabel.isOffLabelUse",
      "path" : "IHEMultilineOrder.medicationLine.offLabel.isOffLabelUse",
      "short" : "Indicates off-label use. Must be 'true' when .reason is provided.",
      "definition" : "Indicates off-label use. Must be 'true' when .reason is provided.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.offLabel.reason[x]",
      "path" : "IHEMultilineOrder.medicationLine.offLabel.reason[x]",
      "short" : "Reason or related clarification for off-label use.",
      "definition" : "Reason or related clarification for off-label use.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.repeatsAllowed",
      "path" : "IHEMultilineOrder.medicationLine.repeatsAllowed",
      "short" : "Number of refills authorized",
      "definition" : "How many times the prescription item can be dispensed in addition to the original dispense.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "IHEMultilineOrder.medicationLine.minimumDispenseInterval",
      "path" : "IHEMultilineOrder.medicationLine.minimumDispenseInterval",
      "short" : "Minimum Dispense Interval",
      "definition" : "If a prescription allows for repeated dispensations, the interval between dispensations shall be stated here.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Duration"
      }]
    },
    {
      "id" : "IHEMultilineOrder.comment",
      "path" : "IHEMultilineOrder.comment",
      "short" : "Additional information or comments",
      "definition" : "Additional information or comments",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
