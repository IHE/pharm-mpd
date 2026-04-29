# Related person (model) - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Related person (model)**

## Logical Model: Related person (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/RelatedPersonBasic | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-23 | *Computable Name*:RelatedPersonBasic |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for a related person with basic data relevant to the IHE MPD use cases. 

**Usages:**

* Refer to this Logical Model: [Medication dispense (model)](StructureDefinition-IHEMedicationDispenseModel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/RelatedPersonBasic)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RelatedPersonBasic.csv), [Excel](StructureDefinition-RelatedPersonBasic.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RelatedPersonBasic",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/RelatedPersonBasic",
  "version" : "1.0.0-comment-3",
  "name" : "RelatedPersonBasic",
  "title" : "Related person (model)",
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
  "description" : "Logical model for a related person with basic data relevant to the IHE MPD use cases.",
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
  "type" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/RelatedPersonBasic",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "RelatedPersonBasic",
      "path" : "RelatedPersonBasic",
      "short" : "Related person (model)",
      "definition" : "Logical model for a related person with basic data relevant to the IHE MPD use cases."
    },
    {
      "id" : "RelatedPersonBasic.identifier",
      "path" : "RelatedPersonBasic.identifier",
      "short" : "Human identifier for this person",
      "definition" : "Human identifier for this person",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "RelatedPersonBasic.patient",
      "path" : "RelatedPersonBasic.patient",
      "short" : "The patient this person is related to",
      "definition" : "The patient this person is related to",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/PatientBasic"]
      }]
    },
    {
      "id" : "RelatedPersonBasic.relationship",
      "path" : "RelatedPersonBasic.relationship",
      "short" : "The relationship of the related person to the patient",
      "definition" : "The relationship of the related person to the patient",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "RelatedPersonBasic.name",
      "path" : "RelatedPersonBasic.name",
      "short" : "A name associated with this person",
      "definition" : "A name associated with this person",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "HumanName"
      }]
    }]
  }
}

```
