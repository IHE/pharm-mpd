# IHE MPD Order Placer - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE MPD Order Placer**

## ActorDefinition: IHE MPD Order Placer 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/ActorDefinition/IHE.MPD.OrderPlacer | *Version*:1.0.0-comment-2 |
| Active as of 2024-07-08 | *Computable Name*:IHEMPDOrderPlacer |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
The Order Placer is responsible for submitting a medication order to an Order Receiver. 



## Resource Content

```json
{
  "resourceType" : "ActorDefinition",
  "id" : "IHE.MPD.OrderPlacer",
  "url" : "https://profiles.ihe.net/PHARM/MPD/ActorDefinition/IHE.MPD.OrderPlacer",
  "version" : "1.0.0-comment-2",
  "name" : "IHEMPDOrderPlacer",
  "title" : "IHE MPD Order Placer",
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
  "description" : "The Order Placer is responsible for submitting a medication order to an Order Receiver.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "type" : "system",
  "capabilities" : "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.OrderPlacerCS"
}

```
