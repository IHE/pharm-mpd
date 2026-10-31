This section corresponds to transaction [PHARM-M1] of the IHE Technical Framework. Transaction [PHARM-M1] is used by the Order Placer and the Order Receiver actors. The Submit Medication Order [PHARM-M1] transaction is used to transmit an medication order - typically a prescription.

### X:Y.Z.1 Scope

The Submit Medication Order [PHARM-M1] transaction passes a Medication Order from a Medication Order Placer to a Medication Order Consumer.

### X:Y.Z.2 Actors Roles

**Table X:Y.Z.2-1: Actor Roles**

|Actor | Role |
|-------------------+--------------------------|
| [Medication Order Placer](actors_and_transactions.html#order-placer)    | Submits Medication Orders to the Medication Order Consumer |
| [Medication Order Consumer](actors_and_transactions.html#order-filler) | Accepts the orders from the Medication Order Placer |
{:.table-bordered}

### X:Y.Z.3 Referenced Standards

**FHIR-R5** [HL7 FHIR Release 5.0](http://www.hl7.org/FHIR/R5)

### X:Y.Z.4 Messages

<figure>
{% include PHARM-M1.svg %}
</figure>


**Figure X:Y.Z.4-1: Submit Medication Order Interactions**

#### X:Y.Z.4.1 Submit Medication Order Request Message
The Medication Order Placer submits a MedicationRequest resource using the HTTP POST method to the /MedicationRequest endpoint.

##### X:Y.Z.4.1.1 Trigger Events

This method is invoked when the Medication Order Placer needs to submit one or more Medication Orders to a Medication Order Receiver - for example when submitting a prescription. 

##### X:Y.Z.4.1.2 Message Semantics

The content type of the HTTP body shall be either `application/fhir+json` or `application/fhir+xml`.

The Medication Order Placer shall assure the request is consistent and actionable before sending, i.e. all authorizations and approvals are present. 

###### X:Y.Z.4.1.2.1 Resource content

* The Submit Medication Order is a MedicationRequest resource.
The semantics of the request and data elements are captured in the [Submit Medication Order Data Model](StructureDefinition-PrescriptionModel.html) and the technical constraints in the [Submit Medication Order](StructureDefinition-SupplyRequest.html) profile.


##### X:Y.Z.4.1.3 Expected Actions
Upon receiving the Medication Order, the Medication Order Consumer is expected to store and/or forward the order.
The Submit Medication Order Consumer shall issue a response confirming the request has been accepted (created), or informing of any error. 




#### X:Y.Z.4.2 Submit Medication Order Response
The Submit Medication Order Consumer always returns a HTTP Status code appropriate to the processing outcome.

##### X:Y.Z.4.1.1 Trigger Events

This response is always expected and provides the Medication Order Placer with the ackowledgement of the request including any technical issues.
The response shall immediately follow the request.
In case any delayed validation of the order is expected, such validation shall not impede the immediate response to a Submit Medication Order.


##### X:Y.Z.4.1.2 Message Semantics

The response to a Submit Medication Order shall consist of:
* In case the request is accepted, the response shall have the response code `201 (Created)`
* In case of any error, the response shall have the adequate error code (see [FHIR RESTful API](https://hl7.org/fhir/R5/http.html) for information on error handling)


###### X:Y.Z.4.1.2.1 Resource content

* When the request is accepted (regardless of whether it may be acted upon), the response shall contain the resource that has been created from the request, including the id, version, etc. as assigned by the server. This allows the Medication Order Placer to confirm what has been accepted and track the request on that server by its internal `id`.
* In case of error, the response SHALL contain an OperationOutcome providing more information about the issue.

##### X:Y.Z.4.1.3 Expected Actions
Upon receiving the response to the Submit Medication Order, the Medication Order Placer can persist the information provided by the Medication Order Consumer (status, id, etc.) for future tracking, and can trigger a response to any issues, if they exist.