# Device (model) - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device (model)**

## Logical Model: Device (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/DeviceBasic | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-23 | *Computable Name*:DeviceBasic |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for a device (basic data relevant for the IHE MPD use cases) 

**Usages:**

* Refer to this Logical Model: [Medication dispense (model)](StructureDefinition-IHEMedicationDispenseModel.md) and [Medicinal product (model)](StructureDefinition-MedicinalProductModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/DeviceBasic)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DeviceBasic.csv), [Excel](StructureDefinition-DeviceBasic.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DeviceBasic",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/DeviceBasic",
  "version" : "1.0.0-comment-3",
  "name" : "DeviceBasic",
  "title" : "Device (model)",
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
  "description" : "Logical model for a device (basic data relevant for the IHE MPD use cases)",
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
  "type" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/DeviceBasic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "DeviceBasic",
      "path" : "DeviceBasic",
      "short" : "Device (model)",
      "definition" : "Logical model for a device (basic data relevant for the IHE MPD use cases)"
    },
    {
      "id" : "DeviceBasic.identifier",
      "path" : "DeviceBasic.identifier",
      "short" : "Identifiers for a device",
      "definition" : "Identifiers for a device",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "DeviceBasic.name",
      "path" : "DeviceBasic.name",
      "short" : "The name or names of the device as known to the manufacturer and/or patient",
      "definition" : "The name or names of the device as known to the manufacturer and/or patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DeviceBasic.name.value",
      "path" : "DeviceBasic.name.value",
      "short" : "The term that names the device",
      "definition" : "The term that names the device",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DeviceBasic.name.type",
      "path" : "DeviceBasic.name.type",
      "short" : "The type of name",
      "definition" : "The type of name",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    }]
  }
}

```
