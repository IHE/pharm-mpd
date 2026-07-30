# 03B-VitaminBComplexBranded - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **03B-VitaminBComplexBranded**

## Example Medication: 03B-VitaminBComplexBranded

Profile: [IHE Medication](StructureDefinition-IHEMedication.md)

**Medication - Classification**: Vitamin B1 in combination with vitamin B6 and/or vitamin B12

**Medication - Product Name**: MILGAMMA N

**Medication - Size of Item**: 2 milliliter (Details: UCUM codemL = 'mL')

**Medication - Unit of presentation**: Ampoule

**identifier**: `https://example.org/medication`/1029776

**doseForm**: Solution for suspension for injection

**totalVolume**: 5 Ampoule (Details: EDQM Standard Terms code15002000 = 'Ampoule')

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Concept** |
| * | Thiamine |

**isActive**: true**strength**: 50 milligram (Details: UCUM codemg = 'mg')/1 milliliter (Details: UCUM codemL = 'mL')

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Concept** |
| * | Pyridoxine |

**isActive**: true**strength**: 50 milligram (Details: UCUM codemg = 'mg')/1 milliliter (Details: UCUM codemL = 'mL')

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Concept** |
| * | Cyanocobalamin |

**isActive**: true**strength**: 0.5 milligram (Details: UCUM codemg = 'mg')/1 milliliter (Details: UCUM codemL = 'mL')

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Concept** |
| * | Lidocaine |

**isActive**: true**strength**: 10 milligram (Details: UCUM codemg = 'mg')/1 milliliter (Details: UCUM codemL = 'mL')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "03B-VitaminBComplexBranded",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
  },
  "extension" : [{
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-classification",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://www.whocc.no/atc",
        "code" : "A11DB",
        "display" : "Vitamin B1 in combination with vitamin B6 and/or vitamin B12"
      }]
    }
  },
  {
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-productname",
    "valueString" : "MILGAMMA N"
  },
  {
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-sizeofitem",
    "valueQuantity" : {
      "value" : 2,
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
        "code" : "15002000",
        "display" : "Ampoule"
      }]
    }
  }],
  "identifier" : [{
    "system" : "https://example.org/medication",
    "value" : "1029776"
  }],
  "doseForm" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "13047000",
      "display" : "Solution for suspension for injection"
    }]
  },
  "totalVolume" : {
    "value" : 5,
    "unit" : "Ampoule",
    "system" : "http://standardterms.edqm.eu",
    "code" : "15002000"
  },
  "ingredient" : [{
    "item" : {
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "259659006",
          "display" : "Thiamine"
        }]
      }
    },
    "isActive" : true,
    "strengthRatio" : {
      "numerator" : {
        "value" : 50,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    }
  },
  {
    "item" : {
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "430469009",
          "display" : "Pyridoxine"
        }]
      }
    },
    "isActive" : true,
    "strengthRatio" : {
      "numerator" : {
        "value" : 50,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    }
  },
  {
    "item" : {
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "419382002",
          "display" : "Cyanocobalamin"
        }]
      }
    },
    "isActive" : true,
    "strengthRatio" : {
      "numerator" : {
        "value" : 0.5,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    }
  },
  {
    "item" : {
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "387480006",
          "display" : "Lidocaine"
        }]
      }
    },
    "isActive" : true,
    "strengthRatio" : {
      "numerator" : {
        "value" : 10,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "milliliter",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      }
    }
  }]
}

```
