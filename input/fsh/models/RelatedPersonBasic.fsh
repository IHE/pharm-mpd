Logical: RelatedPersonBasic
Title: "Related person (model)"
Description: "Logical model for a related person with basic data relevant to the IHE MPD use cases."
Characteristics: #can-be-target
* identifier 0..* Identifier "Human identifier for this person"
* patient 1..1 Reference(PatientBasic) "The patient this person is related to"
* relationship 0..* CodeableConcept "The relationship of the related person to the patient"
* name 0..* HumanName "A name associated with this person"
