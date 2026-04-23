# Medication - Characteristic - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication - Characteristic**

## Extension: Medication - Characteristic 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-characteristic | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-23 | *Computable Name*:MedicationCharacteristic |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

Any characteristic of the medicinal product prescribed or dispensed (for example, price, textual package description, special program information, etc)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [IHE Medication](StructureDefinition-IHEMedication.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/ihe-ext-medication-characteristic)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-ext-medication-characteristic.csv), [Excel](StructureDefinition-ihe-ext-medication-characteristic.xlsx), [Schematron](StructureDefinition-ihe-ext-medication-characteristic.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-ext-medication-characteristic",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-characteristic",
  "version" : "1.0.0-comment-3",
  "name" : "MedicationCharacteristic",
  "title" : "Medication - Characteristic",
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
  "description" : "Any characteristic of the medicinal product prescribed or dispensed (for example, price, textual package description, special program information, etc)",
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
      "short" : "Medication - Characteristic",
      "definition" : "Any characteristic of the medicinal product prescribed or dispensed (for example, price, textual package description, special program information, etc)"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:type",
      "path" : "Extension.extension",
      "sliceName" : "type",
      "short" : "Code specifying the type of characteristic of medication",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:type.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:type.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "type"
    },
    {
      "id" : "Extension.extension:type.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/medicationknowledge-characteristic"
      }
    },
    {
      "id" : "Extension.extension:value",
      "path" : "Extension.extension",
      "sliceName" : "value",
      "short" : "Descriptive value of the characteristic",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:value.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:value.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "value"
    },
    {
      "id" : "Extension.extension:value.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      },
      {
        "code" : "dateTime"
      },
      {
        "code" : "decimal"
      },
      {
        "code" : "integer"
      },
      {
        "code" : "string"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "Quantity"
      },
      {
        "code" : "Ratio"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-characteristic"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
