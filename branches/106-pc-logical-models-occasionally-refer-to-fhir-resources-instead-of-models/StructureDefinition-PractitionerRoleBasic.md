# Practitioner role (model) - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Practitioner role (model)**

## Logical Model: Practitioner role (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PractitionerRoleBasic | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-23 | *Computable Name*:PractitionerRoleBasic |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for a practitioner role within an organization (basic data relevant for this use case) 

**Usages:**

* Refer to this Logical Model: [Medication dispense (model)](StructureDefinition-IHEMedicationDispenseModel.md), [Medication order (model)](StructureDefinition-IHEMedicationOrderModel.md) and [Medication order - multiline (model)](StructureDefinition-IHEMultilineOrder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/PractitionerRoleBasic)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PractitionerRoleBasic.csv), [Excel](StructureDefinition-PractitionerRoleBasic.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PractitionerRoleBasic",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PractitionerRoleBasic",
  "version" : "1.0.0-comment-3",
  "name" : "PractitionerRoleBasic",
  "title" : "Practitioner role (model)",
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
  "description" : "Logical model for a practitioner role within an organization (basic data relevant for this use case)",
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
  "type" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PractitionerRoleBasic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRoleBasic",
      "path" : "PractitionerRoleBasic",
      "short" : "Practitioner role (model)",
      "definition" : "Logical model for a practitioner role within an organization (basic data relevant for this use case)"
    },
    {
      "id" : "PractitionerRoleBasic.identifier",
      "path" : "PractitionerRoleBasic.identifier",
      "short" : "Identifiers for a role",
      "definition" : "Identifiers for a role",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "PractitionerRoleBasic.practitioner",
      "path" : "PractitionerRoleBasic.practitioner",
      "short" : "Practitioner that provide services for the organization",
      "definition" : "Practitioner that provide services for the organization",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PractitionerBasic"]
      }]
    },
    {
      "id" : "PractitionerRoleBasic.organization",
      "path" : "PractitionerRoleBasic.organization",
      "short" : "Organization where the roles are available",
      "definition" : "Organization where the roles are available",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/OrganizationBasic"]
      }]
    },
    {
      "id" : "PractitionerRoleBasic.role",
      "path" : "PractitionerRoleBasic.role",
      "short" : "Roles which this practitioner may perform",
      "definition" : "Roles which this practitioner may perform",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
