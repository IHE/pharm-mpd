

This page details the patterns for grouping related medication orders and coordinating their execution. For general principles, see [Status and Workflow Management](status-workflow-management.html). For structural details on single- and multi-line prescriptions, see [Single- and multiline prescriptions](grouping.html).


### 1. Single-line Prescriptions

In many jurisdictions, each prescription corresponds to exactly one medication line. Each `MedicationRequest` stands alone as an independent prescription.

```yaml
# A single-line prescription — one MedicationRequest, self-contained
MedicationRequest:
  id: "rx-001"
  status: "active"
  intent: "order"
  identifier:
    - system: "http://pharmacy.example.org/prescriptions"
      value: "RX-2025-001"
  medication:
    concept:
      text: "Amoxicillin 500mg capsule"
  subject:
    reference: "Patient/patient-1"
  requester:
    reference: "Practitioner/dr-smith"
  dosageInstruction:
    - text: "Take 1 capsule three times daily for 7 days"
```

No grouping elements are needed. The prescription identifier and the order identifier are the same.


### 2. Multi-line Prescriptions

In other jurisdictions, a prescription is a document containing multiple medication lines. Each line is a separate `MedicationRequest`, and they are linked by a shared `groupIdentifier`.

```yaml
# Line 1 of a multi-line prescription
MedicationRequest:
  id: "rx-line-001"
  status: "active"
  intent: "order"
  groupIdentifier:
    system: "http://pharmacy.example.org/prescriptions"
    value: "RX-2025-100"                         # Shared across all lines
  identifier:
    - system: "http://pharmacy.example.org/prescription-lines"
      value: "RX-2025-100-1"                     # Unique per line
  medication:
    concept:
      text: "Omeprazole 20mg capsule"
  subject:
    reference: "Patient/patient-1"
  requester:
    reference: "Practitioner/dr-smith"
  dosageInstruction:
    - text: "Take 1 capsule once daily in the morning"

# Line 2 of the same prescription
MedicationRequest:
  id: "rx-line-002"
  status: "active"
  intent: "order"
  groupIdentifier:
    system: "http://pharmacy.example.org/prescriptions"
    value: "RX-2025-100"                         # Same groupIdentifier
  identifier:
    - system: "http://pharmacy.example.org/prescription-lines"
      value: "RX-2025-100-2"
  medication:
    concept:
      text: "Amoxicillin 1g tablet"
  subject:
    reference: "Patient/patient-1"
  requester:
    reference: "Practitioner/dr-smith"
  dosageInstruction:
    - text: "Take 1 tablet twice daily for 10 days"
```

These two approaches are **compatible**. A system that works with single-line prescriptions can process multi-line data by treating each line independently. The `groupIdentifier` is an optional grouping signal — not a structural dependency.


### 3. Coordinating Execution Across Lines

When multiple prescription lines must be fulfilled together, a **coordination Task** groups the individual requests into a single unit of work. The coordination Task's `focus` points at each of the MedicationRequests that must be fulfilled together.

This is commonly needed when:
* A combination therapy must be dispensed in a single visit
* Local regulations require that all lines of a multi-line prescription be dispensed at the same place or occasion
* Clinical safety requires that medications be dispensed together (e.g., a drug and its required adjunct)

In FHIR R5 (where `Task.focus` has cardinality 0..1), the [extension mechanism described in the grouping page](grouping.html#coordinating-several-requests) allows multiple focus references.

```yaml
# Coordination Task: all lines of this prescription must be dispensed together
# (e.g., local regulations require single-point dispensation for multi-line orders)
Task:
  status: "requested"
  intent: "order"
  code:
    coding:
      - system: "http://hl7.org/fhir/CodeSystem/task-code"
        code: "fulfill"
        display: "Fulfill the focal request"
  focus:
    reference: "MedicationRequest/rx-line-001"
  # Additional focus references via extension (R5)
  extension:
    - url: "http://hl7.org/fhir/4.0/StructureDefinition/extension-Task.focus"
      valueReference:
        reference: "MedicationRequest/rx-line-002"
    - url: "http://hl7.org/fhir/4.0/StructureDefinition/extension-Task.focus"
      valueReference:
        reference: "MedicationRequest/rx-line-003"
  requester:
    reference: "Practitioner/dr-smith"
  owner:
    reference: "Organization/pharmacy-abc"
```

This coordination Task acts as the single point of workflow management for the group. The pharmacy accepts or rejects the coordinated fulfillment as a whole. Each individual MedicationRequest remains an independent authorization — the coordination is purely at the execution level, expressed through the Task.

> The coordination Task does not replace or duplicate the orders. It simply says: "these requests must be fulfilled together." The orders themselves may each have their own individual execution Tasks in addition to the coordination Task, depending on the system's needs.


### 4. Dependencies Between Orders

When orders have sequencing, conditional, or alternative relationships — for example, "take medication A for 5 days, then switch to medication B" — a `RequestOrchestration` resource expresses these dependencies.

```yaml
# RequestOrchestration: sequential therapy
RequestOrchestration:
  id: "ro-sequential-therapy"
  status: "active"
  intent: "order"
  subject:
    reference: "Patient/patient-1"
  action:
    # First action: take Amoxicillin
    - title: "Phase 1: Amoxicillin"
      resource:
        reference: "MedicationRequest/rx-phase1"
      relatedAction:
        - targetId: "phase2"
          relationship: "before"
    # Second action: switch to Clarithromycin
    - id: "phase2"
      title: "Phase 2: Clarithromycin"
      resource:
        reference: "MedicationRequest/rx-phase2"
```

RequestOrchestration can express:
* **Sequencing**: one order must be completed before the next begins (`before`, `after`)
* **Alternatives**: one of several possible medications (`any` grouping behavior)
* **All required**: all orders in the group must be fulfilled (`all` grouping behavior)
* **Conditional logic**: actions that depend on conditions or outcomes

> Note: RequestOrchestration manages clinical intent — the *what* and *when*. Task manages workflow — the *who* and *how*. They complement each other: a RequestOrchestration defines the plan, and Tasks coordinate its execution.

