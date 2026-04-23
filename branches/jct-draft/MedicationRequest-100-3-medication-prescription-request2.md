# 100-3-medication-prescription-request2 - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **100-3-medication-prescription-request2**

## Example MedicationRequest: 100-3-medication-prescription-request2

Profile: [IHE Medication Order](StructureDefinition-IHEMedicationOrder.md)

**identifier**: 100-2/3

**groupIdentifier**: 100

**status**: Active

**intent**: Order

### Medications

| | |
| :--- | :--- |
| - | **Concept** |
| * | Melphalan 2 mg oral tablet |

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

**authoredOn**: 2024-10-03

**requester**: [PractitionerRole Clinical oncologist](PractitionerRole-doctor1.md)

### Reasons

| | |
| :--- | :--- |
| - | **Concept** |
| * | Multiple myeloma |

> **dosageInstruction****timing**: Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 4 Tablet (Details: SNOMED CT code732936001 = 'Tablet (unit of presentation)') |


### DispenseRequests

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ValidityPeriod** | **NumberOfRepeatsAllowed** | **Quantity** |
| * | 2024-10-03 --> 2024-12-03 | 1 | 16 Tablet (Details: SNOMED CT code732936001 = 'Tablet (unit of presentation)') |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "100-3-medication-prescription-request2",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"]
  },
  "identifier" : [{
    "value" : "100-2/3"
  }],
  "groupIdentifier" : {
    "value" : "100"
  },
  "status" : "active",
  "intent" : "order",
  "medication" : {
    "concept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "326766003",
        "display" : "Melphalan 2 mg oral tablet"
      }]
    }
  },
  "subject" : {
    "reference" : "Patient/patient1"
  },
  "authoredOn" : "2024-10-03",
  "requester" : {
    "reference" : "PractitionerRole/doctor1"
  },
  "reason" : [{
    "concept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "109989006",
        "display" : "Multiple myeloma"
      }]
    }
  }],
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "boundsDuration" : {
          "value" : 4,
          "unit" : "day",
          "system" : "http://unitsofmeasure.org",
          "code" : "d"
        },
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 4,
        "unit" : "Tablet",
        "system" : "http://snomed.info/sct",
        "code" : "732936001"
      }
    }]
  }],
  "dispenseRequest" : {
    "validityPeriod" : {
      "start" : "2024-10-03",
      "end" : "2024-12-03"
    },
    "numberOfRepeatsAllowed" : 1,
    "quantity" : {
      "value" : 16,
      "unit" : "Tablet",
      "system" : "http://snomed.info/sct",
      "code" : "732936001"
    }
  }
}

```
