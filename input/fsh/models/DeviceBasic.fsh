Logical: DeviceBasic
Title: "Device (model)"
Description: "Logical model for a device (basic data relevant for the IHE MPD use cases)"
Characteristics: #can-be-target
* identifier 0..* Identifier "Identifiers for a device"
* name 0..* BackboneElement "The name or names of the device as known to the manufacturer and/or patient"
  * value 1..1 string "The term that names the device"
  * type 1..1 code "The type of name"