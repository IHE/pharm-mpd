Instance: IHE.MPD.OrderReceiverCS
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.OrderReceiverCS"
* version = "3.0.5-current"
* name = "IHEMPDOrderReceiver"
* title = "IHE MPD Order Receiver Actor (server)"
* status = #active
* experimental = false
* date = "2024-07-08T16:49:44+00:00"
* publisher = "IHE Pharmacy Technical Committee"
//* actorDefinition = Canonical(IHE.MPD.OrderReceiver)

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
* description = "The CapabililtyStatement for the [Order Receiver Actor](actors-transactions.html#order-receiver) expresses the compliance requirements for systems implementing the actor."
* jurisdiction = $m49.htm#001
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "The Order Receiver accepts orders from Order Placers in [PHARM-6]. With the Order Bundle Option it exposes a notification endpoint that accepts a Medication Order Notification Bundle (POST, responds 200 or 202). With the Single Order Option it supports create and update of MedicationRequest."
  * security.description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource
    * type = #MedicationRequest
    * supportedProfile = "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"
    * interaction[0]
      * code = #create
      * documentation = "[PHARM-6] Single Order Option: receive a new order"
    * interaction[+]
      * code = #update
      * documentation = "[PHARM-6] Single Order Option: receive an update or cancellation of an order"
    // * interaction[+]
    //   * code = #delete
    //   * documentation = "conditional delete for [PHARM-104] for Remove Patient Option"
    // * conditionalCreate = true
    // * conditionalUpdate = true
    // * conditionalDelete = #single
