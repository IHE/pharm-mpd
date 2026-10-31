# Medication Order Notification Status - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Order Notification Status**

## Resource Profile: Medication Order Notification Status 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrderNotificationStatus | *Version*:1.0.0-comment-3 |
| Active as of 2026-10-31 | *Computable Name*:IHEMedicationOrderNotificationStatus |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
SubscriptionStatus for the Order Bundle Option of [PHARM-6]. The focus is the main resource of the notification: the MedicationRequest, the RequestOrchestration, or the Task when one is included (in line with HL7 COW). 

**Usages:**

* Use this Profile: [Medication Order Notification Bundle](StructureDefinition-IHEMedicationOrderNotificationBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.pharm.mpd|current/StructureDefinition/StructureDefinition-IHEMedicationOrderNotificationStatus.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHEMedicationOrderNotificationStatus.csv), [Excel](StructureDefinition-IHEMedicationOrderNotificationStatus.xlsx), [Schematron](StructureDefinition-IHEMedicationOrderNotificationStatus.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHEMedicationOrderNotificationStatus",
  "url" : "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrderNotificationStatus",
  "version" : "1.0.0-comment-3",
  "name" : "IHEMedicationOrderNotificationStatus",
  "title" : "Medication Order Notification Status",
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
  "description" : "SubscriptionStatus for the Order Bundle Option of [PHARM-6]. The focus is the main resource of the notification: the MedicationRequest, the RequestOrchestration, or the Task when one is included (in line with HL7 COW).",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "SubscriptionStatus",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/SubscriptionStatus",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "SubscriptionStatus.type",
      "path" : "SubscriptionStatus.type",
      "patternCode" : "event-notification"
    },
    {
      "id" : "SubscriptionStatus.notificationEvent",
      "path" : "SubscriptionStatus.notificationEvent",
      "min" : 1
    },
    {
      "id" : "SubscriptionStatus.notificationEvent.focus",
      "path" : "SubscriptionStatus.notificationEvent.focus",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/MedicationRequest",
        "http://hl7.org/fhir/StructureDefinition/RequestOrchestration",
        "http://hl7.org/fhir/StructureDefinition/Task"]
      }]
    },
    {
      "id" : "SubscriptionStatus.notificationEvent.additionalContext",
      "path" : "SubscriptionStatus.notificationEvent.additionalContext",
      "short" : "Other order resources in the notification (e.g. the other order items of the order)"
    },
    {
      "id" : "SubscriptionStatus.subscription",
      "path" : "SubscriptionStatus.subscription",
      "short" : "The subscription - for implicit subscriptions, a logical reference (identifier) agreed between the parties"
    }]
  }
}

```
