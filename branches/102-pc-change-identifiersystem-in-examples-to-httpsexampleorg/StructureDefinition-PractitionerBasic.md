# Practitioner (model) - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Practitioner (model)**

## Logical Model: Practitioner (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PractitionerBasic | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-22 | *Computable Name*:PractitionerBasic |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for practitioner (basic data relevant for this use case) 

**Usages:**

* Refer to this Logical Model: [Medication dispense (model)](StructureDefinition-IHEMedicationDispenseModel.md), [Medication order (model)](StructureDefinition-IHEMedicationOrderModel.md) and [Medication order - multiline (model)](StructureDefinition-IHEMultilineOrder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/PractitionerBasic)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PractitionerBasic.csv), [Excel](StructureDefinition-PractitionerBasic.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PractitionerBasic",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  },
  {
    "url" : "http://hl7.org/fhir/tools/StructureDefinition/logical-target",
    "valueBoolean" : true
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PractitionerBasic",
  "version" : "1.0.0-comment-3",
  "name" : "PractitionerBasic",
  "title" : "Practitioner (model)",
  "status" : "active",
  "date" : "2026-04-22T14:49:45+00:00",
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
  "description" : "Logical model for practitioner (basic data relevant for this use case)",
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
  "type" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PractitionerBasic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PractitionerBasic",
      "path" : "PractitionerBasic",
      "short" : "Practitioner (model)",
      "definition" : "Logical model for practitioner (basic data relevant for this use case)"
    },
    {
      "id" : "PractitionerBasic.identifier",
      "path" : "PractitionerBasic.identifier",
      "short" : "Prescribing/dispensing practitioner's identifier",
      "definition" : "Prescribing/dispensing practitioner's identifier",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PractitionerBasic.name",
      "path" : "PractitionerBasic.name",
      "short" : "Prescribing/dispensing practitioner's name, incl first name, last name, or any other relevant name parts",
      "definition" : "Prescribing/dispensing practitioner's name, incl first name, last name, or any other relevant name parts",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "HumanName"
      }]
    },
    {
      "id" : "PractitionerBasic.specialtyProfession",
      "path" : "PractitionerBasic.specialtyProfession",
      "short" : "Specialty/profession of the prescribing/dispensing practitioner",
      "definition" : "Specialty/profession of the prescribing/dispensing practitioner",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "PractitionerBasic.organisation",
      "path" : "PractitionerBasic.organisation",
      "short" : "Facility/organisation the prescribing/dispensing practitioner represents",
      "definition" : "Facility/organisation the prescribing/dispensing practitioner represents",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "PractitionerBasic.organisation.identifier",
      "path" : "PractitionerBasic.organisation.identifier",
      "short" : "Organisation identifier",
      "definition" : "Organisation identifier",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PractitionerBasic.organisation.facilityName",
      "path" : "PractitionerBasic.organisation.facilityName",
      "short" : "Facility/organisation name",
      "definition" : "Facility/organisation name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PractitionerBasic.organisation.facilityAddress",
      "path" : "PractitionerBasic.organisation.facilityAddress",
      "short" : "Facility/organisation address",
      "definition" : "Facility/organisation address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "PractitionerBasic.contactInformation",
      "path" : "PractitionerBasic.contactInformation",
      "short" : "Contact information for the prescriber/dispenser or the organisation",
      "definition" : "Contact information for the prescriber/dispenser or the organisation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "PractitionerBasic.contactInformation.phone",
      "path" : "PractitionerBasic.contactInformation.phone",
      "short" : "Phone number",
      "definition" : "Phone number",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PractitionerBasic.contactInformation.email",
      "path" : "PractitionerBasic.contactInformation.email",
      "short" : "Email address",
      "definition" : "Email address",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
