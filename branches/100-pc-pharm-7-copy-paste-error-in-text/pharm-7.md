# PHARM-7: Retrieve Medication Orders - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Volume 2**](volume-2.md)
* **PHARM-7: Retrieve Medication Orders**

## PHARM-7: Retrieve Medication Orders

This section corresponds to transaction [PHARM-7] of the IHE Technical Framework. Transaction [PHARM-7] is used by the [Medication Order Consumer](actors-transactions.md#order-consumer) and the [Medication Order Responder](actors-transactions.md#order-responder) actors. The Retrieve Medication Orders [PHARM-7] transaction is used to obtain medication orders for further handling - for example getting a prescription for dispense.

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

This message uses the search method parameterized query to obtain `MedicationRequest` resources from the [Medication Order Responder](actors-transactions.md#order-responder).

##### X:Y.Z.4.1.1 Trigger Events

This method is invoked when needing to view or process prescriptions, for example when selecting a medication for dispense.

##### X:Y.Z.4.1.2 Message Semantics

The [Medication Order Consumer](actors-transactions.md#order-consumer) submits a query using the HTTP `GET` or `POST` method to the `/MedicationRequest` endpoint or to the `/RequestGroup` (R4) or `/RequestOrchestration` (R5) endpoint, with the search parameters indicated below. Alternatively, the [Medication Order Consumer](actors-transactions.md#order-consumer) can submit a query using the HTTP `GET` or `POST` method to the `/` endpoint with the `_type` search parameter populated - either `_type=MedicationRequest`, `_type=RequestGroup` (R4), `_type=RequestOrchestration` (R5), or both - `_type=MedicationRequest,RequestGroup` (R4) / `_type=MedicationRequest,RequestOrchestration` (R5).

###### X:Y.Z.4.1.2.1 Query Search Parameters

The following search parameters **SHALL** be supported by the [Medication Order Responder](actors-transactions.md#order-responder):

* **`group-or-identifier`** Single search on both `identifier` or `groupIdentifier` - this is important to check for prescriptions where the prescription ID is known but it is not known if the prescription consists of one or multiple lines.
* **`activity-resource`** - Search on the resources that are linked to a `RequestGroup` (R4) or to a `RequestOrchestration` (R5) - important to allow for example _revInclude
* **`identifier`** — Search by the identifier of the medication order or group/orchestration.
* **`patient`** — Search by the patient subject of the medication order or group/orchestration.
* **`status`** — Filter medication orders or groups/orchestrations by their status (e.g., `active`, `completed`).
* **`intent`** — Filter by the intent of the medication order or group/request (e.g., `order`, `plan`).

##### X:Y.Z.4.1.3 Expected Actions

Upon receiving the query, the [Medication Order Responder](actors-transactions.md#order-responder) is expected to respond with the orders if the conditions are met:

* The search parameters match
* The resources can be accessed i.e. they are not restricted to the [Medication Order Consumer](actors-transactions.md#order-consumer)

#### X:Y.Z.4.2 Retrieve Medication Orders Response Message

The [Medication Order Responder](actors-transactions.md#order-responder) **SHALL** respond with a HTTP status code appropriate to the processing as well as a Search `Bundle`, containing the resources that correspond to the search and can be accessed (e.g. are allowed by any access control mechanisms).

##### X:Y.Z.4.2.1 Trigger Events

The [Medication Order Responder](actors-transactions.md#order-responder) complete processing of the `Retrieve Medication Orders Request Message`.

##### X:Y.Z.4.2.2 Message Semantics

Based on the query results, the [Medication Order Responder](actors-transactions.md#order-responder) will either return an error or success. Guidance on handling Access Denied related to use of 200, 403 and 404 can be found in [ITI TF-2x: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations).

When the Medication Order Responder needs to report an error, it shall use HTTP error response codes and should include a FHIR `OperationOutcome` with more details on the failure.

If the `Retrieve Medication Orders Request Message` is processed successfully, whether or not any matching resources are found, the HTTP status code shall be `200` and the response message **SHALL** be a search `Bundle` containing 0 or more `MedicationRequest` resources (optionally `RequestGroup` (R4) or `RequestOrchestration` (R5) resources as well if they were part of the search).

###### X:Y.Z.4.2.2.1 Resource Content

The content of the `MedicationRequest` resources in the Bundle **SHALL** conform to the profiles defined in the [MedicationOrder](StructureDefinition-IHEMedicationOrder.md) profile.

In case of error, the response **SHALL** contain an `OperationOutcome`.s

###### X:Y.Z.4.2.2.2 Resource Bundling

Resource Bundling shall comply with the guidelines in [ITI TF-2x: Appendix Z.1](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.1-resource-bundles).

##### X:Y.Z.4.2.3 Expected Actions

Upon receiving the response, the [Medication Order Consumer](actors-transactions.md#order-consumer) will store, process or initiate handling of the orders as part of the business process.

