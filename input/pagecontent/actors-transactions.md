
* Actors overview

  * **Order Placer** - this actor is responsible for submitting an order. This can be a prescription, or an update of an existing prescription, or a draft prescrition...

  * **Order Receiver** - This actor represents the entity that receives the orders from the placer. This is used in a Push scenario, where the order receiver receives the pushed order.

  * **Order Responder** - this actor is responsible for responding to order queries, e.g feching the orders for a patient, etc.
This is used in a Pull scenario, where an Order Consumer (or other actors) can query the existing orders from the Order Responder.

  * **Order Consumer** - this actor represents an entity that handles or processes the order, typically for dispensing, but can also be for further authorization, verification, etc.

* Transactions

<div>{% include actors-transactions-prescription.svg %}</div>
<br clear="all"/>

<figure>
  {% include actors-transactions-dispense.svg %}
  <!-- <figcaption>Actors and Transactions - Dispense</figcaption> -->
</figure>
<br clear="all"/>


<p id ="tXX.1-1" class="tableTitle">Table XX.1-1: Profile Acronym Profile - Actors and Transactions</p>

|         |               |                        |                 |                                   |
|---------|---------------|------------------------|-----------------|-----------------------------------|
| Actors  | Transactions  | Initiator or Responder | Optionality     | Reference                         |
| Actor A | Transaction 1 |                        | R               | Domain Acronym TF-2: 3.Y1 |
|         | Transaction 2 |                        | R               | Domain Acronym TF-2: 3.Y2 |
| Actor F | Transaction 1 |                        | R               | Domain Acronym TF-2: 3.Y1 |
|         | Transaction 2 |                        | R               | Domain Acronym TF-2: 3.Y2 |
| Actor D | Transaction 1 |                        | R               | Domain Acronym TF-2: 3.Y1 |
| Actor E | Transaction 2 |                        | R               | Domain Acronym TF-2: 3.Y2 |
|         | Transaction 3 |                        | O ( See Note 1) | Domain Acronym TF-2: 3.Y3 |
|         | Transaction 4 |                        | O ( See Note 1) | Domain Acronym TF-2: 3.Y4 |
| Actor B | Transaction 3 |                        | R               | Domain Acronym TF-2: 3.Y3 |
|         | Transaction 4 |                        | O ( See Note 2) | Domain Acronym TF-2: 3.Y4 |
{: .grid}

Note 1: *For example, a note could specify that at least one of the
transactions shall be supported by an actor or other variations. For
example: Note: Either Transaction Y3 or Transaction Y4 shall be
implemented for Actor E.*

Note 2: *For example, could specify that Transaction Y4 is required
if Actor B supports XYZ Option, see Section XX.3.X.*




### XX.1.1 Actors
The actors in this profile are described in more detail in the sections below.


<a name="order-reporter"> </a>

#### **Order Placer** - this actor is responsible for submitting an order. This can be a prescription, or an update of an existing prescription, or a draft prescrition, or other.

<a name="order-reporter"> </a>

#### **Order Receiver** - This actor represents the entity that receives the orders from the placer. This is used in a Push scenario, where the order receiver receives the pushed order.

<a name="order-reporter"> </a>

#### **Order Responder** - this actor is responsible for responding to order queries, e.g feching the orders for a patient, etc.  
    This is used in a Pull scenario, where an Order Consumer (or other actors) can query the existing orders from the Order Responder.

<a name="order-reporter"> </a>

#### **Order Consumer** - this actor represents an entity that handles or processes the order, typically for dispensing, but can also be for further authorization, verification, etc.




<a name="dispense-reporter"> </a>

#### **Dispenser** - this actor represents an entity that handles or processes the order, typically for dispensing, but can also be for further authorization, verification, etc.

This actor is responsible for the process of dispensing medication to the patient, fulfilling the prescription. Therefore it produces the information on the medication dispensed to the patient. In order to achieve this, it receives prescriptions already validated. It also confirms drug availability for administration and it receives the administration plan and administration reports. This actor may be implemented as the point of sale software of a community pharmacy or the hospital pharmacy module of a hospital information system. The human actor behind this system actor is usually a pharmacist or a pharmacist assistant. In addition to the dispense, in this version this actor is considered to take care of all the dependencies to ensure a proper dispensing.


<a name="dispense-receiver"> </a>

#### **Dispense Receiver** - This actor represents the entity that receives the dispense reports from the placer. This is used in a Push scenario, where the dispense receiver receives the pushed dispense.



<a name="dispense-responder"> </a>

#### **Dispense Responder** - this actor is responsible for responding to order queries, e.g feching the dispenses for a patient, etc.
This is used in a Pull scenario, where an Order Consumer (or other actors) can query the existing dispenses from the Dispense Responder.

<a name="dispense-consumer"> </a>

#### **Dispense Consumer** - this actor supports querying for dispenses, e.g feching the dispenses for a patient, etc.
This is commonly used in a Pull scenario, where before dispense, the Order Consumer (or other actors) can query the existing dispenses from the Dispense Responder. It can also be used for reporting workflow progress after inquiring about dispense status.



<a id="dispense-reporter"></a>

#### **Dispense Reporter** - this actor is responsible for submitting a dispense report.

<a id="dispense-receiver"></a>

#### **Dispense Receiver** - This actor represents the entity that receives the dispense reports from the dispense reporter. This is used in a Push scenario, where the order dispenser pushes out the reports.

<a id="dispense-responder"></a>

#### **Dispense Responder** - this actor is responsible for responding to queries for dispenses.  
    This is used in a Pull scenario, where an Order Consumer (or other actors) can query the existing orders from the Order Responder.

<a id="dispense-consumer"></a>

#### **Dispense Consumer** - this actor represents an entity that handles or processes the dispense reports.



### Actor Options

### Required Grouping