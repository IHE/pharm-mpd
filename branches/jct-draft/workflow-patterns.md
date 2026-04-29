

This page describes how medication orders are managed throughout their lifecycle — from creation through execution, modification, and completion. These patterns apply to prescriptions and dispenses and are aligned with the [HL7 FHIR Clinical Order Workflows (COW) Implementation Guide](https://hl7.org/fhir/uv/cow/2025May/), which provides the authoritative framework for clinical order lifecycle management in FHIR.

Implementers SHOULD consult the COW IG for detailed guidance. This page instantiates those patterns for medication ordering and dispensing.


### Fundamental Principles

The following principles govern order workflow management in this profile:

1. **Orders represent clinical intent and authorization.** A `MedicationRequest` captures what is authorized — the medication, dosage, and conditions. Its `status` reflects whether it is actionable, not how far along execution is.

2. **Tasks represent workflow coordination.** The `Task` resource is the mechanism for tracking execution, communicating status, and requesting changes. Task carries the "please do" — the actionable request to fulfill or act upon an order.

3. **Only the placer modifies orders.** The party that created the order controls its status and content. All other parties — fillers, intermediaries, patients — request changes through Tasks.


### Authorization Status vs. Execution Status

One of the most common sources of confusion in medication order systems is "status." Different stakeholders use this term to mean very different things — authorization state, dispensing progress, billing status, or clinical workflow stage.

This profile separates these concerns:

| Concept | Meaning | FHIR Element |
|---|---|---|
| **Authorization status** | Whether the order is actionable (draft, active, stopped, etc.) | `MedicationRequest.status` |
| **Execution status** | Progress of fulfillment activities | `Task.businessStatus` |
| **Dispense status** | Status of a specific dispensation event | `MedicationDispense.status` |
| **Administration status** | Status of administration to the patient | `MedicationAdministration.status` |
{:.table-bordered .table-striped}

#### Authorization Status (MedicationRequest.status)

The authorization status has a **limited, well-defined** set of values. It answers one question: *is this order actionable?*

<figure>
  {% include order-statuses.svg %}
</figure>

These statuses are intentionally few and unambiguous. They are:
* `draft` — the order is being prepared and is not yet actionable
* `active` — the order is current and actionable
* `on-hold` — the order is temporarily suspended
* `completed` — all activities associated with the order are complete
* `stopped` — the order has been withdrawn by the placer
* `cancelled` — the order was cancelled before any activity occurred
* `entered-in-error` — the order was created in error and should be disregarded
* `unknown` — the status cannot be determined

`MedicationRequest.statusReason` captures the **reason** for a status, not a sub-status. For example, `expired` is a reason why an order is `stopped` — it is not a status itself. Values like "in dispensation" or "awaiting approval" are **not** valid statusReasons because they describe execution progress, not why an authorization status changed.


#### Execution and Business Statuses

The "business statuses" — the rich, varied statuses that systems actually need for day-to-day operations — live in `Task.businessStatus`. These can include values like:
* *requested*, *accepted*, *in-progress*, *on-hold*, *completed*, *refused*
* Domain-specific values: *awaiting stock*, *partially dispensed*, *ready for pickup*, *in validation*...

Because these statuses vary by jurisdiction, institution, and context, this profile does not prescribe a single universal set. Instead, the pattern is consistent: **authorization status on the order, business statuses on the Task.**

This separation is what enables interoperability between systems that may have very different internal workflow models. A system does not need to understand another system's business statuses to know whether an order is actionable — it only needs to look at `MedicationRequest.status`.

> **In short**: Few, universal statuses on the order. Rich, context-specific statuses on the Task.


### Task as the Coordination Mechanism

The Task resource is the standard coordination mechanism for order workflows. In most expected systems, Tasks will be present alongside orders and dispenses.

#### Execution Tasks

When an order is placed, the filler (or an intermediary) creates a Task linked to the order via `Task.focus`. This Task represents the "please fulfill this order" — the actionable work item.

* **One Task per order** for overall coordination
* **Optional sub-Tasks** when multiple parties are involved (e.g., different pharmacies, different steps)

The Task carries its own status (`Task.status`) and business-specific status (`Task.businessStatus`), allowing fillers to communicate progress without modifying the order itself.


#### Communication Tasks — Requesting Changes

When a filler, patient, or intermediary needs something changed on the order, they do not modify the order directly. Instead, they create a **Task that represents the request for change**. This Task is sent to the placer, who evaluates it and — if appropriate — updates the order.

This is a key pattern that applies consistently:

* **Requesting cancellation**: The filler creates a Task asking the placer to cancel the order. This is not a cancellation — it is a *request to cancel*. The placer then decides whether to set the order to `cancelled` or `stopped`.

* **Requesting modification**: A pharmacist creates a Task asking the prescriber to change the dosage, the quantity, or other order details. The prescriber evaluates and updates the order if agreed.

* **Requesting hold**: An intermediary creates a Task asking the placer to put the order on hold (e.g., pending clinical review).

* **Refusing an order**: A filler who cannot or will not fulfill an order communicates this by updating the execution Task status to `rejected`. This does not change the order itself — the placer observes the rejection and decides the next step (reassign, cancel, etc.).

> A request to cancel an order is just that — a request. It is a Task asking the order owner to consider cancelling. The order owner retains control. This consistent pattern — **a request about a request** — applies to all change scenarios and keeps the model clean and predictable.

This pattern may seem indirect, but it reflects reality: in clinical practice, a pharmacist cannot unilaterally cancel a prescription. They ask the prescriber. A patient cannot modify their own order. They request a change. The FHIR model mirrors this clinical and legal reality.


### Grouping and Coordinating Orders

Medication orders often need to be grouped — either because they belong to the same prescription document, or because their execution must be coordinated.

#### Single-line vs. Multi-line Prescriptions

This profile supports both models (see [Single- and multiline prescriptions](grouping.html) for details):

* **Single-line**: Each `MedicationRequest` is an independent prescription
* **Multi-line**: Multiple `MedicationRequest` resources share a `groupIdentifier`, logically belonging to the same prescription

These two approaches are compatible. A system working with single-line prescriptions can process multi-line data by treating each line independently, optionally retrieving the group.

#### Coordinating Execution Across Lines

When multiple prescription lines must be dispensed together (e.g., a combination therapy that should be picked up at once), a coordinating Task is used:

* The Task references multiple orders via `Task.focus`
* In FHIR R5 (where `Task.focus` is 0..1), a [built-in extension mechanism](grouping.html#coordinating-several-requests) allows multiple focus references
* The coordinating Task represents "fulfill these orders together"

#### Dependencies Between Orders

When orders have sequencing or dependency requirements (e.g., "take medication A for 5 days, then start medication B"), a `RequestOrchestration` resource can express these relationships — ordering, alternatives, or conditional logic.


### Common Workflow Scenarios

The following scenarios illustrate how the patterns above combine in practice. Full examples are provided in the [Use Cases](usecases.html) page; here we focus on the workflow coordination aspects.

#### Straightforward Prescription and Dispense

1. Prescriber creates `MedicationRequest` (status: `active`)
2. Pharmacy creates execution `Task` (focus → the order; status: `accepted`)
3. Pharmacy dispenses → creates `MedicationDispense`, updates Task businessStatus
4. When all dispenses are complete, Task status → `completed`
5. Prescriber observes completion, may set MedicationRequest.status → `completed`

#### Cancellation by the Placer

1. Prescriber decides to cancel the order
2. Prescriber sets `MedicationRequest.status` → `cancelled` (if no execution has occurred) or `stopped` (if execution had begun)
3. Filler observes the status change and stops any pending activities

This is the simple case — the order owner directly changes the authorization status.

#### Cancellation Requested by the Filler

1. Pharmacist identifies a reason to cancel (e.g., drug interaction discovered)
2. Pharmacist creates a Task: *"Please consider cancelling order X — reason: drug interaction detected"*
3. Prescriber receives and evaluates the request
4. If agreed: Prescriber sets `MedicationRequest.status` → `stopped` and communicates back
5. If not agreed: Prescriber updates the request Task to `rejected` with a reason

The pharmacist **never** modifies the order directly. The Task is the vehicle for the request.

#### Filler Refuses to Fulfill

1. Pharmacy receives order, creates execution Task
2. Pharmacy determines it cannot fulfill (e.g., medication unavailable, clinical concern)
3. Pharmacy sets Task.status → `rejected`, with reason in `Task.statusReason`
4. Prescriber observes the rejection and decides next steps — reassign to another pharmacy, cancel, or modify the order

#### Order Modification

1. A change is needed (e.g., dosage adjustment based on lab results)
2. If by the placer: Prescriber directly updates the `MedicationRequest` and communicates the change
3. If requested by the filler: Filler creates a Task requesting the specific modification, prescriber evaluates and updates if agreed


### Use of Task in Practice

In most implementations, Task will be present in the system alongside orders and dispenses. The degree of Task usage depends on the system architecture:

* **Central prescription repositories** typically manage Tasks to coordinate between prescribers and pharmacies
* **Direct prescriber-to-pharmacy** systems may use simpler Task patterns or rely on status observation
* **Hospital systems** often have rich Task workflows with sub-Tasks per department or service

Regardless of architecture, the principles remain:
* Orders carry authorization status
* Tasks carry execution and business status
* Changes flow through Tasks
* Only the placer modifies orders

For detailed Task patterns and guidance, see the [COW IG - Using Task](https://hl7.org/fhir/uv/cow/2025May/using-task.html).

