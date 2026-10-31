# IHE MPD Dispense Consumer Actor - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE MPD Dispense Consumer Actor**

## CapabilityStatement: IHE MPD Dispense Consumer Actor 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.DispenseConsumerCS | *Version*:1.0.0-comment-3 |
| Active as of 2024-07-08 | *Computable Name*:IHEMPDDispenseConsumer |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
The CapabilityStatement for the [Dispense Consumer Actor](actors-transactions.md#dispense-consumer) describes the requirements for systems that retrieve dispense data. 

 [Raw OpenAPI-Swagger Definition file](IHE.MPD.DispenseConsumerCS.openapi.json) | [Download](IHE.MPD.DispenseConsumerCS.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "IHE.MPD.DispenseConsumerCS",
  "url" : "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.DispenseConsumerCS",
  "version" : "1.0.0-comment-3",
  "name" : "IHEMPDDispenseConsumer",
  "title" : "IHE MPD Dispense Consumer Actor",
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
  "description" : "The CapabilityStatement for the [Dispense Consumer Actor](actors-transactions.html#dispense-consumer) describes the requirements for systems that retrieve dispense data.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+json", "application/fhir+xml"],
  "rest" : [{
    "mode" : "client",
    "documentation" : "The Dispense Consumer retrieves dispense data.",
    "security" : {
      "description" : "Recommended security framework: ATNA, IUA, or SMART-on-FHIR."
    },
    "resource" : [{
      "type" : "MedicationDispense",
      "supportedProfile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispense"],
      "interaction" : [{
        "code" : "read",
        "documentation" : "Retrieve a MedicationDispense [PHARM-9]"
      }]
    }]
  }]
}

```
