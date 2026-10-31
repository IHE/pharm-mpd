The actors illustrated the [actors and transactions](actors-transactions.html) can be grouped in different architectures.

This page provides some examples with some information on how this can be specified.


### Central prescription repository

In the central prescription repository, the order placer communicates the prescriptions with a central prescription repository (which therefore implements the specification (actors) of Order Receiver and Order Responder).
Similarly, the Order Consumer consults that repository for checking which prescriptions are available and to fetch the information of those prescriptions.

<figure>
  {% include actors-example-central-rx-system.svg %}
  <!-- <figcaption>Actors and Transactions - Dispense</figcaption> -->
</figure>
<br clear="all"/>
