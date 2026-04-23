# Medication - Size of Item - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication - Size of Item**

## Extension: Medication - Size of Item 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-sizeofitem | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-22 | *Computable Name*:MedicationSizeOfItem |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [IHE Medication](StructureDefinition-IHEMedication.md)
* Examples for this Extension: [Medication/02A1-CanifugCremolumCreamItem](Medication-02A1-CanifugCremolumCreamItem.md), [Medication/03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md) and [Medication/04-FirmagonBranded](Medication-04-FirmagonBranded.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/ihe-ext-medication-sizeofitem)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-medication-sizeofitem.csv), [Excel](StructureDefinition-ihe-ext-medication-sizeofitem.xlsx), [Schematron](StructureDefinition-ihe-ext-medication-sizeofitem.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-medication-sizeofitem",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-sizeofitem",
  "version" : "1.0.0-comment-3",
  "name" : "MedicationSizeOfItem",
  "title" : "Medication - Size of Item",
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
  "description" : "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials.",
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
    "expression" : "Medication"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Medication - Size of Item",
      "definition" : "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-sizeofitem"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    }]
  }
}

```
