# 10-dispense-1 - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **10-dispense-1**

## Example MedicationDispense: 10-dispense-1

Profile: [IHE Medication Dispense](StructureDefinition-IHEMedicationDispense.md)

**status**: Completed

### Medications

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Cefuroxime MIP 1500 mg, powder for solution for injection/infusion. N10.](Medication-01C-Cefuroxime1500Branded.md) |

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Pharmacist](PractitionerRole-pharmacist1.md) |

**authorizingPrescription**: [MedicationRequest: identifier = 10-123EP; status = active; intent = order; authoredOn = 2024-12-06](MedicationRequest-10-prescription-cefuroxime-singleline.md)

**quantity**: 1 1 (Details: UCUM code1 = '1')

**daysSupply**: 3 day(s) (Details: UCUM coded = 'd')

**whenHandedOver**: 2024-12-06 19:54:00+0000



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "10-dispense-1",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispense"]
  },
  "status" : "completed",
  "medication" : {
    "reference" : {
      "reference" : "Medication/01C-Cefuroxime1500Branded",
      "display" : "Cefuroxime MIP 1500 mg, powder for solution for injection/infusion. N10."
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
    "reference" : "MedicationRequest/10-prescription-cefuroxime-singleline"
  }],
  "quantity" : {
    "value" : 1,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "daysSupply" : {
    "value" : 3,
    "unit" : "day(s)",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "whenHandedOver" : "2024-12-06T19:54:00Z"
}

```
