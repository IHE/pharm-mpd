Instance: IHE.MPD.DispenseConsumerCS
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://profiles.ihe.net/PHARM/MPD/CapabilityStatement/IHE.MPD.DispenseConsumerCS"
* version = "3.0.5-current"
* name = "IHEMPDDispenseConsumer"
* title = "IHE MPD Dispense Consumer"
* status = #active
* experimental = false
* date = "2024-07-08T16:49:44+00:00"
* publisher = "IHE Pharmacy Technical Committee"
* description = "The CapabilityStatement for the Dispense Consumer describes the requirements for systems that retrieve dispense data."
* jurisdiction = $m49.htm#001
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+json
* format[+] = #application/fhir+xml
* rest
  * mode = #client
  * documentation = "The Dispense Consumer retrieves dispense data."
  * security.description = "Recommended security framework: ATNA, IUA, or SMART-on-FHIR."
  * resource[+]
    * type = #MedicationDispense
    * supportedProfile = "http://profiles.ihe.net/PHARM/ihe.pharm.mpd/StructureDefinition/IHEMedicationDispense"
    * interaction[+]
      * code = #read
      * documentation = "Retrieve a MedicationDispense [PHARM-9]"
