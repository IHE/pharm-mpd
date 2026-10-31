# PrescriptionLine1 - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PrescriptionLine1**

## Example MedicationRequest: PrescriptionLine1

**identifier**: `http://example.org/prescriptionlines`/line1

**groupIdentifier**: `http://example.org/prescriptions`/prescr1

**status**: Active

**intent**: Option

### Medications

| | |
| :--- | :--- |
| - | **Concept** |
| * | XM63K0 |

**subject**: Identifier: patient1



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "PrescriptionLine1",
  "identifier" : [{
    "system" : "http://example.org/prescriptionlines",
    "value" : "line1"
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
        "code" : "XM63K0"
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
