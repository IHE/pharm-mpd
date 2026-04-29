# IHE MPD Dispense Consumer - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE MPD Dispense Consumer**

## ActorDefinition: IHE MPD Dispense Consumer 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/ActorDefinition/IHE.MPD.DispenseConsumer | *Version*:1.0.0-comment-2 |
| Active as of 2024-07-08 | *Computable Name*:IHEMPDDispenseConsumer |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
The Dispense Consumer retrieves dispense records from the Dispense Responder. 



## Resource Content

```json
{
  "resourceType" : "ActorDefinition",
  "id" : "IHE.MPD.DispenseConsumer",
  "url" : "https://profiles.ihe.net/PHARM/MPD/ActorDefinition/IHE.MPD.DispenseConsumer",
  "version" : "1.0.0-comment-2",
  "name" : "IHEMPDDispenseConsumer",
  "title" : "IHE MPD Dispense Consumer",
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
  "description" : "The Dispense Consumer retrieves dispense records from the Dispense Responder.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "type" : "system",
  "capabilities" : "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.DispenseConsumerCS"
}

```
