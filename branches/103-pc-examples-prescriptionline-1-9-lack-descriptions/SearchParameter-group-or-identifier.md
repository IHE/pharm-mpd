# group-or-identifier - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **group-or-identifier**

## SearchParameter: group-or-identifier 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/SearchParameter/group-or-identifier | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-22 | *Computable Name*:GroupOrIdentifier |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Single search on both request.identifier or groupIdentifier 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "group-or-identifier",
  "url" : "https://profiles.ihe.net/PHARM/MPD/SearchParameter/group-or-identifier",
  "version" : "1.0.0-comment-3",
  "name" : "GroupOrIdentifier",
  "status" : "active",
  "date" : "2026-04-22T13:12:14+00:00",
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
  "description" : "Single search on both request.identifier or groupIdentifier",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "code" : "group-or-identifier",
  "base" : ["MedicationRequest"],
  "type" : "token",
  "expression" : "MedicationRequest.groupIdentifier | MedicationRequest.identifier",
  "processingMode" : "normal"
}

```
