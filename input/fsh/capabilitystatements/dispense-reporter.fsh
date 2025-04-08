



Instance: IHE.MPD.DispenseReporterCS
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.DispenseReporterCS"
* version = "3.0.5-current"
* name = "IHEMPDDispenseReporter"
* title = "IHE MPD Dispense Responder (server)"
* status = #active
* experimental = false
* date = "2024-07-08T16:49:44+00:00"
* publisher = "IHE Pharmacy Technical Committee"
//* actorDefinition = Canonical(IHE.MPD.DispenseReporter)
* contact[0].telecom
  * system = #url
  * value = "https://www.ihe.net/ihe_domains/pharmacy/"
* contact[+].telecom
  * system = #email
  * value = "iti@ihe.net"
* contact[+]
  * name = "IHE Pharmacy Technical Committee"
  * telecom
    * system = #email
    * value = "iti@ihe.net"
* description = "The CapabililtyStatement for the [Dispense Reporter Actor](actors-transactions.html#order-responder) expresses the compliance requirements for systems implementing the actor."
* jurisdiction = $m49.htm#001
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "The Dispense Reporter creates Dispense reports."
  * security.description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource[+]
    * type = #MedicationDispense
    * supportedProfile = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationDispense"
    * interaction[0]
      * code = #vread
    * interaction[+]
      * code = #create
      * documentation = "Create MedicationDispenses [PHARM-104]"
    * interaction[+]
      * code = #update
      * documentation = "Update for [PHARM-104]"

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
    * conditionalCreate = true
    * conditionalUpdate = true
    * conditionalDelete = #single
  * resource[+]
    * type = #RequestOrchestration
//    * supportedProfile = "http://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"
    * interaction[0]
      * code = #create
      * documentation = "Create DispenseReports [PHARM-104]"

    * conditionalCreate = true
    * conditionalUpdate = true
    * conditionalDelete = #single
    * searchParam[0]
      * name = "patient"
      * type = #reference
      * documentation = "Search on Patient"
    * searchParam[+]
      * name = "activity-resource"
      * definition = "http://profiles.ihe.net/PHARM/MPD/SearchParameter/activity-resource"
      * type = #reference
      * documentation = "Activity Resource"
