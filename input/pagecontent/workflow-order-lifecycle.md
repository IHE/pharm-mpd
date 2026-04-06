

This page details the patterns for changing, cancelling, refusing, or holding medication orders. These patterns follow the fundamental principle that **only the order placer modifies orders** — all other parties request changes through Tasks.

For general principles and context, see [Status and Workflow Management](status-workflow-management.html).


### 1. Cancellation by the Placer

When the prescriber decides to cancel their own order, they update the order status directly. This is the simplest case — no Task-based negotiation is needed.

* If **no execution has occurred**: set status to `cancelled`
* If **execution had already begun** (e.g., partial dispense): set status to `stopped`

```yaml
# Before: active order
MedicationRequest:
  id: "order-123"
  status: "active"
  intent: "order"
  medication: Amoxicillin 500mg
  subject: Patient/patient-1
  requester: Practitioner/dr-smith

# After: prescriber cancels
MedicationRequest:
  id: "order-123"
  status: "cancelled"               # or "stopped" if execution had begun
  statusReason:
    text: "Treatment plan changed"
  intent: "order"
  medication: Amoxicillin 500mg
  subject: Patient/patient-1
  requester: Practitioner/dr-smith
```

The filler observes the status change (via polling or subscription) and stops any pending activities.


### 2. Cancellation Requested by the Filler

When a pharmacist or other filler identifies a reason to cancel an order (e.g., drug interaction, patient request), they **cannot cancel the order directly**. Instead, they create a Task requesting the prescriber to consider cancellation.

This is the "request about a request" pattern: a Task asking the order owner to act on the order.

```yaml
# Step 1: Pharmacist creates a request-to-cancel Task
Task:
  status: "requested"
  intent: "order"
  code:
    coding:
      - system: "http://hl7.org/fhir/CodeSystem/task-code"
        code: "abort"
        display: "Mark the focal resource as no longer active"
  focus:
    reference: "MedicationRequest/order-123"
  requester:
    reference: "Practitioner/pharmacist-jones"    # Who is asking
  owner:
    reference: "Practitioner/dr-smith"            # Who should act (the prescriber)
  reasonCode:
    text: "Drug interaction detected with current medication"
```

The prescriber receives this Task, evaluates the request, and takes action:

**If agreed:**
```yaml
# Step 2a: Prescriber cancels the order
MedicationRequest:
  id: "order-123"
  status: "stopped"
  statusReason:
    text: "Cancelled per pharmacist request - drug interaction"

# Step 2b: Prescriber completes the request Task
Task:
  status: "completed"
```

**If not agreed:**
```yaml
# Step 2: Prescriber rejects the request
Task:
  status: "rejected"
  statusReason:
    text: "Interaction is clinically acceptable in this context"
```


### 3. Refusing to Fulfill an Order

When a pharmacy receives an order but determines it cannot or should not fulfill it, the pharmacy communicates this by rejecting the **execution Task** — not the order itself.

```yaml
# Step 1: Execution Task was created when order was received
Task:
  id: "exec-task-456"
  status: "accepted"
  intent: "order"
  code:
    coding:
      - system: "http://hl7.org/fhir/CodeSystem/task-code"
        code: "fulfill"
        display: "Fulfill the focal request"
  focus:
    reference: "MedicationRequest/order-123"
  owner:
    reference: "Organization/pharmacy-abc"

# Step 2: Pharmacy refuses — updates the Task
Task:
  id: "exec-task-456"
  status: "rejected"
  statusReason:
    text: "Medication not in stock, unable to source within required timeframe"
  focus:
    reference: "MedicationRequest/order-123"
  owner:
    reference: "Organization/pharmacy-abc"
```

The order itself remains `active` — the prescriber observes the rejection and decides the next step:
* Reassign to another pharmacy (create a new execution Task)
* Cancel the order
* Modify the order and resubmit

> The order is still valid and authorized. The filler simply cannot act on it. The decision of what to do next belongs to the placer.


### 4. Placing an Order on Hold

#### 4.1. By the Placer

The prescriber directly sets the order to `on-hold`:

```yaml
MedicationRequest:
  id: "order-123"
  status: "on-hold"
  statusReason:
    text: "Pending lab results"
```

To resume, the prescriber sets status back to `active`.


#### 4.2. Requested by the Filler

A pharmacist requests a hold through a Task:

```yaml
Task:
  status: "requested"
  intent: "order"
  code:
    coding:
      - system: "http://hl7.org/fhir/CodeSystem/task-code"
        code: "suspend"
        display: "Suspend the focal resource"
  focus:
    reference: "MedicationRequest/order-123"
  requester:
    reference: "Practitioner/pharmacist-jones"
  owner:
    reference: "Practitioner/dr-smith"
  reasonCode:
    text: "Patient reports adverse reaction, requesting clinical review"
```

The prescriber evaluates and decides whether to place the order on hold.


### 5. Order Modification by the Placer

When the prescriber needs to change order details (e.g., dosage adjustment based on lab results), they update the MedicationRequest directly.

Depending on the system and jurisdiction, this may be done by:
* Updating the existing resource in place
* Creating a new MedicationRequest that replaces the previous one (using `priorPrescription`)

```yaml
# Option A: Update in place
MedicationRequest:
  id: "order-123"
  status: "active"
  medication: Amoxicillin 500mg
  dosageInstruction:
    - text: "Take 1 tablet three times daily"   # Changed from twice daily
      timing:
        repeat:
          frequency: 3                           # Changed from 2
          period: 1
          periodUnit: "d"

# Option B: Replace with new order
MedicationRequest:
  id: "order-456"
  status: "active"
  medication: Amoxicillin 500mg
  priorPrescription:
    reference: "MedicationRequest/order-123"     # Links to the replaced order
  dosageInstruction:
    - text: "Take 1 tablet three times daily"
```

When using replacement, the previous order should be set to `stopped` or `cancelled`.


### 6. Order Modification Requested by the Filler

When a pharmacist or other party needs to request a change to order details, they create a Task describing the requested modification. This follows the same "request about a request" pattern as cancellation requests.

```yaml
# Pharmacist requests a dosage change
Task:
  status: "requested"
  intent: "order"
  code:
    coding:
      - system: "http://hl7.org/fhir/CodeSystem/task-code"
        code: "change"
        display: "Change the focal resource"
  focus:
    reference: "MedicationRequest/order-123"
  requester:
    reference: "Practitioner/pharmacist-jones"
  owner:
    reference: "Practitioner/dr-smith"
  reasonCode:
    text: "Patient has difficulty swallowing tablets, requesting change to liquid form"
  note:
    - text: "Suggest: Amoxicillin 250mg/5ml oral suspension, 10ml three times daily"
```

The prescriber evaluates, and if agreed, modifies the order and completes the Task. If not agreed, the Task is rejected with a reason.

> In all cases, the pattern is the same: the filler creates a Task, the placer evaluates, and only the placer modifies the order. This keeps the authorization chain intact and the workflow predictable.

