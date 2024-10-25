Instance: IHE.MPD.OrderResponder
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.OrderResponder"
* version = "3.0.5-current"
* name = "IHEMPDOrderResponder"
* title = "IHE MPD Order Receiver (server)"
* status = #active
* experimental = false
* date = "2024-07-08T16:49:44+00:00"
* publisher = "IHE Pharmacy Technical Committee"
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
* description = "The CapabililtyStatement for the [Order Receiver Actor](volume-1.html#141111-Order-Responder) expresses the compliance requirements for systems implementing the actor.\n- using FHIR R5\n- using json or xml encoding\n - using conditional update for [ITI-104](ITI-104.html)\n - using conditional delete for [ITI-104](ITI-104.html) if Remove Patient Option is supported\n - provide supported Patient profile for crosss-referencing for [ITI-104](ITI-104.html)\n - should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
* jurisdiction = $m49.htm#001
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "The Order Receiver allows Order Fillers to check the orders..."
  * security.description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * type = #MedicationRequest
    * supportedProfile = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/StructureDefinition/IHEMedicationPrescription"
    * interaction[0]
      * code = #vread
    * interaction[+]
      * code = #create
      * documentation = "Create MedicationOrders [ITI-104]"
    * interaction[+]
      * code = #update
      * documentation = "Update for [ITI-104]"
    * interaction[+]
      * code = #delete
    * interaction[+]
      * code = #history-instance
    * interaction[+]
      * code = #search-type
      * documentation = "conditional delete for [ITI-104] for Remove Patient Option"
    * conditionalCreate = true
    * conditionalUpdate = true
    * conditionalDelete = #single
    * searchParam[0]
      * name = "patient"
      * type = #reference
      * documentation = "Search on Patient"
    * searchParam[+]
      * name = "group-or-identifier"
      * definition = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/SearchParameter/group-or-identifier"
      * type = #reference
      * documentation = "Search on Group Or Identifier"
    * searchRevInclude[0] = "['RequestOrchestration:activity-resource:MedicationRequest']"
  * resource[+]
    * type = #Task
    * interaction[0]
      * code = #vread
    * interaction[+]
      * code = #create
      * documentation = "Create MedicationOrders [ITI-104]"
    * interaction[+]
      * code = #update
      * documentation = "Update for [ITI-104]"
    * interaction[+]
      * code = #delete
    * interaction[+]
      * code = #history-instance
    * interaction[+]
      * code = #search-type
      * documentation = "conditional delete for [ITI-104] for Remove Patient Option"
    * conditionalCreate = true
    * conditionalUpdate = true
    * conditionalDelete = #single
  * resource[+]
    * type = #RequestOrchestration
//    * supportedProfile = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/StructureDefinition/IHEMedicationPrescription"
    * interaction[0]
      * code = #create
      * documentation = "Create MedicationOrders [ITI-104]"
    * interaction[+]
      * code = #update
      * documentation = "Opdate for [ITI-104]"
    * interaction[+]
      * code = #delete
      * documentation = "conditional delete for [ITI-104] for Remove Patient Option"
    * interaction[+]
      * code = #read
      * documentation = "conditional delete for [ITI-104] for Remove Patient Option"
    * conditionalCreate = true
    * conditionalUpdate = true
    * conditionalDelete = #single
    * searchParam[0]
      * name = "patient"
      * type = #reference
      * documentation = "Search on Patient"
    * searchParam[+]
      * name = "activity-resource"
      * definition = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/SearchParameter/activity-resource"
      * type = #reference
      * documentation = "Activity Resource"
