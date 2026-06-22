# PrescriptionLine2 - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PrescriptionLine2**

## Example MedicationRequest: PrescriptionLine2

**identifier**: `http://example.org/NamingSystem/prescriptionlines`/line2

**groupIdentifier**: `http://example.org/prescriptions`/prescr1

**status**: Active

**intent**: Option

### Medications

| | |
| :--- | :--- |
| - | **Concept** |
| * | XM2L06 |

**subject**: Identifier: patient1



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "PrescriptionLine2",
  "identifier" : [{
    "system" : "http://example.org/NamingSystem/prescriptionlines",
    "value" : "line2"
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
        "code" : "XM2L06"
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
