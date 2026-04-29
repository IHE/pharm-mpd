# Status and Workflow Management - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Volume 1**](volume-1.md)
* **Status and Workflow Management**

## Status and Workflow Management

This page describes how medication orders are managed throughout their lifecycle — from creation through execution, modification, and completion. These patterns apply to prescriptions and dispenses and are aligned with the [HL7 FHIR Clinical Order Workflows (COW) Implementation Guide](https://hl7.org/fhir/uv/cow/2025May/), which provides the authoritative framework for clinical order lifecycle management in FHIR.

Implementers SHOULD consult the COW IG for detailed guidance. This page instantiates those patterns for medication ordering and dispensing.

### 1. Fundamental Principles

The following principles govern order workflow management in this profile:

1. **Orders represent clinical intent and authorization.** A `MedicationRequest` captures what is authorized — the medication, dosage, and conditions. Its `status` reflects whether it is actionable, not how far along execution is.
1. **Tasks represent workflow coordination.** The `Task` resource is the mechanism for tracking execution, communicating status, and requesting changes. Task carries the "please do" — the actionable request to fulfill or act upon an order.
1. **Only the placer modifies orders.** The party that created the order controls its status and content. All other parties — fillers, intermediaries, patients — request changes through Tasks.
1. **Change requests are requests about requests.** When a filler or patient needs an order cancelled or modified, the mechanism is a Task — a request directed at the order owner. This is not an indirect workaround; it mirrors clinical and legal reality where a pharmacist asks the prescriber, not unilaterally acts.

### 2. Authorization Status vs. Business Status

One of the most common sources of confusion in medication order systems is "status." Different stakeholders use this term to mean very different things — authorization state, dispensing progress, billing status, or clinical workflow stage.

This profile separates these concerns clearly:

| | | |
| :--- | :--- | :--- |
| **Authorization status** | Whether the order is actionable (draft, active, stopped, etc.) | `MedicationRequest.status` |
| **Execution status** | Progress of fulfillment activities | `Task.businessStatus` |
| **Dispense status** | Status of a specific dispensation event | `MedicationDispense.status` |
| **Administration status** | Status of administration to the patient | `MedicationAdministration.status` |

#### 2.1. Authorization Status (MedicationRequest.status)

The authorization status has a **limited, well-defined** set of values. It answers one question: **is this order actionable?**

These statuses are intentionally few and unambiguous:

| | |
| :--- | :--- |
| `draft` | The order is being prepared and is not yet actionable |
| `active` | The order is current and actionable |
| `on-hold` | The order is temporarily suspended |
| `completed` | All activities associated with the order are complete |
| `stopped` | The order has been withdrawn by the placer (after some execution may have occurred) |
| `cancelled` | The order was cancelled before any execution occurred |
| `entered-in-error` | The order was created in error and should be disregarded |
| `unknown` | The status cannot be determined |

`MedicationRequest.statusReason` captures the **reason** for a status change — not a sub-status or execution detail. For example:

* `expired` is a valid statusReason for why an order is now `stopped`
* `"in dispensation"` or `"awaiting approval"` are **not** valid statusReasons — they describe execution progress, which belongs on `Task.businessStatus`

#### 2.2. Business and Execution Statuses (Task.businessStatus)

The "business statuses" — the rich, varied statuses that systems actually need for day-to-day operations — live in `Task.businessStatus`. These can include values like:

* **requested**, **accepted**, **in-progress**, **on-hold**, **completed**, **refused**
* Domain-specific values: **awaiting stock**, **partially dispensed**, **ready for pickup**, **in validation**, **awaiting co-signature**…

Because these statuses vary by jurisdiction, institution, and context, this profile does not prescribe a single universal set. Instead, the pattern is consistent: **authorization status on the order, business statuses on the Task.**

This separation is what enables interoperability between systems that may have very different internal workflow models. A system does not need to understand another system's business statuses to know whether an order is actionable — it only needs `MedicationRequest.status`.

> **In short**: Few, universal statuses on the order. Rich, context-specific statuses on the Task.

The relationship between authorization status and execution status:

```
# The order carries authorization status
MedicationRequest:
  status: "active"                    # Is this actionable? Yes.
  statusReason: ...                   # Why did it change status? (if applicable)

# The Task carries execution/business status  
Task:
  status: "in-progress"              # FHIR workflow status
  businessStatus: "awaiting-stock"   # Domain-specific business status
  focus: MedicationRequest/order-123

```

### 3. Task and RequestOrchestration as Coordination Mechanisms

Two resources coordinate order workflows:

* **Task** is the standard coordination mechanism for execution and change requests, as defined in the [COW IG](https://hl7.org/fhir/uv/cow/2025May/using-task.html). In most expected systems, Tasks will be present alongside orders and dispenses.
* **RequestOrchestration** (previously RequestGroup) expresses relationships between orders — sequencing, alternatives, or conditional logic. It defines the clinical plan; Tasks coordinate its execution.

Tasks serve two distinct roles:

1. **Execution Tasks**— representing the work to be done ("please fulfill this order")
1. **Communication Tasks**— representing requests for change ("please cancel/modify this order")

Both follow the same FHIR Task structure but differ in their `code` and intent. The key elements of a Task in medication workflows:

```
Task:
  status: "requested"                          # FHIR workflow status
  intent: "order"                              # This is an actionable request
  code: ...                                    # What kind of task (fulfill, cancel, modify...)
  focus: MedicationRequest/order-123           # The order this relates to
  requester: Practitioner/pharmacist-456       # Who is asking
  owner: Practitioner/prescriber-789           # Who should act on this
  businessStatus: ...                          # Domain-specific progress
  reasonCode: ...                              # Why this task was created

```

When multiple orders must be coordinated — for example, because local regulations require that all lines of a multi-line prescription be dispensed together — a **coordination Task** is created whose `focus` points at each of the individual MedicationRequests that must be fulfilled as a unit. This coordination Task represents the grouped fulfillment: one Task, multiple focus references, one coordinated dispensation event.

```
# Coordination Task: all lines of a multi-line prescription must be dispensed together
Task:
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
    - url: "http://hl7.org/fhir/4.0/StructureDefinition/extension-Task.focus"
      valueReference:
        reference: "MedicationRequest/rx-line-003"
  owner:
    reference: "Organization/pharmacy-abc"

```

### 4. Workflow Pattern Groups

The workflow patterns are organized into three groups, each detailed in its own page:

#### 4.1. Order Lifecycle Management

Patterns for changing, cancelling, refusing, or holding orders:

* **[1. Cancellation by the placer](workflow-order-lifecycle.md#1-cancellation-by-the-placer)** — The prescriber directly cancels or stops the order
* **[2. Cancellation requested by the filler](workflow-order-lifecycle.md#2-cancellation-requested-by-the-filler)** — A pharmacist asks the prescriber to cancel, via a Task
* **[3. Refusing to fulfill an order](workflow-order-lifecycle.md#3-refusing-to-fulfill-an-order)** — A pharmacy rejects the execution Task
* **[4. Placing an order on hold](workflow-order-lifecycle.md#4-placing-an-order-on-hold)** — Suspending an order, by placer or by request
* **[5. Order modification by the placer](workflow-order-lifecycle.md#5-order-modification-by-the-placer)** — The prescriber updates order details directly
* **[6. Order modification requested by the filler](workflow-order-lifecycle.md#6-order-modification-requested-by-the-filler)** — A pharmacist asks the prescriber to change order details, via a Task

#### 4.2. Grouping and Coordinating Orders

Patterns for managing related orders together:

* **[1. Single-line prescriptions](workflow-grouping-coordination.md#1-single-line-prescriptions)** — Each MedicationRequest is an independent prescription
* **[2. Multi-line prescriptions](workflow-grouping-coordination.md#2-multi-line-prescriptions)** — Multiple MedicationRequests share a groupIdentifier
* **[3. Coordinating execution across lines](workflow-grouping-coordination.md#3-coordinating-execution-across-lines)** — Using a coordinating Task to fulfill multiple orders together
* **[4. Dependencies between orders](workflow-grouping-coordination.md#4-dependencies-between-orders)** — Using RequestOrchestration for sequencing and conditional logic

#### 4.3. Execution and Fulfillment Tracking

Patterns for tracking order fulfillment:

* **[1. Straightforward prescription and dispense](workflow-execution-tracking.md#1-straightforward-prescription-and-dispense)** — The basic happy path
* **[2. Partial and split dispenses](workflow-execution-tracking.md#2-partial-and-split-dispenses)** — Fulfilling an order across multiple dispensations
* **[3. Tracking progress](workflow-execution-tracking.md#3-tracking-progress)** — Using Task to report completion ratios
* **[4. Task in different architectures](workflow-execution-tracking.md#4-task-in-different-architectures)** — How Task applies in central repositories, direct systems, and hospital settings

### 5. Use of Task in Practice

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

