# PHARM-9: Retrieve Medication Dispenses - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Volume 2**](volume-2.md)
* **PHARM-9: Retrieve Medication Dispenses**

## PHARM-9: Retrieve Medication Dispenses

This section corresponds to transaction [PHARM-9] of the IHE Technical Framework. Transaction [PHARM-9] is used by the [Dispense Consumer](actors-transactions.md#dispense-consumer) and the [Dispense Responder](actors-transactions.md#dispense-responder) actors. The Retrieve Medication Dispense [PHARM-9] transaction is used to retrieve existing `MedicationDispense` resources for further handling.

### X:Y.Z.1 Scope

The Retrieve Dispenses [PHARM-9] transaction allows the [Dispense Consumer](actors-transactions.md#dispense-consumer) to query the Dispense Responder for Dispenses.

* …

### X:Y.Z.2 Actors Roles

**Table X:Y.Z.2-1: Actor Roles**

| | |
| :--- | :--- |
| [Dispense Consumer](actors-transactions.md#dispense-consumer) | Queries existing Dispenses from the Dispense Responder |
| [Dispense Responder](actors-transactions.md#dispense-responder) | Provides access to stored Dispenses |

### X:Y.Z.3 Referenced Standards

**FHIR-R5** [HL7 FHIR Release 5.0](http://www.hl7.org/FHIR/R5)

### X:Y.Z.4 Messages

**Figure X:Y.Z.4-1: Retrieve Dispenses Interactions**

#### X:Y.Z.4.1 Retrieve Dispenses Request Message

The [Dispense Consumer](actors-transactions.md#dispense-consumer) submits a query using the HTTP `GET` or `POST` method to the `/MedicationDispense` endpoint, with the search parameters indicated below. Alternatively, the [Dispense Consumer](actors-transactions.md#dispense-consumer) can submit a query using the HTTP GET or `POST` method to the `/` endpoint with the `_type` search parameter populated - `_type=MedicationDispense`.

##### X:Y.Z.4.1.1 Trigger Events

This method is invoked when needing to view or further processing medication dispenses.

##### X:Y.Z.4.1.2 Message Semantics

Search parameters that **SHALL** be supported:

* **`identifier`** — Search by the identifier of the `MedicationDispense`.
* **`patient`** — Search by the patient subject of the `MedicationDispense`.
* **`status`** — Filter `MedicationDispense`s by their status (e.g., active, completed).
* **`prescription`** — Filter by the prescription ID

###### X:Y.Z.4.1.2.1 Resource content

The Retrieve Dispense transaction is a search query.

##### X:Y.Z.4.1.3 Expected Actions

Upon receiving the query, the [Dispense Responder](actors-transactions.md#dispense-responder) is expected to respond with the medication dispenses if the conditions are met:

* The search parameters match
* The resources can be accessed i.e. they are not restricted to the [Dispense Consumer](actors-transactions.md#dispense-consumer)

#### X:Y.Z.4.2 Retrieve Dispenses Response

The [Dispense Responder](actors-transactions.md#dispense-responder) **SHALL** respond with a Search `Bundle`, containing the resources that correspond to the search and can be accessed (e.g. are allowed by any access control mechanisms).

##### X:Y.Z.4.2.1 Trigger Events

The response is always expected.

##### X:Y.Z.4.2.2 Message Semantics

The Response **SHALL** be a search `Bundle` containing the matching `MedicationDispense` resources.

###### X:Y.Z.4.2.2.1 Resource content

The content of the `MedicationDispense` resources in the `Bundle` **SHALL** conform to the profiles defined in the IHE [MedicationDispense](StructureDefinition-IHEMedicationDispense.md) profile.

In case of error, the response **SHALL** contain an `OperationOutcome`.

##### X:Y.Z.4.2.3 Expected Actions

Upon receiving the response, the [Dispense Consumer](actors-transactions.md#dispense-consumer) will store, process or initiate handling of the dispenses as part of the business process.

