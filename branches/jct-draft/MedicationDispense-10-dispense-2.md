# 10-dispense-2 - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **10-dispense-2**

## Example MedicationDispense: 10-dispense-2

Profile: [IHE Medication Dispense](StructureDefinition-IHEMedicationDispense.md)

**status**: Completed

### Medications

| | |
| :--- | :--- |
| - | **Reference** |
| * | [Cefuroxime MIP 750 mg, powder for solution for injection. N5.](Medication-01D-Cefuroxime750Branded.md) |

**subject**: [Thomas Engine Male, DoB: 1950-09-15 ( 12345)](Patient-patient1.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Pharmacist](PractitionerRole-pharmacist1.md) |

**authorizingPrescription**: [MedicationRequest: identifier = 10-123EP; status = active; intent = order; authoredOn = 2024-12-06](MedicationRequest-10-prescription-cefuroxime-singleline.md)

**quantity**: 3 1 (Details: UCUM code1 = '1')

**daysSupply**: 4 day(s) (Details: UCUM coded = 'd')

**whenHandedOver**: 2024-12-09 10:55:00+0000



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "10-dispense-2",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispense"]
  },
  "status" : "completed",
  "medication" : {
    "reference" : {
      "reference" : "Medication/01D-Cefuroxime750Branded",
      "display" : "Cefuroxime MIP 750 mg, powder for solution for injection. N5."
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
    "value" : 3,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "daysSupply" : {
    "value" : 4,
    "unit" : "day(s)",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "whenHandedOver" : "2024-12-09T10:55:00Z"
}

```
