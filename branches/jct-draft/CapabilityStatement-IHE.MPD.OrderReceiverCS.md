# IHE MPD Order Receiver Actor (server) - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE MPD Order Receiver Actor (server)**

## CapabilityStatement: IHE MPD Order Receiver Actor (server) 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.OrderReceiverCS | *Version*:1.0.0-comment-2 |
| Active as of 2024-07-08 | *Computable Name*:IHEMPDOrderReceiver |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
The CapabililtyStatement for the [Order Receiver Actor](actors-transactions.md#order-receiver) expresses the compliance requirements for systems implementing the actor. 

 [Raw OpenAPI-Swagger Definition file](IHE.MPD.OrderReceiverCS.openapi.json) | [Download](IHE.MPD.OrderReceiverCS.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MPD.OrderReceiverCS",
  "url" : "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.OrderReceiverCS",
  "version" : "1.0.0-comment-2",
  "name" : "IHEMPDOrderReceiver",
  "title" : "IHE MPD Order Receiver Actor (server)",
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
  "description" : "The CapabililtyStatement for the [Order Receiver Actor](actors-transactions.html#order-receiver) expresses the compliance requirements for systems implementing the actor.",
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
    "documentation" : "The Order Receiver allows Order Placers to send the orders...",
    "security" : {
      "description" : "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
    },
    "resource" : [{
      "type" : "MedicationRequest",
      "supportedProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"]
    }]
  }]
}

```
