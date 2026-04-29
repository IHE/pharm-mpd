# doctor1 - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **doctor1**

## Example PractitionerRole: doctor1

**practitioner**: [Dr Meryl Ärztin](Practitioner-practitioner1.md)

**organization**: [Dr Ärztin Private Practice](Organization-organization1.md)

**code**: Clinical oncologist



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "doctor1",
  "practitioner" : {
    "reference" : "Practitioner/practitioner1",
    "display" : "Dr Meryl Ärztin"
  },
  "organization" : {
    "reference" : "Organization/organization1",
    "display" : "Dr Ärztin Private Practice"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "309295000",
      "display" : "Clinical oncologist"
    }]
  }]
}

```
