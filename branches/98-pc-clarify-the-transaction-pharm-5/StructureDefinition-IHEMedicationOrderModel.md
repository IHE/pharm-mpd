# Medication order (model) - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication order (model)**

## Logical Model: Medication order (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrderModel | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-23 | *Computable Name*:IHEMedicationOrderModel |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for medication prescription or other types of medication orders 

**Usages:**

* Refer to this Logical Model: [Medication dispense (model)](StructureDefinition-IHEMedicationDispenseModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/IHEMedicationOrderModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHEMedicationOrderModel.csv), [Excel](StructureDefinition-IHEMedicationOrderModel.xlsx) 

### Notes:

Detailed diagram:



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHEMedicationOrderModel",
  "extension" : [{
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrderModel",
  "version" : "1.0.0-comment-3",
  "name" : "IHEMedicationOrderModel",
  "title" : "Medication order (model)",
  "status" : "active",
  "date" : "2026-04-23T07:28:39+00:00",
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
  "description" : "Logical model for medication prescription or other types of medication orders",
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
  "type" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrderModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "IHEMedicationOrderModel",
      "path" : "IHEMedicationOrderModel",
      "short" : "Medication order (model)",
      "definition" : "Logical model for medication prescription or other types of medication orders"
    },
    {
      "id" : "IHEMedicationOrderModel.groupIdentifier",
      "path" : "IHEMedicationOrderModel.groupIdentifier",
      "short" : "Identifier for the group that this prescription belongs to. This might be the common identifier in use cases where one national prescription contains several medication items, which can be handled as separate orders",
      "definition" : "Identifier for the group that this prescription belongs to. This might be the common identifier in use cases where one national prescription contains several medication items, which can be handled as separate orders",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.identifier",
      "path" : "IHEMedicationOrderModel.identifier",
      "short" : "Business identifier(s) for the prescription",
      "definition" : "Business identifier(s) for the prescription",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.prescriber",
      "path" : "IHEMedicationOrderModel.prescriber",
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
      "id" : "IHEMedicationOrderModel.issueDate",
      "path" : "IHEMedicationOrderModel.issueDate",
      "short" : "Time of issuing (signing) the prescription by health care practicioner",
      "definition" : "Time of issuing (signing) the prescription by health care practicioner",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.patient",
      "path" : "IHEMedicationOrderModel.patient",
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
      "id" : "IHEMedicationOrderModel.recorder",
      "path" : "IHEMedicationOrderModel.recorder",
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
      "id" : "IHEMedicationOrderModel.recordingDate",
      "path" : "IHEMedicationOrderModel.recordingDate",
      "short" : "Time of authoring the prescription/draft in the information system",
      "definition" : "Time of authoring the prescription/draft in the information system",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.status",
      "path" : "IHEMedicationOrderModel.status",
      "short" : "Status of the prescription, this should not be status of treatment",
      "definition" : "Status of the prescription, this should not be status of treatment",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.statusReason",
      "path" : "IHEMedicationOrderModel.statusReason",
      "short" : "Reason for the current status of prescription, for example the reason why the prescription was made invalid",
      "definition" : "Reason for the current status of prescription, for example the reason why the prescription was made invalid",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.basedOn",
      "path" : "IHEMedicationOrderModel.basedOn",
      "short" : "What this order is based on",
      "definition" : "This is a reference to the order that this order is based on. For example, a prescription for a medication may be based on a proposal, and an administration request may be based on a prescription.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"]
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.category",
      "path" : "IHEMedicationOrderModel.category",
      "short" : "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc).",
      "definition" : "Category or categories of prescription. For example type of reimbursement, or type of prescription (e.g. hospital, private, etc).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.validFrom",
      "path" : "IHEMedicationOrderModel.validFrom",
      "short" : "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate",
      "definition" : "Effective date of the prescription. The prescription is not dispensable before this date. In most cases this information repeats issueDate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.validUntil",
      "path" : "IHEMedicationOrderModel.validUntil",
      "short" : "The validity period end date. The prescription is not dispensable after this date.",
      "definition" : "The validity period end date. The prescription is not dispensable after this date.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.prescriptionIntent",
      "path" : "IHEMedicationOrderModel.prescriptionIntent",
      "short" : "Type of intent of the prescription - prophylaxis, treatment, anesthesia, etc",
      "definition" : "Type of intent of the prescription - prophylaxis, treatment, anesthesia, etc",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.medication",
      "path" : "IHEMedicationOrderModel.medication",
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
      "id" : "IHEMedicationOrderModel.indication",
      "path" : "IHEMedicationOrderModel.indication",
      "short" : "Reason for the prescription (typically diagnosis, prophylaxis, or a procedure)",
      "definition" : "Reason for the prescription (typically diagnosis, prophylaxis, or a procedure)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.indicationText",
      "path" : "IHEMedicationOrderModel.indicationText",
      "short" : "Reason for the prescription in textual form. This might not be allowed by some implementations.",
      "definition" : "Reason for the prescription in textual form. This might not be allowed by some implementations.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.indicationReference",
      "path" : "IHEMedicationOrderModel.indicationReference",
      "short" : "Reason for the prescription - as a reference to a problem, result, etc.",
      "definition" : "Reason for the prescription - as a reference to a problem, result, etc.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.treatmentPeriod",
      "path" : "IHEMedicationOrderModel.treatmentPeriod",
      "short" : "Period over which the medication is to be taken (in case of multiple dosaging schemes, this would be the overall period of all dosages.)",
      "definition" : "Period over which the medication is to be taken (in case of multiple dosaging schemes, this would be the overall period of all dosages.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.quantityPrescribed",
      "path" : "IHEMedicationOrderModel.quantityPrescribed",
      "short" : "Overall quantity of prescribed product (e.g number of packages or number of tablets).",
      "definition" : "Overall quantity of prescribed product (e.g number of packages or number of tablets).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.dosageInstructions",
      "path" : "IHEMedicationOrderModel.dosageInstructions",
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
      "id" : "IHEMedicationOrderModel.preparationInstructions",
      "path" : "IHEMedicationOrderModel.preparationInstructions",
      "short" : "Additional instructions about preparation or dispense",
      "definition" : "Additional instructions about preparation or dispense",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.substitution",
      "path" : "IHEMedicationOrderModel.substitution",
      "short" : "Whether and which type of substitution is allowed for this medication treatment line",
      "definition" : "Whether and which type of substitution is allowed for this medication treatment line",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.substitution.allowed[x]",
      "path" : "IHEMedicationOrderModel.substitution.allowed[x]",
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
      "id" : "IHEMedicationOrderModel.substitution.reason[x]",
      "path" : "IHEMedicationOrderModel.substitution.reason[x]",
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
      "id" : "IHEMedicationOrderModel.offLabel",
      "path" : "IHEMedicationOrderModel.offLabel",
      "short" : "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product.",
      "definition" : "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.offLabel.isOffLabelUse",
      "path" : "IHEMedicationOrderModel.offLabel.isOffLabelUse",
      "short" : "Indicates off-label use. Must be 'true' when .reason is provided.",
      "definition" : "Indicates off-label use. Must be 'true' when .reason is provided.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.offLabel.reason[x]",
      "path" : "IHEMedicationOrderModel.offLabel.reason[x]",
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
      "id" : "IHEMedicationOrderModel.repeatsAllowed",
      "path" : "IHEMedicationOrderModel.repeatsAllowed",
      "short" : "Number of refills authorized",
      "definition" : "How many times the prescription item can be dispensed in addition to the original dispense.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.minimumDispenseInterval",
      "path" : "IHEMedicationOrderModel.minimumDispenseInterval",
      "short" : "Minimum Dispense Interval",
      "definition" : "If a prescription allows for repeated dispensations, the interval between dispensations shall be stated here.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Duration"
      }]
    },
    {
      "id" : "IHEMedicationOrderModel.comment",
      "path" : "IHEMedicationOrderModel.comment",
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
