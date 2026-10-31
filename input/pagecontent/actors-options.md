Options that may be selected for each actor in this implementation guide are listed in Table XX.2-1 below. Dependencies between options, when applicable, are specified in notes.

<p id ="tXX.2-1" class="tableTitle"><strong>Table XX.2-1: Actor Options</strong></p>

| Actor | Option Name |
|-------|-------------|
| Medication Order Placer | [Order Bundle Option](#order-bundle-option) |
| | [Single Order Option](#single-order-option) |
| Medication Order Receiver | [Order Bundle Option](#order-bundle-option) |
| | [Single Order Option](#single-order-option) |
| Medication Order Consumer | none |
| Medication Order Responder | none |
| Medication Dispense Reporter | none |
| Medication Dispense Receiver | none |
| Medication Dispense Consumer | none |
| Medication Dispense Responder | none |
{: .grid}

The Medication Order Placer and the Medication Order Receiver SHALL support at least one of the Order Bundle Option and the Single Order Option.

<a name="order-bundle-option"> </a>

### XX.2.1 Order Bundle Option

With this option, an order is submitted in [Submit Medication Order [PHARM-6]](pharm-6.html#order-bundle-option) as a `Bundle` of type `subscription-notification`. The Bundle is aligned with [HL7 Clinical Order Workflows (COW)](https://build.fhir.org/ig/HL7/fhir-cow-ig/) and contains the order items together with the patient, prescriber, medication and other resources needed to act on them.

This option supports orders with multiple order items in a single exchange, kept together by their `groupIdentifier` and optionally coordinated by a `RequestOrchestration`. It answers in one place questions that implementers otherwise solve differently: whether to use FHIR Documents, whether to put resources as `contained` in the `MedicationRequest`, and which `Bundle` type to use.

<a name="single-order-option"> </a>

### XX.2.2 Single Order Option

With this option, an order is submitted in [Submit Medication Order [PHARM-6]](pharm-6.html#single-order-option) one order item (`MedicationRequest`) at a time, using RESTful `create` and `update`. This option suits systems that already exchange `MedicationRequest` directly and orders whose related resources are already available to the Receiver.
