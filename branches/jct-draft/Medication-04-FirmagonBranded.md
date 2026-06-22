# 04-FirmagonBranded - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **04-FirmagonBranded**

## Example Medication: 04-FirmagonBranded

Profile: [IHE Medication](StructureDefinition-IHEMedication.md)

**Medication - Classification**: degarelix

**Medication - Product Name**: FIRMAGON

**Medication - Size of Item**: 3 milliliter (Details: UCUM codemL = 'mL')

**Medication - Unit of presentation**: Vial

> **Medication - Device**
* device: Pre-filled syringe
* quantity: 2

> **Medication - Device**
* device: Injection needle
* quantity: 2

**identifier**: `https://www.ravimiregister.ee`/1400601

**marketingAuthorizationHolder**: Ferring Pharmaceuticals A/S

**doseForm**: Powder and solvent for solution for injection

**totalVolume**: 2 Vial (Details: EDQM Standard Terms code15060000 = 'Vial')

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Concept** |
| * | Degarelix |

**isActive**: true**strength**: 120 milligram (Details: UCUM codemg = 'mg')/1 Vial (Details: EDQM Standard Terms code15060000 = 'Vial')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "04-FirmagonBranded",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
  },
  "extension" : [{
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.whocc.no/atc",
        "code" : "L02BX02",
        "display" : "degarelix"
      }]
    }
  },
  {
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname",
    "valueString" : "FIRMAGON"
  },
  {
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-sizeofitem",
    "valueQuantity" : {
      "value" : 3,
      "unit" : "milliliter",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    }
  },
  {
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-unitofpresentation",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "15060000",
        "display" : "Vial"
      }]
    }
  },
  {
    "extension" : [{
      "url" : "device",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "30051000",
          "display" : "Pre-filled syringe"
        }]
      }
    },
    {
      "url" : "quantity",
      "valueQuantity" : {
        "value" : 2
      }
    }],
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-device"
  },
  {
    "extension" : [{
      "url" : "device",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "30028000",
          "display" : "Injection needle"
        }]
      }
    },
    {
      "url" : "quantity",
      "valueQuantity" : {
        "value" : 2
      }
    }],
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-device"
  }],
  "identifier" : [{
    "system" : "https://www.ravimiregister.ee",
    "value" : "1400601"
  }],
  "marketingAuthorizationHolder" : {
    "display" : "Ferring Pharmaceuticals A/S"
  },
  "doseForm" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "11207000",
      "display" : "Powder and solvent for solution for injection"
    }]
  },
  "totalVolume" : {
    "value" : 2,
    "unit" : "Vial",
    "system" : "http://standardterms.edqm.eu",
    "code" : "15060000"
  },
  "ingredient" : [{
    "item" : {
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "441864003",
          "display" : "Degarelix"
        }]
      }
    },
    "isActive" : true,
    "strengthRatio" : {
      "extension" : [{
        "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-strengthsubstance",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "441864003",
            "display" : "Degarelix"
          }]
        }
      }],
      "numerator" : {
        "value" : 120,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "Vial",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15060000"
      }
    }
  }]
}

```
