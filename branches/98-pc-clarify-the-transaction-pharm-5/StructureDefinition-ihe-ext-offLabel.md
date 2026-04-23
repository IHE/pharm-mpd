# Off-label use - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Off-label use**

## Extension: Off-label use 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-23 | *Computable Name*:OffLabel |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

Indicates that the prescriber has intentionally prescribed the medication in a manner not covered by the product authorization — such as for a different indication, age group, dosage, or route of administration.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [IHE Medication Order](StructureDefinition-IHEMedicationOrder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/ihe-ext-offLabel)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-offLabel.csv), [Excel](StructureDefinition-ihe-ext-offLabel.xlsx), [Schematron](StructureDefinition-ihe-ext-offLabel.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-offLabel",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel",
  "version" : "1.0.0-comment-3",
  "name" : "OffLabel",
  "title" : "Off-label use",
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
  "description" : "Indicates that the prescriber has intentionally prescribed the medication in a manner not covered by the product authorization — such as for a different indication, age group, dosage, or route of administration.",
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
    "expression" : "MedicationRequest"
  },
  {
    "type" : "element",
    "expression" : "MedicationStatement"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Off-label use",
      "definition" : "Indicates that the prescriber has intentionally prescribed the medication in a manner not covered by the product authorization — such as for a different indication, age group, dosage, or route of administration."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:isOffLabelUse",
      "path" : "Extension.extension",
      "sliceName" : "isOffLabelUse",
      "short" : "Indicates off-label use. Must be 'true' when .reason is provided.",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:isOffLabelUse.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:isOffLabelUse.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "isOffLabelUse"
    },
    {
      "id" : "Extension.extension:isOffLabelUse.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:reason",
      "path" : "Extension.extension",
      "sliceName" : "reason",
      "short" : "Reason or related clarification for off-label use.",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Extension.extension:reason.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reason.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reason"
    },
    {
      "id" : "Extension.extension:reason.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
