# IHE MPD Order Responder Actor (server) - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE MPD Order Responder Actor (server)**

## CapabilityStatement: IHE MPD Order Responder Actor (server) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.OrderResponderCS | *Version*:1.0.0-comment-2 |
| Active as of 2024-07-08 | *Computable Name*:IHEMPDOrderResponder |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
The CapabililtyStatement for the [Order Responder Actor](actors-transactions.md#order-responder) expresses the compliance requirements for systems implementing the actor. 

 [Raw OpenAPI-Swagger Definition file](IHE.MPD.OrderResponderCS.openapi.json) | [Download](IHE.MPD.OrderResponderCS.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MPD.OrderResponderCS",
  "url" : "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.OrderResponderCS",
  "version" : "1.0.0-comment-2",
  "name" : "IHEMPDOrderResponder",
  "title" : "IHE MPD Order Responder Actor (server)",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-07-08T16:49:44+00:00",
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
  "description" : "The CapabililtyStatement for the [Order Responder Actor](actors-transactions.html#order-responder) expresses the compliance requirements for systems implementing the actor.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "The Order Responder allows Order Consumers to check the orders.",
    "security" : {
      "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
    },
    "resource" : [{
      "type" : "MedicationRequest",
      "supportedProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"],
      "searchRevInclude" : ["['RequestOrchestration:activity-resource:MedicationRequest']"],
      "searchParam" : [{
        "name" : "group-or-identifier",
        "definition" : "https://profiles.ihe.net/PHARM/MPD/SearchParameter/group-or-identifier",
        "type" : "token",
        "documentation" : "Search on Group Or Identifier"
      }]
    },
    {
      "type" : "Task",
      "interaction" : [{
        "code" : "vread"
      },
      {
        "code" : "create",
        "documentation" : "Submit Medication Order [PHARM-5]"
      },
      {
        "code" : "update",
        "documentation" : "Update Medication Order [PHARM-5]"
      },
      {
        "code" : "delete"
      },
      {
        "code" : "history-instance"
      },
      {
        "code" : "search-type",
        "documentation" : "conditional delete for Medication ORder [PHARM-5] for Remove Patient Option"
      }],
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "single"
    },
    {
      "type" : "RequestOrchestration",
      "interaction" : [{
        "code" : "create",
        "documentation" : "Create MedicationOrders [PHARM-5]"
      }],
      "conditionalCreate" : true,
      "conditionalUpdate" : true,
      "conditionalDelete" : "single",
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Search on Patient"
      },
      {
        "name" : "activity-resource",
        "definition" : "https://profiles.ihe.net/PHARM/MPD/SearchParameter/activity-resource",
        "type" : "reference",
        "documentation" : "Activity Resource"
      }]
    }]
  }]
}

```
