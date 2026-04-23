# IHE Medication Dispense - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Medication Dispense**

## Resource Profile: IHE Medication Dispense 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispense | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-23 | *Computable Name*:IHEMedicationDispense |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
MedicationDispense profile for capturing dispensation information based on a medication prescription. 

**Usages:**

* Examples for this Profile: [MedicationDispense/10-dispense-1](MedicationDispense-10-dispense-1.md), [MedicationDispense/10-dispense-2](MedicationDispense-10-dispense-2.md) and [MedicationDispense/300-dispense-for-2-requests](MedicationDispense-300-dispense-for-2-requests.md)
* CapabilityStatements using this Profile: [IHE MPD Dispense Consumer Actor](CapabilityStatement-IHE.MPD.DispenseConsumerCS.md) and [IHE MPD Dispense Reporter Actor (server)](CapabilityStatement-IHE.MPD.DispenseReporterCS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/IHEMedicationDispense)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHEMedicationDispense.csv), [Excel](StructureDefinition-IHEMedicationDispense.xlsx), [Schematron](StructureDefinition-IHEMedicationDispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHEMedicationDispense",
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispense",
  "version" : "1.0.0-comment-3",
  "name" : "IHEMedicationDispense",
  "title" : "IHE Medication Dispense",
  "status" : "active",
  "date" : "2026-04-23T07:28:39+00:00",
  "publisher" : "Integrating the Healthcare Enterprise (IHE)",
  "contact" : [{
    "name" : "Integrating the Healthcare Enterprise (IHE)",
    "telecom" : [{
      "system" : "url",
      "value" : "http://ihe.net"
    },
    {
      "system" : "email",
      "value" : "secretary@ihe.net"
    }]
  },
  {
    "name" : "José Costa Teixeira",
    "telecom" : [{
      "system" : "email",
      "value" : "jose.a.teixeira@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "MedicationDispense profile for capturing dispensation information based on a medication prescription.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "rx-dispense-rmim",
    "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
    "name" : "V3 Pharmacy Dispense RMIM"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationDispense",
      "path" : "MedicationDispense"
    },
    {
      "id" : "MedicationDispense.identifier",
      "path" : "MedicationDispense.identifier",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.status",
      "path" : "MedicationDispense.status",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.notPerformedReason",
      "path" : "MedicationDispense.notPerformedReason",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.medication",
      "path" : "MedicationDispense.medication",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.subject",
      "path" : "MedicationDispense.subject",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.performer.actor",
      "path" : "MedicationDispense.performer.actor",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.authorizingPrescription",
      "path" : "MedicationDispense.authorizingPrescription",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.quantity",
      "path" : "MedicationDispense.quantity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.whenHandedOver",
      "path" : "MedicationDispense.whenHandedOver",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.receiver",
      "path" : "MedicationDispense.receiver",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.note",
      "path" : "MedicationDispense.note",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.wasSubstituted",
      "path" : "MedicationDispense.substitution.wasSubstituted",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.reason",
      "path" : "MedicationDispense.substitution.reason",
      "short" : "Why substitution was (or was not) done"
    }]
  }
}

```
