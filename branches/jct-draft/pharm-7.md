# PHARM-7: Retrieve Medication Orders - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Volume 2**](volume-2.md)
* **PHARM-7: Retrieve Medication Orders**

## PHARM-7: Retrieve Medication Orders

This section corresponds to transaction [PHARM-7] of the IHE Technical Framework. Transaction [PHARM-7] is used by the [Medication Order Consumer](actors-transactions.md#order-consumer) and the [Medication Order Responder](actors-transactions.md#order-responder) actors. The Retrieve Medication Orders [PHARM-7] transaction is used to obtain MedicationRequests for further handling - for example getting a prescription for dispense.

The response to this query is always a search Bundle. When prescriptions have been submitted as prescription Bundles (via [PHARM-6](pharm-6.md)), the response can include not only MedicationRequests but also the associated coordination Tasks, RequestOrchestration resources, and referenced supporting resources — providing the consumer with the full prescription context.

### X:Y.Z.1 Scope

The Retrieve Medication Orders [PHARM-7] transaction allows the [Medication Order Consumer](actors-transactions.md#order-consumer) to query the [Medication Order Responder](actors-transactions.md#order-responder) for medication orders.

* …

### X:Y.Z.2 Actors Roles

**Table X:Y.Z.2-1: Actor Roles**

| | |
| :--- | :--- |
| [Medication Order Consumer](actors-transactions.md#order-consumer) | Queries existing medication orders from the Order Responder |
| [Medication Order Responder](actors-transactions.md#order-responder) | Provides access to stored medication orders |

### X:Y.Z.3 Referenced Standards

**FHIR-R5** [HL7 FHIR Release 5.0](http://www.hl7.org/FHIR/R5)

### X:Y.Z.4 Messages

**Figure X:Y.Z.4-1: Retrieve Medication Orders Interactions**

#### X:Y.Z.4.1 Retrieve Medication Orders Request Message

The [Medication Order Consumer](actors-transactions.md#order-consumer) submits a query using the HTTP `GET` or `POST` method to the /MedicationRequest endpoint or to the /RequestGroup, with the search parameters indicated below. Alternatively, the [Medication Order Consumer](actors-transactions.md#order-consumer) can submit a query using the HTTP `GET` or `POST` method to the / endpoint with the `_type` search parameter populated - either `_type=MedicationRequest`, `_type=RequestGroup`, or both - `_type=MedicationRequest,RequestGroup`.

##### X:Y.Z.4.1.1 Trigger Events

This method is invoked when needing to view or process prescriptions, for example when selecting a medication for dispense.

##### X:Y.Z.4.1.2 Message Semantics

Search parameters that **SHALL** be supported:

* **`group-or-identifier`** Single search on both request.identifier or groupIdentifier - this is important to check for prescriptions where the prescription ID is known but it is not known if the prescription has one or multiple lines
* **`activity-resource`** - Search on the resources that are linked to a RequestGroup - important to allow for example _revInclude
* **`identifier`** — Search by the identifier of the MedicationRequest.
* **`patient`** — Search by the patient subject of the MedicationRequest.
* **`status`** — Filter MedicationRequests by their status (e.g., active, completed).
* **`intent`** — Filter by the intent of the MedicationRequest (e.g., order, plan).

Include parameters that **SHOULD** be supported:

* **`_include=MedicationRequest:medication`** — Include referenced Medication resources in the response.
* **`_revInclude=Task:focus`** — Include Tasks that reference the returned MedicationRequests — this is essential for retrieving coordination Tasks that group multiple prescription lines.
* **`_include=MedicationRequest:patient`** — Include the Patient resource.
* **`_revInclude=RequestOrchestration:activity-resource`** — Include RequestOrchestration resources that reference the returned MedicationRequests.

This allows a consumer to retrieve, in a single query, the full prescription context — orders, coordination Tasks, grouping, and supporting resources — regardless of whether the prescription was originally submitted as a single MedicationRequest ([PHARM-5](pharm-5.md)) or as a prescription Bundle ([PHARM-6](pharm-6.md)).

###### X:Y.Z.4.1.2.1 Resource content

The Retrieve Medication Orders is a search query. The response is a search Bundle containing `MedicationRequest` resources conforming to the [MedicationOrder](StructureDefinition-IHEMedicationOrder.md) profile, along with any included resources.

##### X:Y.Z.4.1.3 Expected Actions

Upon receiving the `MedicationRequest`, the [Medication Order Responder](actors-transactions.md#order-responder) is expected to respond with the orders if the conditions are met:

* The search parameters match
* The resources can be accessed i.e. they are not restricted to the [Medication Order Consumer](actors-transactions.md#order-consumer)

#### X:Y.Z.4.2 Retrieve Medication Orders Response

The [Medication Order Responder](actors-transactions.md#order-responder) **SHALL** respond with a Search `Bundle`, containing the resources that correspond to the search and can be accessed (e.g. are allowed by any access control mechanisms).

##### X:Y.Z.4.2.1 Trigger Events

The response is always expected.

##### X:Y.Z.4.2.2 Message Semantics

The Response **SHALL** be a search `Bundle`. The Bundle SHALL contain the matching MedicationRequests. When `_include` or `_revInclude` parameters are used, the Bundle SHALL also contain the included resources (Tasks, RequestOrchestration, Medication, Patient, etc.).

###### X:Y.Z.4.2.2.1 Resource content

The content of the MedicationRequests in the Bundle **SHALL** conform to the profiles defined in the [MedicationOrder](StructureDefinition-IHEMedicationOrder.md) profile.

When coordination Tasks are included (via `_revInclude=Task:focus`), they provide the consumer with fulfillment constraints — for example, which prescription lines must be dispensed together. The consumer SHOULD process these Tasks to understand the coordination requirements before acting on the orders.

In case of error, the response **SHALL** contain an `OperationOutcome`.

##### X:Y.Z.4.2.3 Expected Actions

Upon receiving the response, the [Medication Order Consumer](actors-transactions.md#order-consumer) can will store, process or initiate handling of the orders as part of the business process.

