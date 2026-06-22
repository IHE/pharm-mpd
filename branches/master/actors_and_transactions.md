
<div>{% include actors-transactions-prescription.svg %}</div>
<br clear="all"/>




**Order Placer** - this actor is responsible for submitting an order. This can be a prescription, or an update of an existing prescription, or a draft prescrition...

**Order Receiver** - This actor represents the entity that receives the orders from the placer. This is used in a Push scenario, where the order receiver receives the pushed order.

**Order Responder** - this actor is responsible for responding to order queries, e.g feching the orders for a patient, etc.
This is used in a Pull scenario, where an order filler (or other actors) can query the existing orders from the Order Responder.

**Order Filler** - this actor represents an entity that handles or processes the order, typically for dispensing, but can also be for further authorization, verification, etc.




<div></div>
<br clear="all"/>


<figure>
  {% include actors-transactions-dispense.svg %}
  <!-- <figcaption>Actors and Transactions - Dispense</figcaption> -->
</figure>

 

**Dispenser** - this actor represents an entity that handles or processes the order, typically for dispensing, but can also be for further authorization, verification, etc.

This actor is responsible for the process of dispensing medication to the patient, fulfilling the prescription. Therefore it produces the information on the medication dispensed to the patient. In order to achieve this, it receives prescriptions already validated. It also confirms drug availability for administration and it receives the administration plan and administration reports. This actor may be implemented as the point of sale software of a community pharmacy or the hospital pharmacy module of a hospital information system. The human actor behind this system actor is usually a pharmacist or a pharmacist assistant. In addition to the dispense, in this version this actor is considered to take care of all the dependencies to ensure a proper dispensing.



**Dispense Receiver** - This actor represents the entity that receives the dispense reports from the placer. This is used in a Push scenario, where the dispense receiver receives the pushed dispense.

**Dispense Responder** - this actor is responsible for responding to order queries, e.g feching the dispenses for a patient, etc.
This is used in a Pull scenario, where an order filler (or other actors) can query the existing dispenses from the Dispense Responder.


**Dispense Consumer** - this actor supports querying for dispenses, e.g feching the dispenses for a patient, etc.
This is commonly used in a Pull scenario, where before dispense, the order filler (or other actors) can query the existing dispenses from the Dispense Responder. It can also be used for reporting workflow progress after inquiring about dispense status.

