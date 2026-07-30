# MedicationRequest - Prescribed Quantity - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedicationRequest - Prescribed Quantity**

## Extension: MedicationRequest - Prescribed Quantity 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medicationrequest-prescribedQuantity | *Version*:1.0.0-comment-2 |
| Active as of 2026-04-07 | *Computable Name*:MedicationRequestPrescribedQuantity |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

Total amount of product being requested. This may refer to number of packages when package size is indicated in Medication resource.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [IHE Medication Order](StructureDefinition-IHEMedicationOrder.md)
* Examples for this Extension: [MedicationRequest/10-prescription-cefuroxime-singleline](MedicationRequest-10-prescription-cefuroxime-singleline.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/ihe-ext-medicationrequest-prescribedQuantity)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-medicationrequest-prescribedQuantity.csv), [Excel](StructureDefinition-ihe-ext-medicationrequest-prescribedQuantity.xlsx), [Schematron](StructureDefinition-ihe-ext-medicationrequest-prescribedQuantity.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-medicationrequest-prescribedQuantity",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medicationrequest-prescribedQuantity",
  "version" : "1.0.0-comment-2",
  "name" : "MedicationRequestPrescribedQuantity",
  "title" : "MedicationRequest - Prescribed Quantity",
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
  "description" : "Total amount of product being requested. This may refer to number of packages when package size is indicated in Medication resource.",
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
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "MedicationRequest.dispenseRequest"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "MedicationRequest - Prescribed Quantity",
      "definition" : "Total amount of product being requested. This may refer to number of packages when package size is indicated in Medication resource."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medicationrequest-prescribedQuantity"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
