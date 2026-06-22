# Patient (model) - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient (model)**

## Logical Model: Patient (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PatientBasic | *Version*:1.0.0-comment-2 |
| Active as of 2026-04-07 | *Computable Name*:PatientBasic |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for patient (basic data relevant for this use case) 

**Usages:**

* Refer to this Logical Model: [Medication dispense (model)](StructureDefinition-IHEMedicationDispenseModel.md), [Medication order (model)](StructureDefinition-IHEMedicationOrderModel.md) and [Medication order - multiline (model)](StructureDefinition-IHEMultilineOrder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/PatientBasic)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PatientBasic.csv), [Excel](StructureDefinition-PatientBasic.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PatientBasic",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PatientBasic",
  "version" : "1.0.0-comment-2",
  "name" : "PatientBasic",
  "title" : "Patient (model)",
  "status" : "active",
  "date" : "2026-04-07T22:35:58+00:00",
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
  "description" : "Logical model for patient (basic data relevant for this use case)",
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
  "type" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PatientBasic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PatientBasic",
      "path" : "PatientBasic",
      "short" : "Patient (model)",
      "definition" : "Logical model for patient (basic data relevant for this use case)"
    },
    {
      "id" : "PatientBasic.identifier",
      "path" : "PatientBasic.identifier",
      "short" : "Patient identifier",
      "definition" : "Patient identifier",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PatientBasic.name",
      "path" : "PatientBasic.name",
      "short" : "Patient's name, incl first name, last name, or any other relevant name parts",
      "definition" : "Patient's name, incl first name, last name, or any other relevant name parts",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "HumanName"
      }]
    },
    {
      "id" : "PatientBasic.gender",
      "path" : "PatientBasic.gender",
      "short" : "Gender",
      "definition" : "Question: eHDSI prescription emphasisis the biological gender, but I think the reality is that most systems would have administrative gender or somekindof gender",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "PatientBasic.dateOfBirth",
      "path" : "PatientBasic.dateOfBirth",
      "short" : "Date of birth",
      "definition" : "eHDSI",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "PatientBasic.insuranceInformation",
      "path" : "PatientBasic.insuranceInformation",
      "short" : "Insurance information",
      "definition" : "Question: shall we go here and how deep?",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    }]
  }
}

```
