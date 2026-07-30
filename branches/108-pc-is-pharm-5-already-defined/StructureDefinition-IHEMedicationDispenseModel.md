# Medication dispense (model) - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication dispense (model)**

## Logical Model: Medication dispense (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispenseModel | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-29 | *Computable Name*:IHEMedicationDispenseModel |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for medication dispense report (based on request or independently) 

**Usages:**

* This Logical Model is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/IHEMedicationDispenseModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHEMedicationDispenseModel.csv), [Excel](StructureDefinition-IHEMedicationDispenseModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHEMedicationDispenseModel",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispenseModel",
  "version" : "1.0.0-comment-3",
  "name" : "IHEMedicationDispenseModel",
  "title" : "Medication dispense (model)",
  "status" : "active",
  "date" : "2026-04-29T13:37:51+00:00",
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
  "description" : "Logical model for medication dispense report (based on request or independently)",
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
  "type" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispenseModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "IHEMedicationDispenseModel",
      "path" : "IHEMedicationDispenseModel",
      "short" : "Medication dispense (model)",
      "definition" : "Logical model for medication dispense report (based on request or independently)"
    },
    {
      "id" : "IHEMedicationDispenseModel.identifier",
      "path" : "IHEMedicationDispenseModel.identifier",
      "short" : "Identifier for the dispense",
      "definition" : "Identifier for the dispense",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.patient",
      "path" : "IHEMedicationDispenseModel.patient",
      "short" : "The person for whom the medication is prescribed/ordered",
      "definition" : "The person for whom the medication is prescribed/ordered",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PatientBasic"]
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.receiver",
      "path" : "IHEMedicationDispenseModel.receiver",
      "short" : "Identification of the person who received the dispensed medication, especially when it was not the patient",
      "definition" : "Identification of the person who received the dispensed medication, especially when it was not the patient",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PatientBasic",
        "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PractitionerBasic",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.dispenser",
      "path" : "IHEMedicationDispenseModel.dispenser",
      "short" : "The person who dispensed the product, and takes the responsibility of the dispensation",
      "definition" : "The person who dispensed the product, and takes the responsibility of the dispensation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PractitionerBasic",
        "http://hl7.org/fhir/StructureDefinition/Organization",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.relatedRequest",
      "path" : "IHEMedicationDispenseModel.relatedRequest",
      "short" : "Prescription/request/order the dispense is related to",
      "definition" : "Prescription/request/order the dispense is related to",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrderModel"]
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.medication",
      "path" : "IHEMedicationDispenseModel.medication",
      "short" : "Exact dispensed product",
      "definition" : "Exact dispensed product",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/MedicinalProductModel"]
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.dispensedQuantity",
      "path" : "IHEMedicationDispenseModel.dispensedQuantity",
      "short" : "Number of dispensed packages if the pack size is known, or number of smaller items/units",
      "definition" : "Number of dispensed packages if the pack size is known, or number of smaller items/units",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.timeOfDispensation",
      "path" : "IHEMedicationDispenseModel.timeOfDispensation",
      "short" : "Date and time of dispensation",
      "definition" : "Date and time of dispensation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.substitution",
      "path" : "IHEMedicationDispenseModel.substitution",
      "short" : "Substitution was made",
      "definition" : "Substitution was made",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.substitution.substitutionOccurred",
      "path" : "IHEMedicationDispenseModel.substitution.substitutionOccurred",
      "short" : "Indicates whether substitution was made by the dispenser",
      "definition" : "Indicates whether substitution was made by the dispenser",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.substitution.type",
      "path" : "IHEMedicationDispenseModel.substitution.type",
      "short" : "Indicates the type of substitution made by the dispenser",
      "definition" : "Indicates the type of substitution made by the dispenser",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.substitution.reason",
      "path" : "IHEMedicationDispenseModel.substitution.reason",
      "short" : "The reason for the substitution by the dispenser or why a required substitution was not made",
      "definition" : "The reason for the substitution by the dispenser or why a required substitution was not made",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.status",
      "path" : "IHEMedicationDispenseModel.status",
      "short" : "Status of the dispensation",
      "definition" : "Status of the dispensation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.statusChanged",
      "path" : "IHEMedicationDispenseModel.statusChanged",
      "short" : "The date/time for the current status of dispensation",
      "definition" : "The date/time for the current status of dispensation, for example when a dispense was marked as declined",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.statusReason",
      "path" : "IHEMedicationDispenseModel.statusReason",
      "short" : "Reason for the current status of dispensation, for example the reason why the dispensation was made invalid",
      "definition" : "Reason for the current status of dispensation, for example the reason why the dispensation was made invalid",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.statusReasonText",
      "path" : "IHEMedicationDispenseModel.statusReasonText",
      "short" : "Textual reason for the current status of dispensation",
      "definition" : "Textual reason for the current status of dispensation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "IHEMedicationDispenseModel.usageInstructions",
      "path" : "IHEMedicationDispenseModel.usageInstructions",
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
      "id" : "IHEMedicationDispenseModel.comment",
      "path" : "IHEMedicationDispenseModel.comment",
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
