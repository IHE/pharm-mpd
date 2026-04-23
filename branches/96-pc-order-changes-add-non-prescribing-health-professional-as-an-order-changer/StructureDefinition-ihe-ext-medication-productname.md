# Medication - Product Name - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication - Product Name**

## Extension: Medication - Product Name 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-23 | *Computable Name*:MedicationProductName |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

Name of the medicinal product. This is typically the name of a real product as registered. This element should not contain display names of virtual product concepts.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [IHE Medication](StructureDefinition-IHEMedication.md)
* Examples for this Extension: [Medication/01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md), [Medication/01D-Cefuroxime750Branded](Medication-01D-Cefuroxime750Branded.md), [Medication/02A-ClotrimazoleCanifugCremolum](Medication-02A-ClotrimazoleCanifugCremolum.md), [Medication/03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md)... Show 2 more, [Medication/04-FirmagonBranded](Medication-04-FirmagonBranded.md) and [Medication/05A-Tilidin-Branded](Medication-05A-Tilidin-Branded.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/ihe-ext-medication-productname)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-medication-productname.csv), [Excel](StructureDefinition-ihe-ext-medication-productname.xlsx), [Schematron](StructureDefinition-ihe-ext-medication-productname.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-medication-productname",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname",
  "version" : "1.0.0-comment-3",
  "name" : "MedicationProductName",
  "title" : "Medication - Product Name",
  "status" : "active",
  "date" : "2026-04-23T11:55:05+00:00",
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
  "description" : "Name of the medicinal product. This is typically the name of a real product as registered. This element should not contain display names of virtual product concepts.",
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
      "short" : "Medication - Product Name",
      "definition" : "Name of the medicinal product. This is typically the name of a real product as registered. This element should not contain display names of virtual product concepts."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
