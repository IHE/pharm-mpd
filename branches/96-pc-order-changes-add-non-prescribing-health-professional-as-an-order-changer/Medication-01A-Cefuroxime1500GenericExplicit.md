# 01A-Cefuroxime1500GenericExplicit - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **01A-Cefuroxime1500GenericExplicit**

## Example Medication: 01A-Cefuroxime1500GenericExplicit

Profile: [IHE Medication](StructureDefinition-IHEMedication.md)

**Medication - Classification**: cefuroxime

**doseForm**: Powder for solution for injection or infusion

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Concept** |
| * | Cefuroxime |

**isActive**: true**strength**: 1500 milligram (Details: UCUM codemg = 'mg')/1 Vial (Details: standardterms.edqm.eu code15060000 = 'Vial')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "01A-Cefuroxime1500GenericExplicit",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
  },
  "extension" : [{
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.whocc.no/atc",
        "code" : "J01DC02",
        "display" : "cefuroxime"
      }]
    }
  }],
  "doseForm" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "50053000",
      "display" : "Powder for solution for injection or infusion"
    }]
  },
  "ingredient" : [{
    "item" : {
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "372833007",
          "display" : "Cefuroxime"
        }]
      }
    },
    "isActive" : true,
    "strengthRatio" : {
      "numerator" : {
        "value" : 1500,
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
