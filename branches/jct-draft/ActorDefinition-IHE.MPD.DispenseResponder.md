# IHE MPD Dispense Responder - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE MPD Dispense Responder**

## ActorDefinition: IHE MPD Dispense Responder 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/ActorDefinition/IHE.MPD.DispenseResponder | *Version*:1.0.0-comment-2 |
| Active as of 2024-07-08 | *Computable Name*:IHEMPDDispenseResponder |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
The Dispense Responder provides access to dispense records to the Dispense Consumer. 



## Resource Content

```json
{
  "resourceType" : "ActorDefinition",
  "id" : "IHE.MPD.DispenseResponder",
  "url" : "https://profiles.ihe.net/PHARM/MPD/ActorDefinition/IHE.MPD.DispenseResponder",
  "version" : "1.0.0-comment-2",
  "name" : "IHEMPDDispenseResponder",
  "title" : "IHE MPD Dispense Responder",
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
  "description" : "The Dispense Responder provides access to dispense records to the Dispense Consumer.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "type" : "system",
  "capabilities" : "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.DispenseResponderCS"
}

```
