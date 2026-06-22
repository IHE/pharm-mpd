# PrescriptionLine3 - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PrescriptionLine3**

## Example MedicationRequest: PrescriptionLine3

**identifier**: `http://example.org/prescriptionlines`/line3

**groupIdentifier**: `http://example.org/prescriptions`/prescr1

**status**: Active

**intent**: Option

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
  "id" : "PrescriptionLine3",
  "identifier" : [{
    "system" : "http://example.org/prescriptionlines",
    "value" : "line3"
  }],
  "groupIdentifier" : {
    "system" : "http://example.org/prescriptions",
    "value" : "prescr1"
  },
  "status" : "active",
  "intent" : "option",
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
