# Actors and Transactions Overview - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Volume 1**](volume-1.md)
* **Actors and Transactions Overview**

## Actors and Transactions Overview

### Transactions

For managing the lifecycle of orders (from proposal to draft or plan, to active prescription and fulfilled prescription), and considering the variety of use cases and architectures that this profile is intended to support ([Push, Pull, central repositories, etc.](actor-grouping-examples.md)), IHE presents the following actors for managing orders - submission and retrieval:

For Dispense, a similar approach is taken:

Table XX.1-1: IHE MPD - Actors and Transactions

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| Medication Order Placer | PHARM-6 | Initiator | O | PHARM MPD TF-2: 3.Y1 |
| Medication Order Receiver | PHARM-6 | Responder | O | PHARM MPD TF-2: 3.Y1 |
| Medication Order Consumer | PHARM-7 | Initiator | R | PHARM MPD TF-2: 3.Y1 |
| Medication Order Responder | PHARM-7 | Responder | R | PHARM MPD TF-2: 3.Y1 |
| Medication Dispense Reporter | PHARM-8 | Initiator | R | PHARM MPD TF-2: 3.Y1 |
| Medication Dispense Receiver | PHARM-8 | Responder | R | PHARM MPD TF-2: 3.Y1 |
| Medication Dispense Consumer | PHARM-9 | Initiator | R | PHARM MPD TF-2: 3.Y1 |
| Medication Dispense Responder | PHARM-9 | Responder | R | PHARM MPD TF-2: 3.Y1 |

Note 1: The transaction [PHARM-6](pharm-6.md) for submitting an order uses the MedicationRequest. IHE Recognizes that in common cases, the request also includes other resources, so in future editions we expect to prepare a new transaction for submitting medication orders. This current specification only provides the transaction using MedicationRequest.

### XX.1.1 Actors

The actors in this profile are described in more detail in the sections below.

**Order Placer** - this actor is responsible for submitting an order. This can be a prescription, or an update of an existing prescription, or a draft prescription, or other.

**Order Receiver** - This actor represents the entity that receives the orders from the placer. This is used in a Push scenario, where the order receiver receives the pushed order.

**Order Responder** - this actor is responsible for responding to order queries, e.g feching the orders for a patient, etc.
 This is used in a Pull scenario, where an Order Consumer (or other actors) can query the existing orders from the Order Responder.

**Order Consumer** - this actor represents an entity that handles or processes the order, typically for dispensing, but can also be for further authorization, verification, etc.

### Actor Options

**Dispenser** - this actor represents an entity that handles or processes the order, typically for dispensing, but can also be for further authorization, verification, etc.

This actor is responsible for the process of dispensing medication to the patient, fulfilling the prescription. Therefore it produces the information on the medication dispensed to the patient. In order to achieve this, it receives prescriptions already validated. It also confirms drug availability for administration and it receives the administration plan and administration reports. This actor may be implemented as the point of sale software of a community pharmacy or the hospital pharmacy module of a hospital information system. The human actor behind this system actor is usually a pharmacist or a pharmacist assistant. In addition to the dispense, in this version this actor is considered to take care of all the dependencies to ensure a proper dispensing.

**Dispense Receiver** - This actor represents the entity that receives the dispense reports from the placer. This is used in a Push scenario, where the dispense receiver receives the pushed dispense.

**Dispense Responder** - this actor is responsible for responding to order queries, e.g feching the dispenses for a patient, etc. This is used in a Pull scenario, where an Order Consumer (or other actors) can query the existing dispenses from the Dispense Responder.

**Dispense Consumer** - this actor supports querying for dispenses, e.g fetching the dispenses for a patient, etc.

> This is commonly used in a Pull scenario, where before dispense, the Order Consumer (or other actors) can query the existing dispenses from the Dispense Responder. It can also be used for reporting workflow progress after inquiring about dispense status.

**Dispense Reporter** - this actor is responsible for submitting a dispense report.

**Dispense Receiver** - This actor represents the entity that receives the dispense reports from the dispense reporter. This is used in a Push scenario, where the order dispenser pushes out the reports.

**Dispense Responder** - this actor is responsible for responding to queries for dispenses.
 This is used in a Pull scenario, where an Order Consumer (or other actors) can query the existing orders from the Order Responder.

**Dispense Consumer** - this actor represents an entity that handles or processes the dispense reports.

### Actor Groupings

No actor groupings are defined at the moment.

