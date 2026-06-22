# Medication - Strength substance - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication - Strength substance**

## Extension: Medication - Strength substance 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-strengthsubstance | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-22 | *Computable Name*:MedicationStrengthSubstance |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

Substance for marking the basis of strength. When the precise active ingredient is a salt, the strength is often provided for the active moiety (basis of strength).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [IHE Medication](StructureDefinition-IHEMedication.md)
* Examples for this Extension: [Medication/01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md), [Medication/01D-Cefuroxime750Branded](Medication-01D-Cefuroxime750Branded.md), [Medication/04-FirmagonBranded](Medication-04-FirmagonBranded.md) and [Medication/05A-Tilidin-Branded](Medication-05A-Tilidin-Branded.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/ihe-ext-medication-strengthsubstance)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-medication-strengthsubstance.csv), [Excel](StructureDefinition-ihe-ext-medication-strengthsubstance.xlsx), [Schematron](StructureDefinition-ihe-ext-medication-strengthsubstance.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-medication-strengthsubstance",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-strengthsubstance",
  "version" : "1.0.0-comment-3",
  "name" : "MedicationStrengthSubstance",
  "title" : "Medication - Strength substance",
  "status" : "active",
  "date" : "2026-04-22T16:07:35+00:00",
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
  "description" : "Substance for marking the basis of strength. When the precise active ingredient is a salt, the strength is often provided for the active moiety (basis of strength).",
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
    "extension" : [{
      "extension" : [{
        "url" : "startFhirVersion",
        "valueCode" : "4.0"
      },
      {
        "url" : "endFhirVersion",
        "valueCode" : "4.0"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/version-specific-use"
    }],
    "type" : "element",
    "expression" : "Medication.ingredient.strength"
  },
  {
    "extension" : [{
      "extension" : [{
        "url" : "startFhirVersion",
        "valueCode" : "5.0"
      },
      {
        "url" : "endFhirVersion",
        "valueCode" : "5.0"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/version-specific-use"
    }],
    "type" : "element",
    "expression" : "Medication.ingredient.strength[x]"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Medication - Strength substance",
      "definition" : "Substance for marking the basis of strength. When the precise active ingredient is a salt, the strength is often provided for the active moiety (basis of strength)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-strengthsubstance"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/substance-codes"
      }
    }]
  }
}

```
