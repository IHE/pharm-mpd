This section corresponds to transaction [PHARM-6] of the IHE Technical Framework. Transaction [PHARM-6] is used by the [Medication Order Placer](actors-transactions.html#order-placer) and the [Medication Order Receiver](actors-transactions.html#order-receiver) actors. The Submit Medication Order [PHARM-6] transaction is used by the author of a medication order to send a new or updated order - typically a prescription - to a receiving system.

### X:Y.Z.1 Scope

The Submit Medication Order [PHARM-6] transaction passes a medication order, consisting of one or more order items, from a [Medication Order Placer](actors-transactions.html#order-placer) to a [Medication Order Receiver](actors-transactions.html#order-receiver). Each order item is a `MedicationRequest`. The order can be:
* an order with a single order item (single-line prescription);
* an order with multiple order items (multi-line prescription), where the order items share a `groupIdentifier` and can optionally be coordinated by a `RequestOrchestration`;
* a proposal, a plan, or a draft;
* an order that has not yet been validated;
* an update of an order previously sent by the same Placer, including cancellation of that order by the Placer (see [Updates and cancellation](#updates-and-cancellation)).

The transaction can be implemented in two ways, each defined as an actor option:

| Option | What is sent | Typical use |
|--------|--------------|-------------|
| [Order Bundle Option](#order-bundle-option) | A `Bundle` of type `subscription-notification`, aligned with [HL7 Clinical Order Workflows (COW)](https://build.fhir.org/ig/HL7/fhir-cow-ig/), that carries the order items together with the resources needed to act on them | Orders with multiple order items; receivers that need the patient, prescriber and medication details in a single exchange |
| [Single Order Option](#single-order-option) | One order item (`MedicationRequest`) per interaction, using RESTful `create` / `update` | Orders with a single order item; systems that already exchange `MedicationRequest` directly |
{:.table-bordered}

The [Medication Order Placer](actors-transactions.html#order-placer) and the [Medication Order Receiver](actors-transactions.html#order-receiver) SHALL support at least one of the Order Bundle Option and the Single Order Option.

This transaction does not cover:
* **Requests by another party to change or cancel an order** (for example a pharmacist asking the prescriber to cancel an order). These are not updates by the author and will be handled separately.
* **Sending a `Task` that asks the Receiver to execute the order.** This may be revisited later.
* **The workflow context for executing an order**, such as current or previous dispenses. This transaction submits an order. It does not convey everything needed to execute a workflow.

The [Order Bundle Option](#order-bundle-option) is preferred over other technical approaches:
* sending a FHIR `Document` (`Bundle` of type `document`). A prescription submission is not a document: it has no attestation or composition semantics, and its content is expected to change status over time.
* placing related resources as `contained` resources inside the `MedicationRequest`. A contained resource can only be referenced from within the resource that contains it, so in an order with several order items, each `MedicationRequest` would carry its own copy of the same `Patient` and prescriber. In the Order Bundle Option, these resources are entries of the `Bundle`, included once and referenced by all order items.
* `Bundle` of type `collection` or `transaction`. A `transaction` would ask the Receiver to persist the resources as sent, and a `collection` has no defined processing semantics.

### X:Y.Z.2 Actor Roles

**Table X:Y.Z.2-1: Actor Roles**

| Actor | Role |
|-------------------+--------------------------|
| [Medication Order Placer](actors-transactions.html#order-placer) | Submits new or updated medication orders to the Medication Order Receiver |
| [Medication Order Receiver](actors-transactions.html#order-receiver) | Accepts medication orders from the Medication Order Placer |
{:.table-bordered}

### X:Y.Z.3 Referenced Standards

- **FHIR-R5** [HL7 FHIR Release 5.0](http://hl7.org/fhir/R5)
- **FHIR R5 Subscriptions Framework** [Subscriptions](http://hl7.org/fhir/R5/subscriptions.html) - for the `subscription-notification` Bundle and `SubscriptionStatus` (Order Bundle Option)
- **HL7 COW** [HL7 FHIR Clinical Order Workflows](https://build.fhir.org/ig/HL7/fhir-cow-ig/) - for the alignment of the Order Bundle Option with the COW Subscription Notification

### X:Y.Z.4 Messages

<figure>
{% include pharm-6.svg %}
</figure>

**Figure X:Y.Z.4-1: Submit Medication Order Interactions**

#### X:Y.Z.4.1 Submit Medication Order Request Message

##### X:Y.Z.4.1.1 Trigger Events

The [Medication Order Placer](actors-transactions.html#order-placer) sends this message when:
* a new order is created that is to be made available to the Receiver - including proposals, plans and drafts;
* the Placer changes an order it has previously sent, including changes of status such as cancellation.

##### X:Y.Z.4.1.2 Message Semantics

The content type of the HTTP body SHALL be either `application/fhir+json` or `application/fhir+xml`.

The [Medication Order Placer](actors-transactions.html#order-placer) SHALL ensure the order is consistent and actionable for its stated `intent` and `status` before sending.

The semantics of each order item are captured in the [MedicationOrderModel](StructureDefinition-IHEMedicationOrderModel.html), and for orders with multiple order items in the [Multiline Order Model](StructureDefinition-IHEMultilineOrder.html). The technical representation of each order item is the [MedicationOrder](StructureDefinition-IHEMedicationOrder.html) profile.

<a name="order-bundle-option"> </a>

###### Order Bundle Option

If the [Medication Order Placer](actors-transactions.html#order-placer) supports the Order Bundle Option, it SHALL be able to submit a medication order by sending a `Bundle` conforming to the [Medication Order Notification Bundle](StructureDefinition-IHEMedicationOrderNotificationBundle.html) profile, using HTTP `POST` to the Receiver's notification endpoint. The notification endpoint is either the `Subscription.endpoint` of an explicit subscription, or an endpoint agreed between the parties when the subscription is implicit.

The `Bundle`:
* SHALL have `type` = `subscription-notification`, with a [Medication Order Notification Status](StructureDefinition-IHEMedicationOrderNotificationStatus.html) as the first entry;
* SHALL contain one or more order items, as [MedicationOrder](StructureDefinition-IHEMedicationOrder.html) entries;
* SHALL contain the `Patient` who is the subject of the order;
* SHOULD contain the prescriber (`Practitioner` / `PractitionerRole`) and the `Medication` resources referenced by the order items;
* MAY contain a `RequestOrchestration` that coordinates the order items, for example when they must start together. The shared `groupIdentifier` may be sufficient to keep the order items of an order together;
* MAY contain other resources referenced by the order items, for example supporting information (`Condition`, `Observation`), `Coverage` or `Organization`.

Resources referenced by the order items SHOULD be included as entries of the `Bundle`, so that the Receiver can process the order without resolving references back to the Placer. Resources shared by several order items, such as the `Patient` and the prescriber, SHOULD NOT be conveyed as `contained` resources in the `MedicationRequest`. Each entry SHALL have a `fullUrl`. References between entries SHALL resolve to the `fullUrl` of the referenced entry.

The `SubscriptionStatus.notificationEvent.focus` references the main resource of the notification: the `RequestOrchestration` when one is included; otherwise a `MedicationRequest`, with the other order items referenced in `additionalContext`. When the `Bundle` includes a `Task`, the focus is the `Task`, in line with COW.

> **Open issue:** whether the COW Coordination Task can be included in the `Bundle` is to be confirmed with HL7 COW. Until then, a `Task` MAY be included, and the Receiver SHALL NOT require one.

For FHIR R4 implementations, the equivalent structure is the COW [Subscription Notification](https://build.fhir.org/ig/HL7/fhir-cow-ig/StructureDefinition-cow-subscription-notification.html) Bundle, which is based on the Subscriptions R5 Backport.

<a name="single-order-option"> </a>

###### Single Order Option

If the [Medication Order Placer](actors-transactions.html#order-placer) supports the Single Order Option, it SHALL be able to submit a single `MedicationRequest` conforming to the [MedicationOrder](StructureDefinition-IHEMedicationOrder.html) profile:
* a new order using HTTP `POST` to the `/MedicationRequest` endpoint (`create`);
* an update of an order using HTTP `PUT` to `/MedicationRequest/[id]` (`update`).

Referenced resources (`Patient`, prescriber, `Medication`) are referenced and not contained.

For an order with multiple order items, each order item is sent as a separate interaction, and all order items share the same `groupIdentifier`. A `RequestOrchestration` is not conveyed with this option; if one is needed, the [Order Bundle Option](#order-bundle-option) can be used.

<a name="updates-and-cancellation"> </a>

###### Updates and cancellation

Only the author of an order - the [Medication Order Placer](actors-transactions.html#order-placer) that issued it - updates it with this transaction.

* **Order Bundle Option:** the Placer sends a new notification `Bundle` that contains the updated order items, with the same business `identifier` and `groupIdentifier` as the original.
* **Single Order Option:** the Placer sends each updated order item (`MedicationRequest`) using `update`.

Cancellation by the Placer is an update of the order with `status` = `cancelled`. An update with `status` = `entered-in-error` has the same expected outcome for the Receiver as a cancellation, and the Receiver SHALL handle it accordingly: it stops further processing of the order.

##### X:Y.Z.4.1.3 Expected Actions

Upon receiving the request, the [Medication Order Receiver](actors-transactions.html#order-receiver) SHALL validate it and respond as described in [the response message](#response). If the request is valid, the Receiver stores the order, forwards it, or both, according to its role in the deployment.

The Medication Order Receiver:
* SHALL NOT change the content of the received order. Changes to an order are made by its author.
* SHOULD treat order items received in the same `Bundle`, or sharing a `groupIdentifier`, as belonging to the same order;
* SHALL process an update of a previously received order (same business `identifier`) as a new version of that order, and not as a new order;
* MAY create its own `Task` to track the execution of the order. Where that `Task` is hosted is a deployment choice that this profile does not constrain.

<a name="response"> </a>

#### X:Y.Z.4.2 Submit Medication Order Response

##### X:Y.Z.4.2.1 Trigger Events

The [Medication Order Receiver](actors-transactions.html#order-receiver) SHALL always respond. The response acknowledges the request, including any technical issues.

##### X:Y.Z.4.2.2 Message Semantics

| Option | Success | Response body on success |
|--------|---------|--------------------------|
| Order Bundle Option | `200 (OK)` or `202 (Accepted)` | none, or an `OperationOutcome` with information or warnings |
| Single Order Option - create | `201 (Created)` | the created `MedicationRequest`, with the `id` and `meta.versionId` assigned by the Receiver |
| Single Order Option - update | `200 (OK)` | the updated `MedicationRequest` |
{:.table-bordered}

On error, the Receiver SHALL return an appropriate `4xx` or `5xx` HTTP status code and SHOULD include an `OperationOutcome` describing the issues.

##### X:Y.Z.4.2.3 Expected Actions

Upon receiving the response, the [Medication Order Placer](actors-transactions.html#order-placer) can persist the `id` and version assigned by the Receiver (Single Order Option). It can also trigger issue resolution if needed.

### X:Y.Z.5 CapabilityStatement Resource

* Requirements CapabilityStatement for the [Medication Order Placer](CapabilityStatement-IHE.MPD.OrderPlacerCS.html)
* Requirements CapabilityStatement for the [Medication Order Receiver](CapabilityStatement-IHE.MPD.OrderReceiverCS.html)

### X:Y.Z.6 Security Considerations

Orders contain personal health information. Implementations are expected to use secure transport and to authenticate and authorize the communicating systems. For example, they can use [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) Secure Node / Secure Application together with [IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART Backend Services](http://hl7.org/fhir/smart-app-launch/backend-services.html).

When the Order Bundle Option is used with an explicit subscription, the authorization considerations of the [R5 Subscriptions Framework](http://hl7.org/fhir/R5/subscriptions.html) apply.

#### X:Y.Z.6.1 Security Audit Considerations

When grouped with ATNA Secure Application or Secure Node, the Medication Order Placer and Medication Order Receiver SHALL be able to record an audit event for each order submitted or received. The [Basic Audit Log Patterns (BALP)](https://profiles.ihe.net/ITI/BALP/) Create and Update patterns are suitable for this purpose.
