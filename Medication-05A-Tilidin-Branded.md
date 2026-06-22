# 05A-Tilidin-Branded - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **05A-Tilidin-Branded**

## Example Medication: 05A-Tilidin-Branded

Profile: [IHE Medication](StructureDefinition-IHEMedication.md)

**Medication - Product Name**: Tilidin HEXAL® comp Lösung, 50/4 mg je 0,72 ml Tropfen zum Einnehmen, Lösung

**Medication - Unit of presentation**: Drop

**identifier**: `https://example.org`/12345

**marketingAuthorizationHolder**: Hexal AG

**doseForm**: Oral drops, solution

**totalVolume**: 10 milliliter (Details: UCUM codemL = 'mL')

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Concept** |
| * | Tilidine |

**isActive**: true**strength**: 50 milligram (Details: UCUM codemg = 'mg')/20 Drop (Details: EDQM Standard Terms code15022000 = 'Drop')

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Concept** |
| * | Naloxone |

**isActive**: true**strength**: 4 milligram (Details: UCUM codemg = 'mg')/20 Drop (Details: EDQM Standard Terms code15022000 = 'Drop')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "05A-Tilidin-Branded",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
  },
  "extension" : [{
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname",
    "valueString" : "Tilidin HEXAL® comp Lösung, 50/4 mg je 0,72 ml Tropfen zum Einnehmen, Lösung"
  },
  {
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-unitofpresentation",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "15022000",
        "display" : "Drop"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://example.org",
    "value" : "12345"
  }],
  "marketingAuthorizationHolder" : {
    "display" : "Hexal AG"
  },
  "doseForm" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "10101000",
      "display" : "Oral drops, solution"
    }]
  },
  "totalVolume" : {
    "value" : 10,
    "unit" : "milliliter",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL"
  },
  "ingredient" : [{
    "item" : {
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "373562008",
          "display" : "Tilidine"
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
            "code" : "96186004",
            "display" : "Tilidine hydrochloride"
          }]
        }
      }],
      "numerator" : {
        "value" : 50,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 20,
        "unit" : "Drop",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15022000"
      }
    }
  },
  {
    "item" : {
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "372890007",
          "display" : "Naloxone"
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
            "code" : "21518006",
            "display" : "Naloxone hydrochloride"
          }]
        }
      }],
      "numerator" : {
        "value" : 4,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 20,
        "unit" : "Drop",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15022000"
      }
    }
  }]
}

```
