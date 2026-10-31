# 01D-Cefuroxime750Branded - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **01D-Cefuroxime750Branded**

## Example Medication: 01D-Cefuroxime750Branded

Profile: [IHE Medication](StructureDefinition-IHEMedication.md)

**Medication - Classification**: cefuroxime

**Medication - Product Name**: Cefuroxime MIP 750 mg, süstelahuse pulber

**Medication - Unit of presentation**: Vial

**identifier**: `https://example.org/medication`/1529928

**marketingAuthorizationHolder**: MIP Pharma GmbH

**doseForm**: Powder for solution for injection

**totalVolume**: 5 Vial (Details: EDQM Standard Terms code15060000 = 'Vial')

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Concept** |
| * | Cefuroxime sodium |

**isActive**: true**strength**: 750 milligram (Details: UCUM codemg = 'mg')/1 Vial (Details: EDQM Standard Terms code15060000 = 'Vial')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "01D-Cefuroxime750Branded",
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
    "valueString" : "Cefuroxime MIP 750 mg, süstelahuse pulber"
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
    "system" : "https://example.org/medication",
    "value" : "1529928"
  }],
  "marketingAuthorizationHolder" : {
    "display" : "MIP Pharma GmbH"
  },
  "doseForm" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "11205000",
      "display" : "Powder for solution for injection"
    }]
  },
  "totalVolume" : {
    "value" : 5,
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
        "value" : 750,
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
