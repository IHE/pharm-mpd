# Medicinal product (model) - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medicinal product (model)**

## Logical Model: Medicinal product (model) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/MedicinalProductModel | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-23 | *Computable Name*:MedicinalProductModel |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. 

**Usages:**

* Refer to this Logical Model: [Medication dispense (model)](StructureDefinition-IHEMedicationDispenseModel.md), [Medication order (model)](StructureDefinition-IHEMedicationOrderModel.md) and [Medication order - multiline (model)](StructureDefinition-IHEMultilineOrder.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/MedicinalProductModel)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MedicinalProductModel.csv), [Excel](StructureDefinition-MedicinalProductModel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MedicinalProductModel",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/MedicinalProductModel",
  "version" : "1.0.0-comment-3",
  "name" : "MedicinalProductModel",
  "title" : "Medicinal product (model)",
  "status" : "active",
  "date" : "2026-04-23T21:30:43+00:00",
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
  "description" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile.",
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
  "type" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/MedicinalProductModel",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "MedicinalProductModel",
      "path" : "MedicinalProductModel",
      "short" : "Medicinal product (model)",
      "definition" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile."
    },
    {
      "id" : "MedicinalProductModel.identifyingCode[x]",
      "path" : "MedicinalProductModel.identifyingCode[x]",
      "short" : "Identifier or product code for the product, independently of the level of product. If several identifiers are specified, they shall not have conflicting meanings or very different granularities.",
      "definition" : "Identifier or product code for the product, independently of the level of product. If several identifiers are specified, they shall not have conflicting meanings or very different granularities.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Identifier"
      }]
    },
    {
      "id" : "MedicinalProductModel.classification",
      "path" : "MedicinalProductModel.classification",
      "short" : "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)",
      "definition" : "Classification (e.g. ATC; narcotic/psychotropic; orphan drug; etc.)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductModel.productName",
      "path" : "MedicinalProductModel.productName",
      "short" : "Name of the product (full name, invented name, other). When the product has different names, the appropriate one for the context should be used. Translations of names can be provided.",
      "definition" : "Name of the product (full name, invented name, other). When the product has different names, the appropriate one for the context should be used. Translations of names can be provided.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MedicinalProductModel.marketingAuthorisationHolder",
      "path" : "MedicinalProductModel.marketingAuthorisationHolder",
      "short" : "Marketing authorisation holder of manufacturer of the medicinal product. Relevant for identifying the exact product.",
      "definition" : "Marketing authorisation holder of manufacturer of the medicinal product. Relevant for identifying the exact product.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "MedicinalProductModel.marketingAuthorisationHolder.organizationName",
      "path" : "MedicinalProductModel.marketingAuthorisationHolder.organizationName",
      "short" : "Name of the organisation holding the authorisation for marketing/mahufacturing",
      "definition" : "Name of the organisation holding the authorisation for marketing/mahufacturing",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MedicinalProductModel.marketingAuthorisationHolder.organizationIdentifier",
      "path" : "MedicinalProductModel.marketingAuthorisationHolder.organizationIdentifier",
      "short" : "Identifier of the organisation and/or its physical location",
      "definition" : "Identifier of the organisation and/or its physical location",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "MedicinalProductModel.doseForm",
      "path" : "MedicinalProductModel.doseForm",
      "short" : "Dose form(s) on a product level. Dose form for a single package item is defined below.",
      "definition" : "Dose form(s) on a product level. Dose form for a single package item is defined below.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductModel.packSize",
      "path" : "MedicinalProductModel.packSize",
      "short" : "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)",
      "definition" : "Overall amount of product in one package (100ml; 20 tablets; 1 creme & 6 pessaries)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "MedicinalProductModel.item",
      "path" : "MedicinalProductModel.item",
      "short" : "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined",
      "definition" : "A medication item. For combination packs, this can be manufactured items with each item having its own dose form and ingredients+strengths defined",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "MedicinalProductModel.item.doseForm",
      "path" : "MedicinalProductModel.item.doseForm",
      "short" : "Dose form",
      "definition" : "Dose form",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductModel.item.ingredient",
      "path" : "MedicinalProductModel.item.ingredient",
      "short" : "Ingredients",
      "definition" : "Ingredients",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "MedicinalProductModel.item.ingredient.role[x]",
      "path" : "MedicinalProductModel.item.ingredient.role[x]",
      "short" : "Role (active ingredient, excipient). Typically excipients are not needed, so by default active ingredients are expected.",
      "definition" : "Role (active ingredient, excipient). Typically excipients are not needed, so by default active ingredients are expected.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      },
      {
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductModel.item.ingredient.substance",
      "path" : "MedicinalProductModel.item.ingredient.substance",
      "short" : "Substance",
      "definition" : "Substance",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductModel.item.ingredient.strengthInfo",
      "path" : "MedicinalProductModel.item.ingredient.strengthInfo",
      "short" : "Concentration or presentation strength",
      "definition" : "Concentration or presentation strength",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "MedicinalProductModel.item.ingredient.strengthInfo.strength",
      "path" : "MedicinalProductModel.item.ingredient.strengthInfo.strength",
      "short" : "Concentration or presentation strength of the precise active ingredient",
      "definition" : "Concentration or presentation strength of the precise active ingredient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "MedicinalProductModel.item.ingredient.strengthInfo.basisOfStrengthSubstance",
      "path" : "MedicinalProductModel.item.ingredient.strengthInfo.basisOfStrengthSubstance",
      "short" : "Substance that the strength refers to, if different from the main substance",
      "definition" : "Substance that the strength refers to, if different from the main substance",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductModel.item.unitOfPresentation",
      "path" : "MedicinalProductModel.item.unitOfPresentation",
      "short" : "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package.",
      "definition" : "Unit of presentation for the manufactured item (tablet, vial, tube). Typically, the smallest countable object in the package.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductModel.item.containedQuantity",
      "path" : "MedicinalProductModel.item.containedQuantity",
      "short" : "Manufactured item quantity for liquids (3ml/vial)",
      "definition" : "Manufactured item quantity for liquids (3ml/vial)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Ratio"
      }]
    },
    {
      "id" : "MedicinalProductModel.item.amount",
      "path" : "MedicinalProductModel.item.amount",
      "short" : "Number of such manufactured items in this product (5 vials)",
      "definition" : "Number of such manufactured items in this product (5 vials)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "MedicinalProductModel.device",
      "path" : "MedicinalProductModel.device",
      "short" : "Administration device included in the product",
      "definition" : "Administration device included in the product",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "MedicinalProductModel.device.deviceQuantity",
      "path" : "MedicinalProductModel.device.deviceQuantity",
      "short" : "Number of such devices",
      "definition" : "Number of such devices",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "MedicinalProductModel.device.device[x]",
      "path" : "MedicinalProductModel.device.device[x]",
      "short" : "Device coded",
      "definition" : "Device coded",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "MedicinalProductModel.characteristic",
      "path" : "MedicinalProductModel.characteristic",
      "short" : "Other features of the product",
      "definition" : "Other features of the product",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "MedicinalProductModel.characteristic.type",
      "path" : "MedicinalProductModel.characteristic.type",
      "short" : "A code expressing the type of characteristic",
      "definition" : "A code expressing the type of characteristic",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "MedicinalProductModel.characteristic.value[x]",
      "path" : "MedicinalProductModel.characteristic.value[x]",
      "short" : "Description of the characteristic",
      "definition" : "Description of the characteristic",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      },
      {
        "code" : "Quantity"
      },
      {
        "code" : "dateTime"
      },
      {
        "code" : "unsignedInt"
      },
      {
        "code" : "decimal"
      },
      {
        "code" : "Ratio"
      }]
    },
    {
      "id" : "MedicinalProductModel.batch",
      "path" : "MedicinalProductModel.batch",
      "short" : "Batch information of a medicinal product. Typically recorded during dispense or administration, rarely known or relevant for a prescription/request.",
      "definition" : "Batch information of a medicinal product. Typically recorded during dispense or administration, rarely known or relevant for a prescription/request.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "MedicinalProductModel.batch.lotNumber",
      "path" : "MedicinalProductModel.batch.lotNumber",
      "short" : "Batch identifier of the medicinal product",
      "definition" : "Batch identifier of the medicinal product",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MedicinalProductModel.batch.expirationDate",
      "path" : "MedicinalProductModel.batch.expirationDate",
      "short" : "Batch expiration date of the medicinal product.",
      "definition" : "Batch expiration date of the medicinal product.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "MedicinalProductModel.batch.serialNumber",
      "path" : "MedicinalProductModel.batch.serialNumber",
      "short" : "Serial Number of the medicinal product.",
      "definition" : "Serial Number of the medicinal product.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
