This section corresponds to transaction [{{TRANSACTION_ID}}] of the IHE Technical Framework. Transaction [{{TRANSACTION_ID}}] is used by the {{ACTOR1_NAME}} and the {{ACTOR2_NAME}} actors. The {{TRANSACTION_NAME}} [{{TRANSACTION_ID}}] transaction is used to transmit a {{RESOURCE_TYPE | lower}} - typically a prescription.

### X:Y.Z.1 Scope

The {{TRANSACTION_NAME}} [{{TRANSACTION_ID}}] transaction passes a {{RESOURCE_TYPE}} from a {{ACTOR1_NAME}} to a {{ACTOR2_NAME}}. The {{RESOURCE_TYPE}} can be:
* a single-line Prescription
* a prescription as part of a group of prescriptions
* a proposal, or a draft
* a not-yet-validated prescription or order
* a medication instance order
* ...

### X:Y.Z.2 Actors Roles

**Table X:Y.Z.2-1: Actor Roles**

| Actor | Role |
|-------------------+--------------------------|
| [{{ACTOR1_NAME}}]({{ACTOR1_URL}}) | {{ACTOR1_ROLE}} |
| [{{ACTOR2_NAME}}]({{ACTOR2_URL}}) | {{ACTOR2_ROLE}} |
{:.table-bordered}

### X:Y.Z.3 Referenced Standards

**FHIR-R5** [HL7 FHIR Release 5.0](http://www.hl7.org/FHIR/R5)

### X:Y.Z.4 Messages

<figure>
{% raw %}{% include {{TRANSACTION_ID | lower}}.svg %}{% endraw %}
</figure>

**Figure X:Y.Z.4-1: {{TRANSACTION_NAME}} Interactions**

#### X:Y.Z.4.1 {{TRANSACTION_NAME}} Request Message

The {{ACTOR1_NAME}} submits a {{RESOURCE_TYPE}} resource using the HTTP {{HTTP_METHOD}} method to the {{ENDPOINT_URL}} endpoint.

##### X:Y.Z.4.1.1 Trigger Events

This method is invoked {{TRIGGER_EVENT}}.

##### X:Y.Z.4.1.2 Message Semantics

The content type of the HTTP body shall be either `application/fhir+json` or `application/fhir+xml`.

The {{ACTOR1_NAME}} shall assure the request is consistent and actionable before sending.

###### X:Y.Z.4.1.2.1 Resource content

The {{TRANSACTION_NAME}} is a {{RESOURCE_TYPE}} resource.  
The semantics of the request and data elements are captured in the [{{RESOURCE_MODEL_URL}}] and the technical specification in the [{{RESOURCE_PROFILE}}] profile.

##### X:Y.Z.4.1.3 Expected Actions

Upon receiving the {{RESOURCE_TYPE}}, the {{ACTOR2_NAME}} is expected to store and/or forward the order.

#### X:Y.Z.4.2 {{TRANSACTION_NAME}} Response

The {{ACTOR2_NAME}} SHALL return an HTTP Status code appropriate to the processing outcome.

##### X:Y.Z.4.2.1 Trigger Events

This response is always expected and provides the {{ACTOR1_NAME}} with acknowledgement of the request including any technical issues.

##### X:Y.Z.4.2.2 Message Semantics

* On success: `{{RESPONSE_STATUS_SUCCESS}}`
* On error: `{{RESPONSE_STATUS_ERROR}}`

###### X:Y.Z.4.2.2.1 Resource content

{% if RESPONSE_INCLUDE_ID == "Yes" %}
The response shall contain the resource created from the request, including the `id`, `version`, etc. assigned by the server.
{% else %}
The response MAY omit the resource content.
{% endif %}

In case of error, the response SHALL contain an `OperationOutcome`.

##### X:Y.Z.4.2.3 Expected Actions

Upon receiving the response, the {{ACTOR1_NAME}} can persist the `id`, `status`, or trigger any issue resolution if needed.
