# activity-resource - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **activity-resource**

## SearchParameter: activity-resource 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/SearchParameter/activity-resource | *Version*:1.0.0-comment-3 |
| Active as of 2026-04-22 | *Computable Name*:ActivityResource |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
Search on the resources that are linked to a RequestOrchestration - important to allow for example _revInclude 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "activity-resource",
  "url" : "https://profiles.ihe.net/PHARM/MPD/SearchParameter/activity-resource",
  "version" : "1.0.0-comment-3",
  "name" : "ActivityResource",
  "status" : "active",
  "date" : "2026-04-22T14:49:45+00:00",
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
  "description" : "Search on the resources that are linked to a RequestOrchestration - important to allow for example _revInclude",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "code" : "activity-resource",
  "base" : ["RequestOrchestration"],
  "type" : "reference",
  "expression" : "RequestOrchestration.action.resource",
  "processingMode" : "normal"
}

```
