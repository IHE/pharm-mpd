# Execution and Fulfillment Tracking - Medication Prescription and Dispense (MPD) v1.0.0-comment-2

* [**Table of Contents**](toc.md)
* [**Volume 1**](volume-1.md)
* [**Status and Workflow Management**](status-workflow-management.md)
* **Execution and Fulfillment Tracking**

## Execution and Fulfillment Tracking

This page details the patterns for tracking the execution and fulfillment of medication orders using Task. For general principles, see [Status and Workflow Management](status-workflow-management.md).

### 1. Straightforward Prescription and Dispense

The basic fulfillment flow: a prescriber creates an order, a pharmacy fulfills it, and both sides track progress through Task.

```
# Step 1: Prescriber creates the order
MedicationRequest:
  id: "order-123"
  status: "active"
  intent: "order"
  medication:
    concept:
      text: "Amoxicillin 500mg capsule"
  subject:
    reference: "Patient/patient-1"
  requester:
    reference: "Practitioner/dr-smith"
  dispenseRequest:
    quantity:
      value: 21
      unit: "capsule"

```

```
# Step 2: Pharmacy creates an execution Task
Task:
  id: "exec-task-001"
  status: "accepted"
  intent: "order"
  code:
    coding:
      - system: "http://hl7.org/fhir/CodeSystem/task-code"
        code: "fulfill"
  focus:
    reference: "MedicationRequest/order-123"
  owner:
    reference: "Organization/pharmacy-abc"
  businessStatus:
    text: "accepted"

```

```
# Step 3: Pharmacy dispenses and creates a MedicationDispense
MedicationDispense:
  id: "dispense-001"
  status: "completed"
  medication:
    concept:
      text: "Amoxicillin 500mg capsule"
  subject:
    reference: "Patient/patient-1"
  authorizingPrescription:
    - reference: "MedicationRequest/order-123"
  quantity:
    value: 21
    unit: "capsule"
  performer:
    - actor:
        reference: "Organization/pharmacy-abc"

# Task is updated to reflect completion
Task:
  id: "exec-task-001"
  status: "completed"
  businessStatus:
    text: "dispensed"

```

```
# Step 4: Prescriber observes completion, may close the order
MedicationRequest:
  id: "order-123"
  status: "completed"

```

### 2. Partial and Split Dispenses

A single prescription may be fulfilled through multiple dispensation events — for example, when the pharmacy has limited stock, or the patient prefers to collect in batches.

Each partial dispense is recorded as a separate `MedicationDispense`. The execution Task tracks overall progress.

```
# First partial dispense: 10 of 21 capsules
MedicationDispense:
  id: "dispense-partial-1"
  status: "completed"
  medication:
    concept:
      text: "Amoxicillin 500mg capsule"
  authorizingPrescription:
    - reference: "MedicationRequest/order-123"
  quantity:
    value: 10
    unit: "capsule"
  subject:
    reference: "Patient/patient-1"

# Task updated with progress
Task:
  id: "exec-task-001"
  status: "in-progress"
  businessStatus:
    text: "partially-dispensed"

```

```
# Second partial dispense: remaining 11 capsules
MedicationDispense:
  id: "dispense-partial-2"
  status: "completed"
  medication:
    concept:
      text: "Amoxicillin 500mg capsule"
  authorizingPrescription:
    - reference: "MedicationRequest/order-123"
  quantity:
    value: 11
    unit: "capsule"
  subject:
    reference: "Patient/patient-1"

# Task updated to completed
Task:
  id: "exec-task-001"
  status: "completed"
  businessStatus:
    text: "dispensed"

```

> The order itself remains `active` throughout partial dispensing. It is only set to `completed` by the prescriber when all expected fulfillment is done. The Task carries the execution progress.

### 3. Tracking Progress

For orders that involve repeated activities — such as a chronic medication with monthly dispenses, or a treatment course requiring multiple administrations — progress toward completion can be tracked using `Task.output`.

The completion status is expressed as a ratio: the numerator is the number of completed activities, and the denominator is the total expected.

```
# Task tracking progress: 2 of 6 monthly dispenses completed
Task:
  id: "exec-task-chronic"
  status: "in-progress"
  code:
    coding:
      - system: "http://hl7.org/fhir/CodeSystem/task-code"
        code: "fulfill"
  focus:
    reference: "MedicationRequest/chronic-order-789"
  owner:
    reference: "Organization/pharmacy-abc"
  businessStatus:
    text: "in-progress"
  output:
    - type:
        text: "completion-progress"
      valueRatio:
        numerator:
          value: 2
        denominator:
          value: 6

```

This pattern enables both the placer and filler to have a clear, quantifiable view of fulfillment progress. For detailed guidance, see the [COW IG - Tracking Progress](https://build.fhir.org/ig/HL7/fhir-cow-ig/tracking-progress.html).

### 4. Task in Different Architectures

The degree of Task usage depends on system architecture, but the principles remain the same regardless.

#### 4.1. Central Prescription Repository

A national or regional system acts as intermediary between prescribers and pharmacies. Tasks are central to coordination:

```
# Prescriber submits order to central repository
MedicationRequest:
  id: "order-central-001"
  status: "active"
  subject:
    reference: "Patient/patient-1"
  requester:
    reference: "Practitioner/dr-smith"

# Repository creates execution Task, unassigned
Task:
  id: "central-task-001"
  status: "requested"                 # Waiting for a pharmacy to accept
  code:
    coding:
      - system: "http://hl7.org/fhir/CodeSystem/task-code"
        code: "fulfill"
  focus:
    reference: "MedicationRequest/order-central-001"
  owner: ...                          # Assigned when a pharmacy accepts

# Pharmacy accepts
Task:
  id: "central-task-001"
  status: "accepted"
  owner:
    reference: "Organization/pharmacy-abc"

```

#### 4.2. Direct Prescriber-to-Pharmacy

In simpler settings, the prescriber sends orders directly to a known pharmacy. Tasks may be simpler:

```
# Order sent directly to a specific pharmacy
MedicationRequest:
  id: "order-direct-001"
  status: "active"
  dispenseRequest:
    dispenser:
      reference: "Organization/pharmacy-abc"

# Pharmacy creates and immediately accepts the Task
Task:
  id: "direct-task-001"
  status: "accepted"
  code:
    coding:
      - system: "http://hl7.org/fhir/CodeSystem/task-code"
        code: "fulfill"
  focus:
    reference: "MedicationRequest/order-direct-001"
  owner:
    reference: "Organization/pharmacy-abc"

```

#### 4.3. Hospital Setting

Hospital systems often have rich workflows with multiple departments involved. Sub-Tasks can track each department's contribution:

```
# Main coordination Task
Task:
  id: "hospital-task-main"
  status: "in-progress"
  code:
    coding:
      - system: "http://hl7.org/fhir/CodeSystem/task-code"
        code: "fulfill"
  focus:
    reference: "MedicationRequest/order-hospital-001"

# Sub-Task: pharmacy preparation
Task:
  id: "hospital-task-pharmacy"
  status: "completed"
  partOf:
    - reference: "Task/hospital-task-main"
  owner:
    reference: "Organization/hospital-pharmacy"
  businessStatus:
    text: "prepared"

# Sub-Task: nursing administration
Task:
  id: "hospital-task-nursing"
  status: "in-progress"
  partOf:
    - reference: "Task/hospital-task-main"
  owner:
    reference: "Organization/ward-3b"
  businessStatus:
    text: "scheduled"

```

> Regardless of architecture, the fundamentals hold: orders carry authorization status, Tasks carry execution status, and only the placer modifies orders.

