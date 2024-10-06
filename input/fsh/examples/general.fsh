Instance: patient1
InstanceOf: Patient
Usage: #example
Description: "A patient"

* identifier.value = "12345"
* name.given = "Thomas"
* name.family = "Engine"


Instance: practitioner1
InstanceOf: Practitioner
Usage: #example
Description: "A doctor"

* identifier.value = "hpc-265"
* name[0].given = "Meryl"
* name[=].family = "Ärztin"

Instance: practitioner2
InstanceOf: Practitioner
Usage: #example
Description: "A pharmacist"

* identifier.value = "hpc-pharm-124"
* name[0].given = "Moon"
* name[=].family = "Farmatseut"


Instance: organization1
InstanceOf: Organization
Usage: #example
Description: "An organization"

* identifier.value = "A12567"
* name = "Dr Ärztin Private Practice"

Instance: organization2
InstanceOf: Organization
Usage: #example
Description: "An organization"

* identifier.value = "Ph-1234"
* name = "Su-Bin Pharmacy B"

Instance: doctor1
InstanceOf: PractitionerRole
Usage: #example
Description: "Clinical oncologist in a practice"

* practitioner = Reference(practitioner1)
* practitioner.display = "Dr Meryl Ärztin"
* organization = Reference(organization1)
* organization.display = "Dr Ärztin Private Practice"
* code = $snomed#309295000 "Clinical oncologist"

Instance: pharmacist1
InstanceOf: PractitionerRole
Usage: #example
Description: "Pharmacist in a practice"

* practitioner = Reference(practitioner2)
* practitioner.display = "Moon Farmatseut"
* organization = Reference(organization2)
* organization.display = "Su-Bin Pharmacy B"
* code = $snomed#46255001 "Pharmacist"