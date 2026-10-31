# Medication Order Notification Bundle - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Order Notification Bundle**

## Resource Profile: Medication Order Notification Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrderNotificationBundle | *Version*:1.0.0-comment-3 |
| Active as of 2026-10-31 | *Computable Name*:IHEMedicationOrderNotificationBundle |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Bundle for the Order Bundle Option of Submit Medication Order [PHARM-6]: a subscription-notification Bundle, aligned with HL7 Clinical Order Workflows (COW), that carries a medication order - one or more order items - together with the resources needed to act on them. 

**Usages:**

* Examples for this Profile: [Bundle/pharm6-notification-multi-line](Bundle-pharm6-notification-multi-line.md) and [Bundle/pharm6-notification-single-line](Bundle-pharm6-notification-single-line.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.mpd|current/StructureDefinition/StructureDefinition-IHEMedicationOrderNotificationBundle.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHEMedicationOrderNotificationBundle.csv), [Excel](StructureDefinition-IHEMedicationOrderNotificationBundle.xlsx), [Schematron](StructureDefinition-IHEMedicationOrderNotificationBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHEMedicationOrderNotificationBundle",
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrderNotificationBundle",
  "version" : "1.0.0-comment-3",
  "name" : "IHEMedicationOrderNotificationBundle",
  "title" : "Medication Order Notification Bundle",
  "status" : "active",
  "date" : "2026-10-31T22:42:59+00:00",
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
  "description" : "Bundle for the Order Bundle Option of Submit Medication Order [PHARM-6]: a subscription-notification Bundle, aligned with HL7 Clinical Order Workflows (COW), that carries a medication order - one or more order items - together with the resources needed to act on them.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "subscription-notification"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "description" : "Slices by resource type",
        "rules" : "open"
      },
      "min" : 3
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:status",
      "path" : "Bundle.entry",
      "sliceName" : "status",
      "short" : "The notification status - first entry of the Bundle",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:status.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "SubscriptionStatus",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrderNotificationStatus"]
      }]
    },
    {
      "id" : "Bundle.entry:order",
      "path" : "Bundle.entry",
      "sliceName" : "order",
      "short" : "The order items of the medication order - one MedicationRequest per order item",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:order.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "MedicationRequest",
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"]
      }]
    },
    {
      "id" : "Bundle.entry:orchestration",
      "path" : "Bundle.entry",
      "sliceName" : "orchestration",
      "short" : "Optional coordination of the order items (e.g. start together); groupIdentifier may be sufficient",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:orchestration.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "RequestOrchestration"
      }]
    },
    {
      "id" : "Bundle.entry:patient",
      "path" : "Bundle.entry",
      "sliceName" : "patient",
      "short" : "The subject of the order",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:patient.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient"
      }]
    },
    {
      "id" : "Bundle.entry:task",
      "path" : "Bundle.entry",
      "sliceName" : "task",
      "short" : "Coordination Task, when the Placer includes one (open issue: to be confirmed with HL7 COW)",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:task.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Task"
      }]
    }]
  }
}

```
