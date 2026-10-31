# 01C-Cefuroxime1500Branded - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **01C-Cefuroxime1500Branded**

## Example Medication: 01C-Cefuroxime1500Branded

Profile: [IHE Medication](StructureDefinition-IHEMedication.md)

**Medication - Classification**: cefuroxime

**Medication - Product Name**: Cefuroxime MIP 1500 mg, süste-/infusioonilahuse pulber

**Medication - Unit of presentation**: Vial

**identifier**: `https://www.ravimiregister.ee`/1529962

**marketingAuthorizationHolder**: MIP Pharma GmbH

**doseForm**: Powder for solution for injection or infusion

**totalVolume**: 10 Vial (Details: EDQM Standard Terms code15060000 = 'Vial')

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Concept** |
| * | Cefuroxime sodium |

**isActive**: true**strength**: 1500 milligram (Details: UCUM codemg = 'mg')/1 Vial (Details: EDQM Standard Terms code15060000 = 'Vial')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "01C-Cefuroxime1500Branded",
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
  },
  {
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname",
    "valueString" : "Cefuroxime MIP 1500 mg, süste-/infusioonilahuse pulber"
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
  }],
  "identifier" : [{
    "system" : "https://www.ravimiregister.ee",
    "value" : "1529962"
  }],
  "marketingAuthorizationHolder" : {
    "display" : "MIP Pharma GmbH"
  },
  "doseForm" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "50053000",
      "display" : "Powder for solution for injection or infusion"
    }]
  },
  "totalVolume" : {
    "value" : 10,
    "unit" : "Vial",
    "system" : "http://standardterms.edqm.eu",
    "code" : "15060000"
  },
  "ingredient" : [{
    "item" : {
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "48753004",
          "display" : "Cefuroxime sodium"
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
            "code" : "372833007",
            "display" : "Cefuroxime"
          }]
        }
      }],
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
