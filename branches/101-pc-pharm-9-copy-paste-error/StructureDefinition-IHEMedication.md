# IHE Medication - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Medication**

## Resource Profile: IHE Medication 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-22 | *Computable Name*:IHEMedication |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products. 

**Usages:**

* Refer to this Profile: [IHE Medication](StructureDefinition-IHEMedication.md), [IHE Medication Dispense](StructureDefinition-IHEMedicationDispense.md) and [IHE Medication Order](StructureDefinition-IHEMedicationOrder.md)
* Examples for this Profile: [Medication/01A-Cefuroxime1500GenericExplicit](Medication-01A-Cefuroxime1500GenericExplicit.md), [Medication/01B-Cefuroxime1500GenericConcept](Medication-01B-Cefuroxime1500GenericConcept.md), [Medication/01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md), [Medication/01D-Cefuroxime750Branded](Medication-01D-Cefuroxime750Branded.md)... Show 6 more, [Medication/02A-ClotrimazoleCanifugCremolum](Medication-02A-ClotrimazoleCanifugCremolum.md), [Medication/02A1-CanifugCremolumCreamItem](Medication-02A1-CanifugCremolumCreamItem.md), [Medication/02A2-CanifugCremolumPessaryItem](Medication-02A2-CanifugCremolumPessaryItem.md), [Medication/03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md), [Medication/04-FirmagonBranded](Medication-04-FirmagonBranded.md) and [Medication/05A-Tilidin-Branded](Medication-05A-Tilidin-Branded.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/IHEMedication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHEMedication.csv), [Excel](StructureDefinition-IHEMedication.xlsx), [Schematron](StructureDefinition-IHEMedication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHEMedication",
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication",
  "version" : "1.0.0-comment-3",
  "name" : "IHEMedication",
  "title" : "IHE Medication",
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
  "description" : "Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Medication",
      "path" : "Medication"
    },
    {
      "id" : "Medication.extension",
      "path" : "Medication.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Medication.extension:productName",
      "path" : "Medication.extension",
      "sliceName" : "productName",
      "short" : "Name of the medicinal product. Names of different types (full name, short name, etc) and in different languages can be provided if relevant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname"]
      }]
    },
    {
      "id" : "Medication.extension:classification",
      "path" : "Medication.extension",
      "sliceName" : "classification",
      "short" : "Classifications of the product, e.g ATC, narcotic/psychotropic, orphan drug, etc",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification"]
      }]
    },
    {
      "id" : "Medication.extension:sizeOfItem",
      "path" : "Medication.extension",
      "sliceName" : "sizeOfItem",
      "short" : "Size of one item (for example, in a pack of 5 vials, this would represent the size of 1 vial)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-sizeofitem"]
      }]
    },
    {
      "id" : "Medication.extension:device",
      "path" : "Medication.extension",
      "sliceName" : "device",
      "short" : "Device, typically an administration device, included in the product.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-device"]
      }]
    },
    {
      "id" : "Medication.extension:characteristic",
      "path" : "Medication.extension",
      "sliceName" : "characteristic",
      "short" : "Specifies other descriptive properties of the medication.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-characteristic"]
      }]
    },
    {
      "id" : "Medication.extension:unitOfPresentation",
      "path" : "Medication.extension",
      "sliceName" : "unitOfPresentation",
      "short" : "Unit of presentation of the product (e.g. tablet, vial, ampoule, etc)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-unitofpresentation"]
      }]
    },
    {
      "id" : "Medication.identifier",
      "path" : "Medication.identifier",
      "short" : "Identifier for the medicinal product, its generic representation, or packaged product.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.code",
      "path" : "Medication.code",
      "short" : "A terminology-based code for the product",
      "mustSupport" : true
    },
    {
      "id" : "Medication.marketingAuthorizationHolder",
      "path" : "Medication.marketingAuthorizationHolder",
      "mustSupport" : true
    },
    {
      "id" : "Medication.doseForm",
      "path" : "Medication.doseForm",
      "short" : "Dose form. For a branded product, this would most likely be authorised dose form, but it could also be administrable dose form. For package items, it could be item's individual dose form.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.totalVolume",
      "path" : "Medication.totalVolume",
      "short" : "Total volume or number of package items inside a package. This element should not contain overall prescribed amount, but describe the product itself. In case of complex packages, this element could be left empty, and number of different items could be indicated in the nested Medications.",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient",
      "path" : "Medication.ingredient",
      "short" : "Ingredient or a part product. For combination packs, each ingredient can be a separate manufactured item with its own ingredients, dose form, and strength",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.extension",
      "path" : "Medication.ingredient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Medication.ingredient.extension:ingredientRole",
      "path" : "Medication.ingredient.extension",
      "sliceName" : "ingredientRole",
      "short" : "Role of the ingredient in the medication",
      "definition" : "Role of the ingredient in the medication, e.g. active ingredient, excipient, etc.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-ingredient-role"]
      }]
    },
    {
      "id" : "Medication.ingredient.item",
      "path" : "Medication.ingredient.item",
      "short" : "Substance (Substance resource or concept from terminology) or a medicinal product (Medication resource or concept from terminology). Medicinal product can be an ingredient in case of extemporal medications or combination packs (e.g Creme + 6 tablets)",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Substance",
        "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "example",
        "valueSet" : "http://hl7.org/fhir/ValueSet/substance-codes"
      }
    },
    {
      "id" : "Medication.ingredient.isActive",
      "path" : "Medication.ingredient.isActive",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength[x]",
      "path" : "Medication.ingredient.strength[x]",
      "mustSupport" : true
    },
    {
      "id" : "Medication.ingredient.strength[x].extension:basisOfStrengthSubstance",
      "path" : "Medication.ingredient.strength[x].extension",
      "sliceName" : "basisOfStrengthSubstance",
      "short" : "Substance for which the strength is provided (this could be different from the precise active ingredient).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-strengthsubstance"]
      }]
    },
    {
      "id" : "Medication.ingredient.strength[x].extension:strengthType",
      "path" : "Medication.ingredient.strength[x].extension",
      "sliceName" : "strengthType",
      "short" : "Type of the given strength (concentration strength, presentation strength, or other)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-strengthtype"]
      }]
    }]
  }
}

```
