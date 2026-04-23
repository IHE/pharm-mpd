# IHE MPD Order Receiver - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE MPD Order Receiver**

## ActorDefinition: IHE MPD Order Receiver 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/ActorDefinition/IHE.MPD.OrderReceiver | *Version*:1.0.0-comment-2 |
| Active as of 2024-07-08 | *Computable Name*:IHEMPDOrderReceiver |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
The Order Receiver processes received medication orders and may store or forward them for further processing. 



## Resource Content

```json
{
  "resourceType" : "ActorDefinition",
  "id" : "IHE.MPD.OrderReceiver",
  "url" : "https://profiles.ihe.net/PHARM/MPD/ActorDefinition/IHE.MPD.OrderReceiver",
  "version" : "1.0.0-comment-2",
  "name" : "IHEMPDOrderReceiver",
  "title" : "IHE MPD Order Receiver",
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
  "description" : "The Order Receiver processes received medication orders and may store or forward them for further processing.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "type" : "system",
  "capabilities" : "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.OrderReceiverCS"
}

```
