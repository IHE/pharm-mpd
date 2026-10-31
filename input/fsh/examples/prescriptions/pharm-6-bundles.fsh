// Examples for Submit Medication Order [PHARM-6] - Order Bundle Option

Instance: pharm6-notification-single-line
InstanceOf: IHEMedicationOrderNotificationBundle
Usage: #example
Description: "PHARM-6 Order Bundle Option: an order with a single order item, sent with the patient, the prescriber and the medication."
* type = #subscription-notification
* timestamp = "2026-10-22T10:00:00+02:00"
* entry[+].fullUrl = "urn:uuid:4f7c1e2a-6b0d-4c4e-9d61-0a1f2b3c4d01"
* entry[=].resource = pharm6-status-single-line
* entry[+].fullUrl = "http://example.org/fhir/MedicationRequest/10-prescription-cefuroxime-singleline"
* entry[=].resource = 10-prescription-cefuroxime-singleline
* entry[+].fullUrl = "http://example.org/fhir/Patient/patient1"
* entry[=].resource = patient1
* entry[+].fullUrl = "http://example.org/fhir/PractitionerRole/doctor1"
* entry[=].resource = doctor1
* entry[+].fullUrl = "http://example.org/fhir/Medication/01A-Cefuroxime1500GenericExplicit"
* entry[=].resource = 01A-Cefuroxime1500GenericExplicit

Instance: pharm6-status-single-line
InstanceOf: IHEMedicationOrderNotificationStatus
Usage: #inline
* status = #active
* type = #event-notification
* eventsSinceSubscriptionStart = "1"
* notificationEvent[0].eventNumber = "1"
* notificationEvent[0].timestamp = "2026-10-22T10:00:00+02:00"
* notificationEvent[0].focus = Reference(http://example.org/fhir/MedicationRequest/10-prescription-cefuroxime-singleline)
* subscription.identifier.system = "http://example.org/order-subscriptions"
* subscription.identifier.value = "pharmacy-orders"


Instance: pharm6-notification-multi-line
InstanceOf: IHEMedicationOrderNotificationBundle
Usage: #example
Description: "PHARM-6 Order Bundle Option: an order with two order items. The order items share the same groupIdentifier; no RequestOrchestration is included."
* type = #subscription-notification
* timestamp = "2026-10-22T10:05:00+02:00"
* entry[+].fullUrl = "urn:uuid:4f7c1e2a-6b0d-4c4e-9d61-0a1f2b3c4d02"
* entry[=].resource = pharm6-status-multi-line
* entry[+].fullUrl = "http://example.org/fhir/MedicationRequest/200-2-medication-prescription-request1"
* entry[=].resource = 200-2-medication-prescription-request1
* entry[+].fullUrl = "http://example.org/fhir/MedicationRequest/200-2-medication-prescription-request2"
* entry[=].resource = 200-2-medication-prescription-request2
* entry[+].fullUrl = "http://example.org/fhir/Patient/patient1"
* entry[=].resource = patient1
* entry[+].fullUrl = "http://example.org/fhir/PractitionerRole/doctor1"
* entry[=].resource = doctor1

Instance: pharm6-status-multi-line
InstanceOf: IHEMedicationOrderNotificationStatus
Usage: #inline
* status = #active
* type = #event-notification
* eventsSinceSubscriptionStart = "2"
* notificationEvent[0].eventNumber = "2"
* notificationEvent[0].timestamp = "2026-10-22T10:05:00+02:00"
* notificationEvent[0].focus = Reference(http://example.org/fhir/MedicationRequest/200-2-medication-prescription-request1)
* notificationEvent[0].additionalContext = Reference(http://example.org/fhir/MedicationRequest/200-2-medication-prescription-request2)
* subscription.identifier.system = "http://example.org/order-subscriptions"
* subscription.identifier.value = "pharmacy-orders"
