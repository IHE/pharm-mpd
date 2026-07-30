# 02A2-CanifugCremolumPessaryItem - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **02A2-CanifugCremolumPessaryItem**

## Example Medication: 02A2-CanifugCremolumPessaryItem

Profile: [IHE Medication](StructureDefinition-IHEMedication.md)

**Medication - Unit of presentation**: Pessary

**doseForm**: Pessary

**totalVolume**: 6 Pessary (Details: EDQM Standard Terms code15039000 = 'Pessary')

> **ingredient**

### Items

| | |
| :--- | :--- |
| - | **Concept** |
| * | Clotrimazole |

**isActive**: true**strength**: 100 milligram (Details: UCUM codemg = 'mg')/1 Pessary (Details: EDQM Standard Terms code15039000 = 'Pessary')



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "02A2-CanifugCremolumPessaryItem",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
  },
  "extension" : [{
    "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medication-unitofpresentation",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://standardterms.edqm.eu",
        "code" : "15039000",
        "display" : "Pessary"
      }]
    }
  }],
  "doseForm" : {
    "coding" : [{
      "system" : "http://standardterms.edqm.eu",
      "code" : "10909000",
      "display" : "Pessary"
    }]
  },
  "totalVolume" : {
    "value" : 6,
    "unit" : "Pessary",
    "system" : "http://standardterms.edqm.eu",
    "code" : "15039000"
  },
  "ingredient" : [{
    "item" : {
      "concept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "387325003",
          "display" : "Clotrimazole"
        }]
      }
    },
    "isActive" : true,
    "strengthRatio" : {
      "numerator" : {
        "value" : 100,
        "unit" : "milligram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1,
        "unit" : "Pessary",
        "system" : "http://standardterms.edqm.eu",
        "code" : "15039000"
      }
    }
  }]
}

```
