Profile: IHEMedicationOrderNotificationStatus
Parent: SubscriptionStatus
Id: IHEMedicationOrderNotificationStatus
Title: "Medication Order Notification Status"
Description: "SubscriptionStatus for the Order Bundle Option of [PHARM-6]. The focus is the main resource of the notification: the MedicationRequest, the RequestOrchestration, or the Task when one is included (in line with HL7 COW)."
* type = #event-notification
* notificationEvent 1..*
* notificationEvent.focus 1..1
* notificationEvent.focus only Reference(MedicationRequest or RequestOrchestration or Task)
* notificationEvent.additionalContext ^short = "Other order resources in the notification (e.g. the other order items of the order)"
* subscription ^short = "The subscription - for implicit subscriptions, a logical reference (identifier) agreed between the parties"


Profile: IHEMedicationOrderNotificationBundle
Parent: Bundle
Id: IHEMedicationOrderNotificationBundle
Title: "Medication Order Notification Bundle"
Description: "Bundle for the Order Bundle Option of Submit Medication Order [PHARM-6]: a subscription-notification Bundle, aligned with HL7 Clinical Order Workflows (COW), that carries a medication order - one or more order items - together with the resources needed to act on them."
* type = #subscription-notification
* entry 2..*
* entry.fullUrl 1..1
* entry.resource 1..1
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slices by resource type"
* entry contains
    status 1..1 and
    order 1..* and
    orchestration 0..1 and
    patient 1..1 and
    task 0..1
* entry[status] ^short = "The notification status - first entry of the Bundle"
* entry[status].resource only IHEMedicationOrderNotificationStatus
* entry[order] ^short = "The order items of the medication order - one MedicationRequest per order item"
* entry[order].resource only IHEMedicationOrder
* entry[orchestration] ^short = "Optional coordination of the order items (e.g. start together); groupIdentifier may be sufficient"
* entry[orchestration].resource only RequestOrchestration
* entry[patient] ^short = "The subject of the order"
* entry[patient].resource only Patient
* entry[task] ^short = "Coordination Task, when the Placer includes one (open issue: to be confirmed with HL7 COW)"
* entry[task].resource only Task
