# Data Models - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Volume 1**](volume-1.md)
* **Data Models**

## Data Models

These are the data models used in the MPD profile. These models are functional representation of the data exchanged in the transactions - Orders and Dispenses.

These models are influenced by the prior art - ISO standards, IHE previous models and specifications, FHIR specifications, and other input as mentioned in the references.

#### Medication Order

The first model is that of the Medication Order: A generic order for one medication item - can be used in draft orders, proposals, prescriptions, cancellations, etc.

#### Medication Dispense

The Medication Dispense model represents the data in each dispensation event. Each medication dispense is related to one order/prescription (or none), and several dispenses can occur for one order/prescription.

#### Medicinal Product

The medicinal product is referred to or specified in each order or dispense. This model allows representation of several levels of granularity of medication (see [medication concepts](medication-concepts.md)).

#### Dosaging information

The dosaging information model mostly reflects details about how to structure the dosaging information. This model is derived from FHIR model, which has been influenced by HL7 v2 `TQ` segments, or CDA Dosage Instructions Content Module (1.3.6.1.4.1.19376.1.9.1.3.6).

