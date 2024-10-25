Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: IHE.MPD.OrderFiller
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.OrderFiller"
* version = "3.0.5-current"
* name = "IHEOrderFiller"
* title = "IHE Pharmacy Order Filler Actor"
* status = #active
* experimental = false
* date = "2024-07-08T16:49:44+00:00"
* publisher = "IHE Pharmacy Technical Committee"
* contact[0].telecom
  * system = #url
  * value = "https://www.ihe.net/ihe_domains/pharmacy/"
* contact[+].telecom
  * system = #email
  * value = "pharmacy@ihe.net"
* contact[+]
  * name = "IHE Pharmacy Technical Committee"
  * telecom
    * system = #email
    * value = "pharmacy@ihe.net"
* description = "The CapabililtyStatement for the [Order Filler Actor](volume-1.html#141111-Order-Filler) expresses the compliance requirements for systems implementing the actor.\n- using FHIR R5\n- using json or xml encoding\n - using conditional update for [ITI-104](ITI-104.html)\n - using conditional delete for [ITI-104](ITI-104.html) if Remove Patient Option is supported\n - provide supported Patient profile for crosss-referencing for [ITI-104](ITI-104.html)\n - should use a security framework. Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
* jurisdiction = $m49.htm#001
* kind = #requirements
* fhirVersion = #5.0.0
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #client
  * documentation = "The Order Filler is the producer of Orders or Medication Orders."
  * security.description = "Recommend [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html), encouraged [IHE-IUA](https://profiles.ihe.net/ITI/IUA/index.html) or [SMART-app-launch](http://www.hl7.org/fhir/smart-app-launch/)"
  * resource
    * type = #MedicationRequest
    * supportedProfile = "https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEOrder"
    * interaction[0]
      * code = #update
      * documentation = "conditional update for [ITI-104]"
    * interaction[+]
      * code = #delete
      * documentation = "conditional delete for [ITI-104] for Remove Patient Option"
    * interaction[+]
      * code = #create
      * documentation = "conditional delete for [ITI-104] for Remove Patient Option"
    * conditionalUpdate = true
    * conditionalDelete = #single