Instance: activity-resource
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "activity-resource"
* description = "Search on the resources that are linked to a RequestOrchestration - important to allow for example _revInclude"
* code = #activity-resource
* base = #RequestOrchestration
* type = #reference
* expression = "RequestOrchestration.action.resource"
* processingMode = #normal
