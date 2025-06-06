Instance: IHE.MPD.DispenseResponderCS
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.DispenseResponderCS"
* version = "3.0.5-current"
* name = "IHEMPDDispenseResponder"
* title = "IHE MPD Dispense Responder Actor (server)"
* status = #active
* experimental = false
* date = "2024-07-08T16:49:44+00:00"
* publisher = "IHE Pharmacy Technical Committee"
//* actorDefinition = Canonical(IHE.MPD.DispenseResponder)

* contact[0].telecom
  * system = #url
  * value = "https://www.ihe.net/ihe_domains/it_infrastructure/"
* contact[+].telecom
  * system = #email
  * value = "iti@ihe.net"
* contact[+]
  * name = "IHE Pharmacy Technical Committee"
  * telecom
    * system = #email
    * value = "iti@ihe.net"
* description = "The CapabililtyStatement for the [Dispense Responder Actor](actors-transactions.html#dispense-responder) expresses the compliance requirements for systems implementing the actor."
* jurisdiction = $m49.htm#001
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "The Dispense Responder allows Order Consumers to check the orders."
  * security.description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * type = #MedicationRequest
    * supportedProfile = "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"
    * interaction[0]
      * code = #vread
    * interaction[+]
      * code = #create
      * documentation = "Consume Dispense Reports [PHARM-104]"
    * interaction[+]
      * code = #history-instance
    * interaction[+]
      * code = #search-type
      * documentation = "Conditional delete for [PHARM-104] for Remove Patient Option"
    * conditionalCreate = true
    * conditionalUpdate = true
    * conditionalDelete = #single
    * searchParam[0]
      * name = "patient"
      * type = #reference
      * documentation = "Search on Patient"
    * searchParam[+]
      * name = "group-or-identifier"
      * definition = "https://profiles.ihe.net/PHARM/MPD/SearchParameter/group-or-identifier"
      * type = #token
      * documentation = "Search on Group Or Identifier"
    * searchRevInclude[0] = "['RequestOrchestration:activity-resource:MedicationRequest']"
  * resource[+]
    * type = #Task
    * interaction[0]
      * code = #vread
    * interaction[+]
      * code = #create
      * documentation = "Create MedicationOrders [PHARM-104]"
    * interaction[+]
      * code = #update
      * documentation = "Update for [PHARM-104]"
    * interaction[+]
      * code = #delete
    * interaction[+]
      * code = #history-instance
    * interaction[+]
      * code = #search-type
      * documentation = "conditional delete for [PHARM-104] for Remove Patient Option"
    * conditionalCreate = true
    * conditionalUpdate = true
    * conditionalDelete = #single
  * resource[+]
    * type = #RequestOrchestration
//    * supportedProfile = "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"
    * interaction[0]
      * code = #create
      * documentation = "Create MedicationOrders [PHARM-104]"

    * conditionalCreate = true
    * conditionalUpdate = true
    * conditionalDelete = #single
    * searchParam[0]
      * name = "patient"
      * type = #reference
      * documentation = "Search on Patient"
    * searchParam[+]
      * name = "activity-resource"
      * definition = "https://profiles.ihe.net/PHARM/MPD/SearchParameter/activity-resource"
      * type = #reference
      * documentation = "Activity Resource"
