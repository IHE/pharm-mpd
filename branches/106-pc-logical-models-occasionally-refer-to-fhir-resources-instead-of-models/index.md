# IHE MPD (Medication Prescription and Dispense) - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* **IHE MPD (Medication Prescription and Dispense)**

## IHE MPD (Medication Prescription and Dispense)

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MPD/ImplementationGuide/ihe.pharm.mpd | *Version*:1.0.0-comment-3 |
| Active as of 2025-05-08 | *Computable Name*:IHE_PHARM_MPD |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

The IHE MPD profile defines global data exchange specifications for medication prescription and dispense, in different settings and compatible with different workflows and jurisdictions.

The main goals of this Profile are:

* Support implementers of Pharmacy systems - simple or complex, local, national or cross-border.
* Provide common specifications for systems implementing or migrating to FHIR from previous standards, like HL7 v2 or HL7 CDA.
* Support vendors of software in allowing their software to support all the use cases involving Medication Prescription and Dispense while retaining a simple, modular interoperability framework that is less costly to implement and maintain.

## Overview

The MPD Profile describes

* actors and transactions for creating, updating, searching and reading prescriptions and any other types of medication orders;
* actors and transactions for creating, updating, searching and dispense reports, as well as consulting them;
* core concepts that are impactful to these specifications or to their use

## Organization of This Guide

### Volume 1: Use Cases and Standards

This section delves into functional aspects, detailing various use cases, and standardizing them for a global perspective.

* **Prescriptions**: Types and content of prescriptions.
* **Order Grouping**: Grouping of orders with and without interdependencies.
* **Ordering Workflows**: Common workflow aspects for medication ordering, considering approval, review, etc. with allowances for jurisdiction-specific requirements.

### Volume 2: Transactions

This technical section focuses on the technical data exchange, defining each of the transactions - their triggers, expected results, and semantics.

### Volume 3: Content and Terminology

Volume 3 describes data structures and terminology supporting this specification.

* **Medication Resource Definition**: A common data structure to represent any medication.
* **Terminologies**: Common terminologies for he product and its attributes.

### Related work:

#### HL7 Europe and European specifications

The IHE MPD Work was initiated based on the existing IHE profiles and anticipating a FHIR implementation, but has been decisively supported by HL7 Europe, who has worked on [related specifications](http://hl7.eu/fhir/mpd), which are related to past and ongoing projects and specifications that may be relevant.:

#### HL7 Gemini

IHE MPD is a Gemini project. This means that while the specification is edited and hosted by IHE, it has gone through review with the interested parties (work groups) at HL7 international. A single balloting process is used - while this is hosted by IHE, HL7 members have participated in the discussions and are also invited to participate in the comment process.

#### IHE Pharmacy profiles:

##### CMPD

the [IHE Community Medication Prescription and Dispense](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharmacy_Suppl_CMPD.pdf) is a CDA-based specification of Prescription and Dispense documents. The current IHE MPD profile covers a superset of the functionalities in CMPD, to allow transitioning from CDA-based architeture to FHIR-based interoperability.

##### MMA

The [IHE Mobile Medication Administration](https://www.ihe.net/uploadedFiles/Documents/Pharmacy/IHE_Pharm_Suppl_MMA.pdf) supports the request and report of medication administrations. The Medication Administration is a specific type of medication order, and therefore is technically compatible with the current profile, but is further specified in the MMA profile.

-------

### Dependencies

This IG Contains the following dependencies on other IGs.



### Cross Version Analysis

### Global Profiles

*There are no Global profiles defined*

### Intellectual Property

This publication includes IP covered under the following statements.

* This material contains content that is copyright of SNOMED International. Implementers of these specifications must have the appropriate SNOMED CT Affiliate license - for more information contact [https://www.snomed.org/get-snomed](https://www.snomed.org/get-snomed) or [info@snomed.org](mailto:info@snomed.org).

* SNOMED Clinical Terms&reg; (SNOMED CT&reg;): [Bundle/200-multiitem-prescription-without-orchestration](Bundle-200-multiitem-prescription-without-orchestration.md), [IHEMedication](StructureDefinition-IHEMedication.md)... Show 16 more, [Medication/01A-Cefuroxime1500GenericExplicit](Medication-01A-Cefuroxime1500GenericExplicit.md), [Medication/01B-Cefuroxime1500GenericConcept](Medication-01B-Cefuroxime1500GenericConcept.md), [Medication/01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md), [Medication/01D-Cefuroxime750Branded](Medication-01D-Cefuroxime750Branded.md), [Medication/02A1-CanifugCremolumCreamItem](Medication-02A1-CanifugCremolumCreamItem.md), [Medication/02A2-CanifugCremolumPessaryItem](Medication-02A2-CanifugCremolumPessaryItem.md), [Medication/03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md), [Medication/04-FirmagonBranded](Medication-04-FirmagonBranded.md), [Medication/05A-Tilidin-Branded](Medication-05A-Tilidin-Branded.md), [MedicationRequest/10-prescription-cefuroxime-singleline](MedicationRequest-10-prescription-cefuroxime-singleline.md), [MedicationRequest/100-3-medication-prescription-request1](MedicationRequest-100-3-medication-prescription-request1.md), [MedicationRequest/100-3-medication-prescription-request2](MedicationRequest-100-3-medication-prescription-request2.md), [MedicationRequest/100-3-medication-prescription-request3](MedicationRequest-100-3-medication-prescription-request3.md), [MedicationStrengthSubstance](StructureDefinition-ihe-ext-medication-strengthsubstance.md), [PractitionerRole/doctor1](PractitionerRole-doctor1.md) and [PractitionerRole/pharmacist1](PractitionerRole-pharmacist1.md)


* This material derives from the HL7 Terminology (THO). THO is copyright ©1989+ Health Level Seven International and is made available under the CC0 designation. For more licensing information see: [https://terminology.hl7.org/license.html](https://terminology.hl7.org/license.html)

* [Common Tags](http://terminology.hl7.org/7.1.0/CodeSystem-common-tags.html): [MedicationRequest/10-prescription-cefuroxime-singleline](MedicationRequest-10-prescription-cefuroxime-singleline.md)
* [MedicationKnowledge Characteristic Codes](http://terminology.hl7.org/7.1.0/CodeSystem-medicationknowledge-characteristic.html): [MedicationCharacteristic](StructureDefinition-ihe-ext-medication-characteristic.md)


* Unless otherwise indicated, reproduction of material posted on Council of Europe websites, and reproduction of photographs for which the Council of Europe holds copyright – see legal notice \“photo credits\” – is authorised for private use and for informational and educational uses relating to the Council of Europe’s work. This authorisation is subject to the condition that the source be indicated and no charge made for reproduction. Persons wishing to make some other use than those specified above, including commercial use, of information and text posted on these sites are asked to apply for prior written authorisation to the Council of Europe, Directorate of Communication.

* [EDQM Standard Terms](http://tx.fhir.org/r5/ValueSet/edqm): [Medication/01A-Cefuroxime1500GenericExplicit](Medication-01A-Cefuroxime1500GenericExplicit.md), [Medication/01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md)... Show 8 more, [Medication/01D-Cefuroxime750Branded](Medication-01D-Cefuroxime750Branded.md), [Medication/02A-ClotrimazoleCanifugCremolum](Medication-02A-ClotrimazoleCanifugCremolum.md), [Medication/02A1-CanifugCremolumCreamItem](Medication-02A1-CanifugCremolumCreamItem.md), [Medication/02A2-CanifugCremolumPessaryItem](Medication-02A2-CanifugCremolumPessaryItem.md), [Medication/03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md), [Medication/04-FirmagonBranded](Medication-04-FirmagonBranded.md), [Medication/05A-Tilidin-Branded](Medication-05A-Tilidin-Branded.md) and [MedicationRequest/10-prescription-cefuroxime-singleline](MedicationRequest-10-prescription-cefuroxime-singleline.md)


* WHO Collaborating Centre for Drug Statistics Methodology, Oslo, Norway. Use of all or parts of the material requires reference to the WHO Collaborating Centre for Drug Statistics Methodology. Copying and distribution for commercial purposes is not allowed. Changing or manipulating the material is not allowed.

* [ATC classification system](http://tx.fhir.org/r5/ValueSet/atc): [Medication/01A-Cefuroxime1500GenericExplicit](Medication-01A-Cefuroxime1500GenericExplicit.md), [Medication/01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md)... Show 5 more, [Medication/01D-Cefuroxime750Branded](Medication-01D-Cefuroxime750Branded.md), [Medication/02A-ClotrimazoleCanifugCremolum](Medication-02A-ClotrimazoleCanifugCremolum.md), [Medication/03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md), [Medication/04-FirmagonBranded](Medication-04-FirmagonBranded.md) and [MedicationClassification](StructureDefinition-ihe-ext-medication-classification.md)




## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "ihe.pharm.mpd",
  "url" : "https://profiles.ihe.net/PHARM/MPD/ImplementationGuide/ihe.pharm.mpd",
  "version" : "1.0.0-comment-3",
  "name" : "IHE_PHARM_MPD",
  "title" : "Medication Prescription and Dispense (MPD)",
  "status" : "active",
  "date" : "2025-05-08",
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
  "description" : "ImplementationGuide for IHE Pharmacy Medication Prescription and Dispense (MPD) profile",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "packageId" : "ihe.pharm.mpd",
  "license" : "CC-BY-SA-4.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.2.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.2"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/01A-Cefuroxime1500GenericExplicit"
      },
      "name" : "01A-Cefuroxime1500GenericExplicit",
      "description" : "1A. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by attributes.",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/01B-Cefuroxime1500GenericConcept"
      },
      "name" : "01B-Cefuroxime1500GenericConcept",
      "description" : "1B. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by a code system (receiving system is expected to have access to the code system for additional attributes or display names).",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/01C-Cefuroxime1500Branded"
      },
      "name" : "01C-Cefuroxime1500Branded",
      "description" : "1C. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Branded packaged product, defined by attributes.",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/01D-Cefuroxime750Branded"
      },
      "name" : "01D-Cefuroxime750Branded",
      "description" : "1D. Cefuroxime 750mg powder for solution in a vial (5 vials per package). Branded packaged product, defined by attributes.",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/02A-ClotrimazoleCanifugCremolum"
      },
      "name" : "02A-ClotrimazoleCanifugCremolum",
      "description" : "2A. Clotrimazole cream 10mg/g and 6 pessaries 100g. Branded packaged product, consisting of different medication items. Defined by attributes.",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/02A1-CanifugCremolumCreamItem"
      },
      "name" : "02A1-CanifugCremolumCreamItem",
      "description" : "2A2. Clotrimazole cream (10mg/g, 1 tube of 20g) as part of Canifug Cremolum product (ISO IDMP manufactured item)",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/02A2-CanifugCremolumPessaryItem"
      },
      "name" : "02A2-CanifugCremolumPessaryItem",
      "description" : "2A1. Clotrimazole pessary (6 pessaries of 100mg) as part of Canifug Cremolum product (ISO IDMP manufactured item)",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/03B-VitaminBComplexBranded"
      },
      "name" : "03B-VitaminBComplexBranded",
      "description" : "3B. Milgamma N, B-vitamin complex. Branded packaged product, defined by attributes.",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/04-FirmagonBranded"
      },
      "name" : "04-FirmagonBranded",
      "description" : "4A. Firmagon. Branded packaged product, defined by attributes, includes administration devices.",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Medication"
      }],
      "reference" : {
        "reference" : "Medication/05A-Tilidin-Branded"
      },
      "name" : "05A-Tilidin-Branded",
      "description" : "05A. Tilidin (50mg), Naloxon (4mg) oral drops. Branded packaged product, defined by attributes. Unusual strength.",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/10-dispense-1"
      },
      "name" : "10-dispense-1",
      "description" : "Medication dispense fulfilling the first part of the order: 1 package containing 10 vials",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispense"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/10-dispense-2"
      },
      "name" : "10-dispense-2",
      "description" : "Medication dispense fulfilling the second part of the order: 3 packages containing 5 vials each",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispense"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/10-prescription-cefuroxime-singleline"
      },
      "name" : "10-prescription-cefuroxime-singleline",
      "description" : "A prescription/request with one medication and changing dosaging. Uses 'actionable' tag. Cefuroxime sodium.",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/100-3-medication-prescription-request1"
      },
      "name" : "100-3-medication-prescription-request1",
      "description" : "A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Thalidomide 50mgx4 once a day before bed for 42 days.",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/100-3-medication-prescription-request2"
      },
      "name" : "100-3-medication-prescription-request2",
      "description" : "A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Melphalan 2mgx4 once a day for 4 days in the beginning of cycle.",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/100-3-medication-prescription-request3"
      },
      "name" : "100-3-medication-prescription-request3",
      "description" : "A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Prednisone 50mgx3 once a day for 4 days in the beginning of cycle.",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/200-multiitem-prescription-without-orchestration"
      },
      "name" : "200-multiitem-prescription-without-orchestration",
      "description" : "Multiitem prescription where items on the same prescription are not interdependent. Kept together by the same groupIdentifier.",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationDispense"
      }],
      "reference" : {
        "reference" : "MedicationDispense/300-dispense-for-2-requests"
      },
      "name" : "300-dispense-for-2-requests",
      "description" : "Medication dispense dispensing one combination product for two prescribed products (multiitem prescription)",
      "isExample" : true,
      "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispense"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/activity-resource"
      },
      "name" : "activity-resource",
      "description" : "Search on the resources that are linked to a RequestOrchestration - important to allow for example _revInclude",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DeviceBasic"
      },
      "name" : "Device (model)",
      "description" : "Logical model for a device (basic data relevant for the IHE MPD use cases)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/doctor1"
      },
      "name" : "doctor1",
      "description" : "Dr Meryl Ärztin - clinical oncologist",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DosagingInformation"
      },
      "name" : "Dosaging (model)",
      "description" : "Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "SearchParameter"
      }],
      "reference" : {
        "reference" : "SearchParameter/group-or-identifier"
      },
      "name" : "group-or-identifier",
      "description" : "Single search on both request.identifier or groupIdentifier",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/IHEMedication"
      },
      "name" : "IHE Medication",
      "description" : "Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/IHEMedicationDispense"
      },
      "name" : "IHE Medication Dispense",
      "description" : "MedicationDispense profile for capturing dispensation information based on a medication prescription.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/IHEMedicationOrder"
      },
      "name" : "IHE Medication Order",
      "description" : "IHE Medication Order profile",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/IHE.MPD.DispenseConsumer"
      },
      "name" : "IHE MPD Dispense Consumer",
      "description" : "The Dispense Consumer retrieves dispense records from the Dispense Responder.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/IHE.MPD.DispenseConsumerCS"
      },
      "name" : "IHE MPD Dispense Consumer Actor",
      "description" : "The CapabilityStatement for the [Dispense Consumer Actor](actors-transactions.html#dispense-consumer) describes the requirements for systems that retrieve dispense data.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/IHE.MPD.DispenseReceiver"
      },
      "name" : "IHE MPD Dispense Receiver",
      "description" : "The Dispense Receiver accepts and stores dispense reports from the Dispense Reporter.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/IHE.MPD.DispenseReceiverCS"
      },
      "name" : "IHE MPD Dispense Receiver Actor (server)",
      "description" : "The CapabililtyStatement for the [Dispense Receiver Actor](actors-transactions.html#dispense-receiver) expresses the compliance requirements for systems implementing the actor.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/IHE.MPD.DispenseReporter"
      },
      "name" : "IHE MPD Dispense Reporter",
      "description" : "The Dispense Reporter submits dispense reports to the Dispense Receiver.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/IHE.MPD.DispenseReporterCS"
      },
      "name" : "IHE MPD Dispense Reporter Actor (server)",
      "description" : "The CapabililtyStatement for the [Dispense Reporter Actor](actors-transactions.html#dispense-reporter) expresses the compliance requirements for systems implementing the actor.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/IHE.MPD.DispenseResponder"
      },
      "name" : "IHE MPD Dispense Responder",
      "description" : "The Dispense Responder provides access to dispense records to the Dispense Consumer.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/IHE.MPD.DispenseResponderCS"
      },
      "name" : "IHE MPD Dispense Responder Actor (server)",
      "description" : "The CapabililtyStatement for the [Dispense Responder Actor](actors-transactions.html#dispense-responder) expresses the compliance requirements for systems implementing the actor.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/IHE.MPD.OrderConsumer"
      },
      "name" : "IHE MPD Order Consumer",
      "description" : "The Order Consumer retrieves medication orders for dispensing or review.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/IHE.MPD.OrderConsumerCS"
      },
      "name" : "IHE MPD Order Consumer Actor",
      "description" : "The CapabililtyStatement for the [Order Consumer Actor](actors-transactions.html#order-consumer) expresses the compliance requirements for systems implementing the actor.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/IHE.MPD.OrderPlacer"
      },
      "name" : "IHE MPD Order Placer",
      "description" : "The Order Placer is responsible for submitting a medication order to an Order Receiver.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/IHE.MPD.OrderPlacerCS"
      },
      "name" : "IHE MPD Order Placer Actor",
      "description" : "The CapabililtyStatement for the [Order Placer Actor](actors-transactions.html#order-placer) expresses the compliance requirements for systems implementing the actor.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/IHE.MPD.OrderReceiver"
      },
      "name" : "IHE MPD Order Receiver",
      "description" : "The Order Receiver processes received medication orders and may store or forward them for further processing.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/IHE.MPD.OrderReceiverCS"
      },
      "name" : "IHE MPD Order Receiver Actor (server)",
      "description" : "The CapabililtyStatement for the [Order Receiver Actor](actors-transactions.html#order-receiver) expresses the compliance requirements for systems implementing the actor.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ActorDefinition"
      }],
      "reference" : {
        "reference" : "ActorDefinition/IHE.MPD.OrderResponder"
      },
      "name" : "IHE MPD Order Responder",
      "description" : "The Order Responder provides access to medication orders stored in the system.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CapabilityStatement"
      }],
      "reference" : {
        "reference" : "CapabilityStatement/IHE.MPD.OrderResponderCS"
      },
      "name" : "IHE MPD Order Responder Actor (server)",
      "description" : "The CapabililtyStatement for the [Order Responder Actor](actors-transactions.html#order-responder) expresses the compliance requirements for systems implementing the actor.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-characteristic"
      },
      "name" : "Medication - Characteristic",
      "description" : "Any characteristic of the medicinal product prescribed or dispensed (for example, price, textual package description, special program information, etc)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-classification"
      },
      "name" : "Medication - Classification",
      "description" : "Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc..",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-device"
      },
      "name" : "Medication - Device",
      "description" : "Device, typically an administration device, included in the medicinal product.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-ingredient-role"
      },
      "name" : "Medication - Ingreditne role",
      "description" : "Medication ingredient role - whether it is an active ingredient, excipient, adjuvant, solvent, flavouring, etc.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-productname"
      },
      "name" : "Medication - Product Name",
      "description" : "Name of the medicinal product. This is typically the name of a real product as registered. This element should not contain display names of virtual product concepts.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-sizeofitem"
      },
      "name" : "Medication - Size of Item",
      "description" : "Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-strengthsubstance"
      },
      "name" : "Medication - Strength substance",
      "description" : "Substance for marking the basis of strength. When the precise active ingredient is a salt, the strength is often provided for the active moiety (basis of strength).",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-strengthtype"
      },
      "name" : "Medication - Strength type",
      "description" : "Strength type (e.g. concentration strength, presentation strength)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medication-unitofpresentation"
      },
      "name" : "Medication - Unit of presentation",
      "description" : "Unit of presentation, typically describing the smallest countable package item (e.g tablet, vial, ampoule, etc). Unit of presentation is also often used in describing pack size and the denominator of strength. If the size of presentation unit is relevant, it should be described in sizeOfItem extension.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/IHEMedicationDispenseModel"
      },
      "name" : "Medication dispense (model)",
      "description" : "Logical model for medication dispense report (based on request or independently)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/IHEMedicationOrderModel"
      },
      "name" : "Medication order (model)",
      "description" : "Logical model for medication prescription or other types of medication orders",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/IHEMultilineOrder"
      },
      "name" : "Medication order - multiline (model)",
      "description" : "Logical model for multiline medication prescription",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-medicationrequest-prescribedQuantity"
      },
      "name" : "MedicationRequest - Prescribed Quantity",
      "description" : "Total amount of product being requested. This may refer to number of packages when package size is indicated in Medication resource.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MedicinalProductModel"
      },
      "name" : "Medicinal product (model)",
      "description" : "Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ihe-ext-offLabel"
      },
      "name" : "Off-label use",
      "description" : "Indicates that the prescriber has intentionally prescribed the medication in a manner not covered by the product authorization — such as for a different indication, age group, dosage, or route of administration.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/OrganizationBasic"
      },
      "name" : "Organization (model)",
      "description" : "Logical model for an organization (basic data relevant for IHE MPD use cases)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/organization1"
      },
      "name" : "organization1",
      "description" : "An organization: clinic",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/organization2"
      },
      "name" : "organization2",
      "description" : "An organization: pharmacy",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PatientBasic"
      },
      "name" : "Patient (model)",
      "description" : "Logical model for patient (basic data relevant for this use case)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/patient1"
      },
      "name" : "patient1",
      "description" : "A patient: Thomas, born 1950",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/patient2"
      },
      "name" : "patient2",
      "description" : "A patient: Emily, born 1990",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/pharmacist1"
      },
      "name" : "pharmacist1",
      "description" : "Mr Moon Farmatseut - pharmacist",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PractitionerBasic"
      },
      "name" : "Practitioner (model)",
      "description" : "Logical model for practitioner (basic data relevant for this use case)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PractitionerRoleBasic"
      },
      "name" : "Practitioner role (model)",
      "description" : "Logical model for a practitioner role within an organization (basic data relevant for this use case)",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/practitioner1"
      },
      "name" : "practitioner1",
      "description" : "Dr Meryl Ärztin",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Practitioner"
      }],
      "reference" : {
        "reference" : "Practitioner/practitioner2"
      },
      "name" : "practitioner2",
      "description" : "Mr Moon Farmatseut",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/PrescriptionLine1"
      },
      "name" : "PrescriptionLine1",
      "description" : "Prescription Line 1",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/PrescriptionLine2"
      },
      "name" : "PrescriptionLine2",
      "description" : "Prescription Line 2",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/PrescriptionLine3"
      },
      "name" : "PrescriptionLine3",
      "description" : "Prescription Line 3",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/PrescriptionLine4"
      },
      "name" : "PrescriptionLine4",
      "description" : "Prescription Line 4",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/PrescriptionLine5"
      },
      "name" : "PrescriptionLine5",
      "description" : "Prescription Line 5",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/PrescriptionLine6"
      },
      "name" : "PrescriptionLine6",
      "description" : "Prescription Line 6",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/PrescriptionLine7"
      },
      "name" : "PrescriptionLine7",
      "description" : "Prescription Line 7",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/PrescriptionLine8"
      },
      "name" : "PrescriptionLine8",
      "description" : "Prescription Line 8",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "MedicationRequest"
      }],
      "reference" : {
        "reference" : "MedicationRequest/PrescriptionLine9"
      },
      "name" : "PrescriptionLine9",
      "description" : "Prescription Line 9",
      "isExample" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/RelatedPersonBasic"
      },
      "name" : "Related person (model)",
      "description" : "Logical model for a related person with basic data relevant to the IHE MPD use cases.",
      "isExample" : false
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "IHE MPD (Medication Prescription and Dispense)",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "howtoread.html",
        "name" : "howtoread.html",
        "title" : "How to read this publication",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "volume-1.html",
        "name" : "volume-1.html",
        "title" : "Volume 1",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "glossary.html",
          "name" : "glossary.html",
          "title" : "Glossary",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "usecases.html",
          "name" : "usecases.html",
          "title" : "Use Cases and Patterns",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "medication-concepts.html",
          "name" : "medication-concepts.html",
          "title" : "Medication Concepts",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "grouping.html",
          "name" : "grouping.html",
          "title" : "Single- and multiline prescriptions",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "data-models.html",
          "name" : "data-models.html",
          "title" : "Data Models",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "actors-transactions.html",
          "name" : "actors-transactions.html",
          "title" : "Actors and Transactions Overview",
          "generation" : "markdown"
        }]
      },
      {
        "sourceUrl" : "actor-grouping-examples.html",
        "name" : "actor-grouping-examples.html",
        "title" : "Actor grouping examples",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "volume-2.html",
        "name" : "volume-2.html",
        "title" : "Volume 2",
        "generation" : "markdown",
        "page" : [{
          "sourceUrl" : "pharm-5.html",
          "name" : "pharm-5.html",
          "title" : "PHARM-5: Submit Medication Order",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "pharm-7.html",
          "name" : "pharm-7.html",
          "title" : "PHARM-7: Retrieve Medication Orders",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "pharm-8.html",
          "name" : "pharm-8.html",
          "title" : "PHARM-8: Submit Medication Dispense",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "pharm-9.html",
          "name" : "pharm-9.html",
          "title" : "PHARM-9: Retrieve Medication Dispenses",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "error_codes.html",
          "name" : "error_codes.html",
          "title" : "Error Codes",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "testplan.html",
          "name" : "testplan.html",
          "title" : "Test Plan",
          "generation" : "markdown"
        },
        {
          "sourceUrl" : "usage-examples.html",
          "name" : "usage-examples.html",
          "title" : "Usage Examples",
          "generation" : "markdown"
        }]
      },
      {
        "sourceUrl" : "changes.html",
        "name" : "changes.html",
        "title" : "Changes and issues in this version",
        "generation" : "markdown"
      },
      {
        "sourceUrl" : "downloads.html",
        "name" : "downloads.html",
        "title" : "Downloads",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2021+"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "ballot"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "fsh-generated/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/examples"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/pagecontent"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "fsh-generated/includes"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-contact"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-jurisdiction"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-version"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "usage-stats-opt-out"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "autoload-resources"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "shownav"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "generate-version"
      },
      "value" : "r4"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/capabilities"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/models"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/operations"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/profiles"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/vocabulary"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/testing"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/history"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "template/config"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/images"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "input/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-qa"
      },
      "value" : "temp/qa"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-temp"
      },
      "value" : "temp/pages"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-output"
      },
      "value" : "output"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-tx-cache"
      },
      "value" : "input-cache/txcache"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-suppressed-warnings"
      },
      "value" : "input/ignoreWarnings.txt"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-history"
      },
      "value" : "https://profiles.ihe.net/PHARM/MPD/history.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-html"
      },
      "value" : "template-page.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-md"
      },
      "value" : "template-page-md.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-context"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-copyright"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-license"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-publisher"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-wg"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "active-tables"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "fmm-definition"
      },
      "value" : "http://hl7.org/fhir/versions.html#maturity"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "propagate-status"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludelogbinaryformat"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "tabbed-snapshots"
      },
      "value" : "true"
    }]
  }
}

```
