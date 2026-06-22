# PrescriptionLine6 - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PrescriptionLine6**

## Example MedicationRequest: PrescriptionLine6

**identifier**: `http://example.org/prescriptionlines`/line6

**groupIdentifier**: `http://example.org/prescriptions`/prescr3

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
  "id" : "PrescriptionLine6",
  "identifier" : [{
    "system" : "http://example.org/prescriptionlines",
    "value" : "line6"
  }],
  "groupIdentifier" : {
    "system" : "http://example.org/prescriptions",
    "value" : "prescr3"
  },
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
