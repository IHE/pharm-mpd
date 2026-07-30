# 02A-ClotrimazoleCanifugCremolum - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **02A-ClotrimazoleCanifugCremolum**

## Example Medication: 02A-ClotrimazoleCanifugCremolum

Profile: [IHE Medication](StructureDefinition-IHEMedication.md)

**Medication - Classification**: clotrimazole

**Medication - Product Name**: Canifug Cremolum

> **Medication - Device**
* device: Applicator
* quantity: 1

**identifier**: `https://www.ravimiregister.ee`/1033692

**doseForm**: Cream + pessary

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Medication: extension = Tube,20 gram; doseForm = Vaginal cream; totalVolume = 1 Tube](Medication-02A1-CanifugCremolumCreamItem.md) |


> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Medication: extension = Pessary; doseForm = Pessary; totalVolume = 6 Pessary](Medication-02A2-CanifugCremolumPessaryItem.md) |




## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "02A-ClotrimazoleCanifugCremolum",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
  },
  "extension" : [{
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.whocc.no/atc",
        "code" : "G01AF02",
        "display" : "clotrimazole"
      }]
    }
  },
  {
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname",
    "valueString" : "Canifug Cremolum"
  },
  {
    "extension" : [{
      "url" : "device",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://standardterms.edqm.eu",
          "code" : "30002000",
          "display" : "Applicator"
        }]
      }
    },
    {
      "url" : "quantity",
      "valueQuantity" : {
        "value" : 1
      }
    }],
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-device"
  }],
  "identifier" : [{
    "system" : "https://www.ravimiregister.ee",
    "value" : "1033692"
  }],
  "doseForm" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "14001000",
      "display" : "Cream + pessary"
    }]
  },
  "ingredient" : [{
    "item" : {
      "reference" : {
        "reference" : "Medication/02A1-CanifugCremolumCreamItem"
      }
    }
  },
  {
    "item" : {
      "reference" : {
        "reference" : "Medication/02A2-CanifugCremolumPessaryItem"
      }
    }
  }]
}

```
