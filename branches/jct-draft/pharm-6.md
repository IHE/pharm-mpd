# PHARM-6: Submit Prescription Bundle - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Volume 2**](volume-2.md)
* **PHARM-6: Submit Prescription Bundle**

## PHARM-6: Submit Prescription Bundle

This section corresponds to transaction [PHARM-6] of the IHE Technical Framework. Transaction [PHARM-6] is used by the [Medication Order Placer](actors-transactions.md#order-placer) and the [Medication Order Receiver](actors-transactions.md#order-receiver) actors. The Submit Prescription Bundle [PHARM-6] transaction is used to transmit a complete prescription as a Bundle — including one or more `MedicationRequest` resources, coordination Tasks, grouping resources, and supporting context such as Patient and Medication.

This transaction complements [PHARM-5](pharm-5.md) (which submits a single MedicationRequest) by supporting the common real-world case where a prescription is a composite document: multiple medication lines, coordination constraints, and supporting resources that must be submitted atomically.

### Delivery Patterns

PHARM-6 defines the **content** of a prescription Bundle. This same Bundle can be delivered through different patterns:

| | | | |
| :--- | :--- | :--- | :--- |
| **Direct push** | Placer decides to send | Order Placer → Order Receiver | HTTP POST of the Bundle |
| **Subscription notification** | Server detects matching event | Server → Subscriber | FHIR Subscription delivers the same Bundle |

For **pull/query** scenarios — where a consumer fetches prescription data on demand — see [PHARM-7: Retrieve Medication Orders](pharm-7.md). PHARM-7 returns the equivalent content as a search Bundle using `_include` and `_revInclude` parameters.

The three patterns together provide full coverage:

| | | |
| :--- | :--- | :--- |
| Push a prescription (direct) | PHARM-6 | `subscription-notification` |
| Push a prescription (event-driven) | PHARM-6 via Subscription | `subscription-notification` |
| Pull/query prescriptions | PHARM-7 | `searchset`(with includes) |

#### Subscription-based delivery

Systems that support FHIR Subscriptions can use them to receive prescription Bundles automatically when criteria are met (e.g., new prescription for a patient, prescription assigned to a pharmacy). The Subscription is set up using standard FHIR Subscription mechanics — no IHE-specific transaction is needed for managing the Subscription itself.

When a Subscription is triggered, the server delivers the same `subscription-notification` Bundle defined in this transaction. The receiving system processes it identically to a direct push.

### X:Y.Z.1 Scope

The Submit Prescription Bundle [PHARM-6] transaction passes a prescription Bundle from a [Medication Order Placer](actors-transactions.md#order-placer) to a [Medication Order Receiver](actors-transactions.md#order-receiver).

The Bundle may contain:

* One or more `MedicationRequest` resources (prescription lines)
* A coordination `Task` — grouping MedicationRequests that must be fulfilled together (e.g., due to regulatory or clinical requirements)
* A `RequestOrchestration` — expressing dependencies, sequencing, or alternative logic between orders
* `Patient` — the subject of the prescription
* `Medication` — referenced medication products
* Other supporting resources (e.g., `Condition`, `Observation`, `Coverage`) as needed

This transaction is aligned with the [Clinical Order Workflows (COW) IG](https://hl7.org/fhir/uv/cow/2025May/) subscription-notification Bundle pattern, where the Bundle carries a complete, self-contained set of resources for processing.

### X:Y.Z.2 Actors Roles

**Table X:Y.Z.2-1: Actor Roles**

| | |
| :--- | :--- |
| [Medication Order Placer](actors-transactions.md#order-placer) | Submits a prescription Bundle to the Medication Order Receiver |
| [Medication Order Receiver](actors-transactions.md#order-receiver) | Accepts the prescription Bundle from the Medication Order Placer |

### X:Y.Z.3 Referenced Standards

**FHIR-R5** [HL7 FHIR Release 5.0](http://www.hl7.org/FHIR/R5)

### X:Y.Z.4 Messages

**Figure X:Y.Z.4-1: Submit Prescription Bundle Interactions**

#### X:Y.Z.4.1 Submit Prescription Bundle Request Message

The [Medication Order Placer](actors-transactions.md#order-placer) submits a `Bundle` resource using the HTTP `POST` method to the server's base endpoint.

##### X:Y.Z.4.1.1 Trigger Events

This method is invoked when a prescriber creates or updates a prescription that involves:

* Multiple medication lines that belong together
* Coordination requirements (e.g., all lines must be dispensed at the same place)
* Supporting resources that must be available to the filler at receipt time

##### X:Y.Z.4.1.2 Message Semantics

The content type of the HTTP body shall be either `application/fhir+json` or `application/fhir+xml`.

The [Medication Order Placer](actors-transactions.md#order-placer) shall assure the Bundle is consistent and complete before sending.

###### X:Y.Z.4.1.2.1 Bundle type

The Bundle type SHALL be `subscription-notification`, following the COW IG pattern for order notification bundles. This Bundle type signals that the content is a push notification containing a coherent set of resources for processing, not a transaction to be executed atomically by the server.

###### X:Y.Z.4.1.2.2 Resource content

The Bundle SHALL contain at minimum:

* One or more `MedicationRequest` resources conforming to the [MedicationOrder](StructureDefinition-IHEMedicationOrder.md) profile

The Bundle MAY additionally contain:

* A coordination `Task` — whose `focus` references the MedicationRequests that must be fulfilled together. See [Coordinating Execution Across Lines](workflow-grouping-coordination.md#3-coordinating-execution-across-lines).
* A `RequestOrchestration` — expressing dependencies or sequencing between the orders. See [Dependencies Between Orders](workflow-grouping-coordination.md#4-dependencies-between-orders).
* `Patient` — the subject of the prescription
* `Medication` — medication product details referenced by the MedicationRequests
* Other supporting resources as referenced by the MedicationRequests (e.g., `Condition`, `Observation`, `AllergyIntolerance`, `Coverage`)

Example Bundle structure:

```
Bundle:
  type: "subscription-notification"
  entry:
    # The MedicationRequests (prescription lines)
    - resource:
        resourceType: "MedicationRequest"
        id: "rx-line-001"
        status: "active"
        intent: "order"
        groupIdentifier:
          value: "RX-2025-100"
        medication:
          reference:
            reference: "Medication/med-amoxicillin"
        subject:
          reference: "Patient/patient-1"

    - resource:
        resourceType: "MedicationRequest"
        id: "rx-line-002"
        status: "active"
        intent: "order"
        groupIdentifier:
          value: "RX-2025-100"
        medication:
          reference:
            reference: "Medication/med-omeprazole"
        subject:
          reference: "Patient/patient-1"

    # Coordination Task: these lines must be dispensed together
    - resource:
        resourceType: "Task"
        id: "coordination-task-001"
        status: "requested"
        intent: "order"
        code:
          coding:
            - system: "http://hl7.org/fhir/CodeSystem/task-code"
              code: "fulfill"
        focus:
          reference: "MedicationRequest/rx-line-001"
        extension:
          - url: "http://hl7.org/fhir/4.0/StructureDefinition/extension-Task.focus"
            valueReference:
              reference: "MedicationRequest/rx-line-002"

    # Patient context
    - resource:
        resourceType: "Patient"
        id: "patient-1"
        name:
          - family: "Smith"
            given: ["John"]

    # Medication details
    - resource:
        resourceType: "Medication"
        id: "med-amoxicillin"
        code:
          coding:
            - display: "Amoxicillin 500mg capsule"

    - resource:
        resourceType: "Medication"
        id: "med-omeprazole"
        code:
          coding:
            - display: "Omeprazole 20mg capsule"

```

##### X:Y.Z.4.1.3 Expected Actions

Upon receiving the Bundle, the [Medication Order Receiver](actors-transactions.md#order-receiver) is expected to:

* Validate the Bundle contents
* Store the MedicationRequests and associated resources
* Process any coordination Task and RequestOrchestration to understand fulfillment constraints
* Forward or make available the resources for downstream processing (e.g., dispense)

#### X:Y.Z.4.2 Submit Prescription Bundle Response

The [Medication Order Receiver](actors-transactions.md#order-receiver) **SHALL** return an HTTP Status code appropriate to the processing outcome.

##### X:Y.Z.4.2.1 Trigger Events

This response is always expected and provides the [Medication Order Placer](actors-transactions.md#order-placer) with acknowledgement of the Bundle including any technical issues.

##### X:Y.Z.4.2.2 Message Semantics

* On success: `200 (OK)` or `201 (Created)`
* On error: Appropriate error code

###### X:Y.Z.4.2.2.1 Resource content

On success, the response MAY contain a Bundle with the created resources, including server-assigned `id`, `version`, etc.

In case of error, the response **SHALL** contain an `OperationOutcome`.

##### X:Y.Z.4.2.3 Expected Actions

Upon receiving the response, the [Medication Order Placer](actors-transactions.md#order-placer) can persist the assigned identifiers, status, or trigger any issue resolution if needed.

