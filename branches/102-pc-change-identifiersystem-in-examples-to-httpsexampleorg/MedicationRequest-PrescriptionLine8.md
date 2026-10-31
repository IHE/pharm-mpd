# PrescriptionLine8 - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PrescriptionLine8**

## Example MedicationRequest: PrescriptionLine8

**identifier**: `http://example.org/prescriptionlines`/line8

**status**: Active

**intent**: Order

### Medications

| | |
| :--- | :--- |
| - | **Concept** |
| * | med1 |

**subject**: Identifier: patient1



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "PrescriptionLine8",
  "identifier" : [{
    "system" : "http://example.org/prescriptionlines",
    "value" : "line8"
  }],
  "status" : "active",
  "intent" : "order",
  "medication" : {
    "concept" : {
      "coding" : [{
        "system" : "http://id.who.int/icd/release/11/mms",
        "code" : "med1"
      }]
    }
  },
  "subject" : {
    "identifier" : {
      "value" : "patient1"
    }
  }
}

```
