# 300-dispense-for-2-requests - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **300-dispense-for-2-requests**

## Example MedicationDispense: 300-dispense-for-2-requests

Profile: [IHE Medication Dispense](StructureDefinition-IHEMedicationDispense.md)

**status**: Completed

### Medications

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Canifug Cremolum, cream + pessary](Medication-02A-ClotrimazoleCanifugCremolum.md) |

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Pharmacist](PractitionerRole-pharmacist1.md) |

**authorizingPrescription**: 

* Identifier: 300-1/2
* Identifier: 300-2/2

**quantity**: 1 1 (Details: UCUM code1 = '1')

**whenHandedOver**: 2024-10-06 19:54:00+0000



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "300-dispense-for-2-requests",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispense"]
  },
  "status" : "completed",
  "medication" : {
    "reference" : {
      "reference" : "Medication/02A-ClotrimazoleCanifugCremolum",
      "display" : "Canifug Cremolum, cream + pessary"
    }
  },
  "subject" : {
    "reference" : "Patient/patient1"
  },
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/pharmacist1"
    }
  }],
  "authorizingPrescription" : [{
    "identifier" : {
      "value" : "300-1/2"
    }
  },
  {
    "identifier" : {
      "value" : "300-2/2"
    }
  }],
  "quantity" : {
    "value" : 1,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "whenHandedOver" : "2024-10-06T19:54:00Z"
}

```
