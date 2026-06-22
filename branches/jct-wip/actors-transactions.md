
### Transactions

For managing the lifecycle of orders (from proposal to draft or plan, to active prescription and fulfilled prescription), and considering the variety of use cases and architectures that this profile is intended to support ([Push, Pull, central repositories, etc.](example-architectures.html)), IHE presents the following actors for managing orders - submission and retrieval:

<div>{% include actors-transactions-prescription.svg %}</div>
<br clear="all"/>

For Dispense, a similar approach is taken:

<figure>
  {% include actors-transactions-dispense.svg %}
  <!-- <figcaption>Actors and Transactions - Dispense</figcaption> -->
</figure>
<br clear="all"/>


<p id ="tXX.1-1" class="tableTitle">Table XX.1-1: IHE MPD - Actors and Transactions</p>

|         |               |                        |                 |                                   |
|---------|---------------|------------------------|-----------------|-----------------------------------|
| Actors  | Transactions  | Initiator or Responder | Optionality     | Reference                         |
| Medication Order Placer | PHARM-5 | Initiator        | O               | PHARM MPD TF-2: 3.Y1 |
| Medication Order Receiver | PHARM-5 | Responder        | O               | PHARM MPD TF-2: 3.Y1 |
| Medication Order Consumer | PHARM-7 | Initiator        | R               | PHARM MPD TF-2: 3.Y1 |
| Medication Order Responder | PHARM-7 | Responder        | R               | PHARM MPD TF-2: 3.Y1 |
| Medication Dispense Reporter | PHARM-8 | Initiator        | R               | PHARM MPD TF-2: 3.Y1 |
| Medication Dispense Receiver | PHARM-8 | Responder        | R               | PHARM MPD TF-2: 3.Y1 |
| Medication Dispense Consumer | PHARM-9 | Initiator        | R               | PHARM MPD TF-2: 3.Y1 |
| Medication Dispense Responder | PHARM-9 | Responder        | R               | PHARM MPD TF-2: 3.Y1 |
{: .grid}

Note 1: The transaction PHARM-5 for submitting an order uses the MedicationRequest. IHE REcognizes that in common cases, the request also includes other resources, so in future editions we expect to prepare a new transaction for submitting medication orders. This current specification only provides the transaction using MedicationRequest.



### XX.1.1 Actors
The actors in this profile are described in more detail in the sections below.


#### **Order Placer** - this actor is responsible for submitting an order. This can be a prescription, or an update of an existing prescription, or a draft prescrition, or other.

#### **Order Receiver** - This actor represents the entity that receives the orders from the placer. This is used in a Push scenario, where the order receiver receives the pushed order.

#### **Order Responder** - this actor is responsible for responding to order queries, e.g feching the orders for a patient, etc.  
    This is used in a Pull scenario, where an Order Consumer (or other actors) can query the existing orders from the Order Responder.

#### **Order Consumer** - this actor represents an entity that handles or processes the order, typically for dispensing, but can also be for further authorization, verification, etc.



### Actor Options

No options are defined at the moment. 


### Required Grouping

No actor groupings are defined at the moment. 
