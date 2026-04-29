# Organization (model) - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organization (model)**

## Logical Model: Organization (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/OrganizationBasic | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-23 | *Computable Name*:OrganizationBasic |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for an organization (basic data relevant for IHE MPD use cases) 

**Usages:**

* Refer to this Logical Model: [Medication dispense (model)](StructureDefinition-IHEMedicationDispenseModel.md) and [Practitioner role (model)](StructureDefinition-PractitionerRoleBasic.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/OrganizationBasic)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-OrganizationBasic.csv), [Excel](StructureDefinition-OrganizationBasic.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "OrganizationBasic",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/OrganizationBasic",
  "version" : "1.0.0-comment-3",
  "name" : "OrganizationBasic",
  "title" : "Organization (model)",
  "status" : "active",
  "date" : "2026-04-23T13:36:35+00:00",
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
  "description" : "Logical model for an organization (basic data relevant for IHE MPD use cases)",
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
  "type" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/OrganizationBasic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "OrganizationBasic",
      "path" : "OrganizationBasic",
      "short" : "Organization (model)",
      "definition" : "Logical model for an organization (basic data relevant for IHE MPD use cases)"
    },
    {
      "id" : "OrganizationBasic.identifier",
      "path" : "OrganizationBasic.identifier",
      "short" : "Identifiers for an organization",
      "definition" : "Identifiers for an organization",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "OrganizationBasic.type",
      "path" : "OrganizationBasic.type",
      "short" : "Type of organization",
      "definition" : "Type of organization",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "OrganizationBasic.name",
      "path" : "OrganizationBasic.name",
      "short" : "Name used for the organization",
      "definition" : "Name used for the organization",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
