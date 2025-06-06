Instance: group-or-identifier
InstanceOf: SearchParameter
Usage: #definition
* status = #active
* name = "GroupOrIdentifier"
* description = "Single search on both request.identifier or groupIdentifier"
* code = #group-or-identifier
* base = #MedicationRequest
* type = #token
* expression = "MedicationRequest.groupIdentifier | MedicationRequest.identifier"
* processingMode = #normal
