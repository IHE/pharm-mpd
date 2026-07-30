# IHE Medication Order - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Medication Order**

## Resource Profile: IHE Medication Order 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-29 | *Computable Name*:IHEMedicationOrder |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
IHE Medication Order profile 

**Usages:**

* Refer to this Profile: [Medication order (model)](StructureDefinition-IHEMedicationOrderModel.md)
* Examples for this Profile: [MedicationRequest/10-prescription-cefuroxime-singleline](MedicationRequest-10-prescription-cefuroxime-singleline.md), [MedicationRequest/100-3-medication-prescription-request1](MedicationRequest-100-3-medication-prescription-request1.md), [MedicationRequest/100-3-medication-prescription-request2](MedicationRequest-100-3-medication-prescription-request2.md) and [MedicationRequest/100-3-medication-prescription-request3](MedicationRequest-100-3-medication-prescription-request3.md)
* CapabilityStatements using this Profile: [IHE MPD Dispense Receiver Actor (server)](CapabilityStatement-IHE.MPD.DispenseReceiverCS.md), [IHE MPD Dispense Responder Actor (server)](CapabilityStatement-IHE.MPD.DispenseResponderCS.md), [IHE MPD Order Consumer Actor](CapabilityStatement-IHE.MPD.OrderConsumerCS.md), [IHE MPD Order Placer Actor](CapabilityStatement-IHE.MPD.OrderPlacerCS.md)... Show 2 more, [IHE MPD Order Receiver Actor (server)](CapabilityStatement-IHE.MPD.OrderReceiverCS.md) and [IHE MPD Order Responder Actor (server)](CapabilityStatement-IHE.MPD.OrderResponderCS.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.pharm.mpd|current/StructureDefinition/IHEMedicationOrder)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHEMedicationOrder.csv), [Excel](StructureDefinition-IHEMedicationOrder.xlsx), [Schematron](StructureDefinition-IHEMedicationOrder.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHEMedicationOrder",
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder",
  "version" : "1.0.0-comment-3",
  "name" : "IHEMedicationOrder",
  "title" : "IHE Medication Order",
  "status" : "active",
  "date" : "2026-04-29T13:37:51+00:00",
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
  "description" : "IHE Medication Order profile",
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
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest"
    },
    {
      "id" : "MedicationRequest.extension",
      "path" : "MedicationRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationRequest.extension:offLabel",
      "path" : "MedicationRequest.extension",
      "sliceName" : "offLabel",
      "short" : "Indicates that the prescriber has knowingly prescribed the medication for an indication, age group, dosage, or route of administration that is not approved by the regulatory agencies and is not mentioned in the prescribing information for the product.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-offLabel"]
      }]
    },
    {
      "id" : "MedicationRequest.identifier",
      "path" : "MedicationRequest.identifier",
      "short" : "Prescription/prescribed item ID",
      "comment" : "It is the prescription ID if the presciption includes only one prescribed item"
    },
    {
      "id" : "MedicationRequest.groupIdentifier",
      "path" : "MedicationRequest.groupIdentifier",
      "short" : "Prescription this is part of. Not needed if a presciption includes only one prescribed item.",
      "comment" : "It is the prescription ID if the presciption includes multiple prescribed items",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "short" : "Status of the order",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.statusReason",
      "path" : "MedicationRequest.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category",
      "path" : "MedicationRequest.category",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication",
      "path" : "MedicationRequest.medication",
      "type" : [{
        "code" : "CodeableReference",
        "targetProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "min" : 1
    },
    {
      "id" : "MedicationRequest.recorder",
      "path" : "MedicationRequest.recorder",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.reason",
      "path" : "MedicationRequest.reason",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.note",
      "path" : "MedicationRequest.note",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.effectiveDosePeriod",
      "path" : "MedicationRequest.effectiveDosePeriod",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "short" : "How the medication should be taken.",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.text",
      "path" : "MedicationRequest.dosageInstruction.text",
      "short" : "Free text dosage instructions"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.patientInstruction",
      "path" : "MedicationRequest.dosageInstruction.patientInstruction",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing",
      "path" : "MedicationRequest.dosageInstruction.timing",
      "short" : "Administration schedule"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.duration",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.duration",
      "short" : "Duration of the treatment"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
      "short" : "Frequency times per period"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.period",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.period",
      "short" : "Duration of time over which repetitions are to occur"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.periodUnit",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.periodUnit",
      "short" : "Unit of the period (e.g. day)"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.code",
      "path" : "MedicationRequest.dosageInstruction.timing.code",
      "short" : "A code for the timing schedule."
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route",
      "path" : "MedicationRequest.dosageInstruction.route",
      "short" : "Route of administration"
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]:doseQuantity",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "sliceName" : "doseQuantity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
      }]
    },
    {
      "id" : "MedicationRequest.dispenseRequest.extension",
      "path" : "MedicationRequest.dispenseRequest.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationRequest.dispenseRequest.extension:prescribedQuantity",
      "path" : "MedicationRequest.dispenseRequest.extension",
      "sliceName" : "prescribedQuantity",
      "short" : "Overall amount of product prescribed, independent from the number of repeats.",
      "definition" : "When Medication resource implies a pack size, prescribedQuantity should convey number of packages. When the Medication does not imply an amount, overall amount could be in tablets or millilitres.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/ihe-ext-medicationrequest-prescribedQuantity"]
      }]
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.substitution",
      "path" : "MedicationRequest.substitution",
      "mustSupport" : true
    }]
  }
}

```
