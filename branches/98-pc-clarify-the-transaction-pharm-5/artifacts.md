# Artifacts Summary - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Requirements: Actor Definitions 

The following artifacts define the types of individuals and/or systems that will interact as part of the use cases covered by this implementation guide.

| | |
| :--- | :--- |
| [IHE MPD Dispense Consumer](ActorDefinition-IHE.MPD.DispenseConsumer.md) | The Dispense Consumer retrieves dispense records from the Dispense Responder. |
| [IHE MPD Dispense Receiver](ActorDefinition-IHE.MPD.DispenseReceiver.md) | The Dispense Receiver accepts and stores dispense reports from the Dispense Reporter. |
| [IHE MPD Dispense Reporter](ActorDefinition-IHE.MPD.DispenseReporter.md) | The Dispense Reporter submits dispense reports to the Dispense Receiver. |
| [IHE MPD Dispense Responder](ActorDefinition-IHE.MPD.DispenseResponder.md) | The Dispense Responder provides access to dispense records to the Dispense Consumer. |
| [IHE MPD Order Consumer](ActorDefinition-IHE.MPD.OrderConsumer.md) | The Order Consumer retrieves medication orders for dispensing or review. |
| [IHE MPD Order Placer](ActorDefinition-IHE.MPD.OrderPlacer.md) | The Order Placer is responsible for submitting a medication order to an Order Receiver. |
| [IHE MPD Order Receiver](ActorDefinition-IHE.MPD.OrderReceiver.md) | The Order Receiver processes received medication orders and may store or forward them for further processing. |
| [IHE MPD Order Responder](ActorDefinition-IHE.MPD.OrderResponder.md) | The Order Responder provides access to medication orders stored in the system. |

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [IHE MPD Dispense Consumer Actor](CapabilityStatement-IHE.MPD.DispenseConsumerCS.md) | The CapabilityStatement for the [Dispense Consumer Actor](actors-transactions.md#dispense-consumer) describes the requirements for systems that retrieve dispense data. |
| [IHE MPD Dispense Receiver Actor (server)](CapabilityStatement-IHE.MPD.DispenseReceiverCS.md) | The CapabililtyStatement for the [Dispense Receiver Actor](actors-transactions.md#dispense-receiver) expresses the compliance requirements for systems implementing the actor. |
| [IHE MPD Dispense Reporter Actor (server)](CapabilityStatement-IHE.MPD.DispenseReporterCS.md) | The CapabililtyStatement for the [Dispense Reporter Actor](actors-transactions.md#dispense-reporter) expresses the compliance requirements for systems implementing the actor. |
| [IHE MPD Dispense Responder Actor (server)](CapabilityStatement-IHE.MPD.DispenseResponderCS.md) | The CapabililtyStatement for the [Dispense Responder Actor](actors-transactions.md#dispense-responder) expresses the compliance requirements for systems implementing the actor. |
| [IHE MPD Order Consumer Actor](CapabilityStatement-IHE.MPD.OrderConsumerCS.md) | The CapabililtyStatement for the [Order Consumer Actor](actors-transactions.md#order-consumer) expresses the compliance requirements for systems implementing the actor. |
| [IHE MPD Order Placer Actor](CapabilityStatement-IHE.MPD.OrderPlacerCS.md) | The CapabililtyStatement for the [Order Placer Actor](actors-transactions.md#order-placer) expresses the compliance requirements for systems implementing the actor. |
| [IHE MPD Order Receiver Actor (server)](CapabilityStatement-IHE.MPD.OrderReceiverCS.md) | The CapabililtyStatement for the [Order Receiver Actor](actors-transactions.md#order-receiver) expresses the compliance requirements for systems implementing the actor. |
| [IHE MPD Order Responder Actor (server)](CapabilityStatement-IHE.MPD.OrderResponderCS.md) | The CapabililtyStatement for the [Order Responder Actor](actors-transactions.md#order-responder) expresses the compliance requirements for systems implementing the actor. |

### Behavior: Search Parameters 

These define the properties by which a RESTful server can be searched. They can also be used for sorting and including related resources.

| | |
| :--- | :--- |
| [activity-resource](SearchParameter-activity-resource.md) | Search on the resources that are linked to a RequestOrchestration - important to allow for example _revInclude |
| [group-or-identifier](SearchParameter-group-or-identifier.md) | Single search on both request.identifier or groupIdentifier |

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Dosaging (model)](StructureDefinition-DosagingInformation.md) | Logical model for usage instructions for administring the requested product. Based on FHIR Dosage complex data type. |
| [Medication dispense (model)](StructureDefinition-IHEMedicationDispenseModel.md) | Logical model for medication dispense report (based on request or independently) |
| [Medication order (model)](StructureDefinition-IHEMedicationOrderModel.md) | Logical model for medication prescription or other types of medication orders |
| [Medication order - multiline (model)](StructureDefinition-IHEMultilineOrder.md) | Logical model for multiline medication prescription |
| [Medicinal product (model)](StructureDefinition-MedicinalProductModel.md) | Logical model for prescribed/dispensed medication. The model is shared by statements, requests, dispensations, and treatment lines. Each of those may have different restrictions in FHIR profile. |
| [Patient (model)](StructureDefinition-PatientBasic.md) | Logical model for patient (basic data relevant for this use case) |
| [Practitioner (model)](StructureDefinition-PractitionerBasic.md) | Logical model for practitioner (basic data relevant for this use case) |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [IHE Medication](StructureDefinition-IHEMedication.md) | Medication for clinical use cases. This could be a branded product or a generic concept, also allowing describing pack size and components of complex products. |
| [IHE Medication Dispense](StructureDefinition-IHEMedicationDispense.md) | MedicationDispense profile for capturing dispensation information based on a medication prescription. |
| [IHE Medication Order](StructureDefinition-IHEMedicationOrder.md) | IHE Medication Order profile |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Medication - Characteristic](StructureDefinition-ihe-ext-medication-characteristic.md) | Any characteristic of the medicinal product prescribed or dispensed (for example, price, textual package description, special program information, etc) |
| [Medication - Classification](StructureDefinition-ihe-ext-medication-classification.md) | Medication classification/category. Allows the product to be classified by various systems, e.g ATC, narcotic class, legal status of supply, etc.. |
| [Medication - Device](StructureDefinition-ihe-ext-medication-device.md) | Device, typically an administration device, included in the medicinal product. |
| [Medication - Ingreditne role](StructureDefinition-ihe-ext-medication-ingredient-role.md) | Medication ingredient role - whether it is an active ingredient, excipient, adjuvant, solvent, flavouring, etc. |
| [Medication - Product Name](StructureDefinition-ihe-ext-medication-productname.md) | Name of the medicinal product. This is typically the name of a real product as registered. This element should not contain display names of virtual product concepts. |
| [Medication - Size of Item](StructureDefinition-ihe-ext-medication-sizeofitem.md) | Size of a manufactured item or unit of presentation. For example, size of one vial in a package that may contain several vials. |
| [Medication - Strength substance](StructureDefinition-ihe-ext-medication-strengthsubstance.md) | Substance for marking the basis of strength. When the precise active ingredient is a salt, the strength is often provided for the active moiety (basis of strength). |
| [Medication - Strength type](StructureDefinition-ihe-ext-medication-strengthtype.md) | Strength type (e.g. concentration strength, presentation strength) |
| [Medication - Unit of presentation](StructureDefinition-ihe-ext-medication-unitofpresentation.md) | Unit of presentation, typically describing the smallest countable package item (e.g tablet, vial, ampoule, etc). Unit of presentation is also often used in describing pack size and the denominator of strength. If the size of presentation unit is relevant, it should be described in sizeOfItem extension. |
| [MedicationRequest - Prescribed Quantity](StructureDefinition-ihe-ext-medicationrequest-prescribedQuantity.md) | Total amount of product being requested. This may refer to number of packages when package size is indicated in Medication resource. |
| [Off-label use](StructureDefinition-ihe-ext-offLabel.md) | Indicates that the prescriber has intentionally prescribed the medication in a manner not covered by the product authorization — such as for a different indication, age group, dosage, or route of administration. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [01A-Cefuroxime1500GenericExplicit](Medication-01A-Cefuroxime1500GenericExplicit.md) | 1A. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by attributes. |
| [01B-Cefuroxime1500GenericConcept](Medication-01B-Cefuroxime1500GenericConcept.md) | 1B. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Generic product, defined by a code system (receiving system is expected to have access to the code system for additional attributes or display names). |
| [01C-Cefuroxime1500Branded](Medication-01C-Cefuroxime1500Branded.md) | 1C. Cefuroxime 1500mg (1.5g) powder for solution in a vial. Branded packaged product, defined by attributes. |
| [01D-Cefuroxime750Branded](Medication-01D-Cefuroxime750Branded.md) | 1D. Cefuroxime 750mg powder for solution in a vial (5 vials per package). Branded packaged product, defined by attributes. |
| [02A-ClotrimazoleCanifugCremolum](Medication-02A-ClotrimazoleCanifugCremolum.md) | 2A. Clotrimazole cream 10mg/g and 6 pessaries 100g. Branded packaged product, consisting of different medication items. Defined by attributes. |
| [02A1-CanifugCremolumCreamItem](Medication-02A1-CanifugCremolumCreamItem.md) | 2A2. Clotrimazole cream (10mg/g, 1 tube of 20g) as part of Canifug Cremolum product (ISO IDMP manufactured item) |
| [02A2-CanifugCremolumPessaryItem](Medication-02A2-CanifugCremolumPessaryItem.md) | 2A1. Clotrimazole pessary (6 pessaries of 100mg) as part of Canifug Cremolum product (ISO IDMP manufactured item) |
| [03B-VitaminBComplexBranded](Medication-03B-VitaminBComplexBranded.md) | 3B. Milgamma N, B-vitamin complex. Branded packaged product, defined by attributes. |
| [04-FirmagonBranded](Medication-04-FirmagonBranded.md) | 4A. Firmagon. Branded packaged product, defined by attributes, includes administration devices. |
| [05A-Tilidin-Branded](Medication-05A-Tilidin-Branded.md) | 05A. Tilidin (50mg), Naloxon (4mg) oral drops. Branded packaged product, defined by attributes. Unusual strength. |
| [10-dispense-1](MedicationDispense-10-dispense-1.md) | Medication dispense fulfilling the first part of the order: 1 package containing 10 vials |
| [10-dispense-2](MedicationDispense-10-dispense-2.md) | Medication dispense fulfilling the second part of the order: 3 packages containing 5 vials each |
| [10-prescription-cefuroxime-singleline](MedicationRequest-10-prescription-cefuroxime-singleline.md) | A prescription/request with one medication and changing dosaging. Uses 'actionable' tag. Cefuroxime sodium. |
| [100-3-medication-prescription-request1](MedicationRequest-100-3-medication-prescription-request1.md) | A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Thalidomide 50mgx4 once a day before bed for 42 days. |
| [100-3-medication-prescription-request2](MedicationRequest-100-3-medication-prescription-request2.md) | A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Melphalan 2mgx4 once a day for 4 days in the beginning of cycle. |
| [100-3-medication-prescription-request3](MedicationRequest-100-3-medication-prescription-request3.md) | A prescription item (MedicationRequest) that is a part of a three-item-prescription (42-day treatment cycle). Generic. Prednisone 50mgx3 once a day for 4 days in the beginning of cycle. |
| [200-multiitem-prescription-without-orchestration](Bundle-200-multiitem-prescription-without-orchestration.md) | Multiitem prescription where items on the same prescription are not interdependent. Kept together by the same groupIdentifier. |
| [300-dispense-for-2-requests](MedicationDispense-300-dispense-for-2-requests.md) | Medication dispense dispensing one combination product for two prescribed products (multiitem prescription) |
| [PrescriptionLine1](MedicationRequest-PrescriptionLine1.md) | Prescription Line 1 |
| [PrescriptionLine2](MedicationRequest-PrescriptionLine2.md) | Prescription Line 2 |
| [PrescriptionLine3](MedicationRequest-PrescriptionLine3.md) | Prescription Line 3 |
| [PrescriptionLine4](MedicationRequest-PrescriptionLine4.md) | Prescription Line 4 |
| [PrescriptionLine5](MedicationRequest-PrescriptionLine5.md) | Prescription Line 5 |
| [PrescriptionLine6](MedicationRequest-PrescriptionLine6.md) | Prescription Line 6 |
| [PrescriptionLine7](MedicationRequest-PrescriptionLine7.md) | Prescription Line 7 |
| [PrescriptionLine8](MedicationRequest-PrescriptionLine8.md) | Prescription Line 8 |
| [PrescriptionLine9](MedicationRequest-PrescriptionLine9.md) | Prescription Line 9 |
| [doctor1](PractitionerRole-doctor1.md) | Dr Meryl Ärztin - clinical oncologist |
| [organization1](Organization-organization1.md) | An organization: clinic |
| [organization2](Organization-organization2.md) | An organization: pharmacy |
| [patient1](Patient-patient1.md) | A patient: Thomas, born 1950 |
| [patient2](Patient-patient2.md) | A patient: Emily, born 1990 |
| [pharmacist1](PractitionerRole-pharmacist1.md) | Mr Moon Farmatseut - pharmacist |
| [practitioner1](Practitioner-practitioner1.md) | Dr Meryl Ärztin |
| [practitioner2](Practitioner-practitioner2.md) | Mr Moon Farmatseut |

