Instance: patient1
InstanceOf: Patient
Usage: #example
Description: "A patient: Thomas, born 1950"

* identifier.value = "12345"
* name.given = "Thomas"
* name.family = "Engine"
* birthDate = "1950-09-15"
* gender = #male

Instance: patient2
InstanceOf: Patient
Usage: #example
Description: "A patient: Emily, born 1990"

* identifier.value = "12345"
* name.given = "Emily"
* name.family = "Engine"
* birthDate = "1990-10-28"
* gender = #female


Instance: practitioner1
InstanceOf: Practitioner
Usage: #example
Description: "Dr Meryl Ärztin"

* identifier.value = "hpc-265"
* name[0].given = "Meryl"
* name[=].family = "Ärztin"

Instance: practitioner2
InstanceOf: Practitioner
Usage: #example
Description: "Mr Moon Farmatseut"

* identifier.value = "hpc-pharm-124"
* name[0].given = "Moon"
* name[=].family = "Farmatseut"


Instance: organization1
InstanceOf: Organization
Usage: #example
Description: "An organization: clinic"

* identifier.value = "A12567"
* name = "Dr Ärztin Private Practice"

Instance: organization2
InstanceOf: Organization
Usage: #example
Description: "An organization: pharmacy"

* identifier.value = "Ph-1234"
* name = "Su-Bin Pharmacy B"

Instance: doctor1
InstanceOf: PractitionerRole
Usage: #example
Description: "Dr Meryl Ärztin - clinical oncologist"

* practitioner = Reference(practitioner1)
* practitioner.display = "Dr Meryl Ärztin"
* organization = Reference(organization1)
* organization.display = "Dr Ärztin Private Practice"
* code = $snomed#309295000 "Clinical oncologist"

Instance: pharmacist1
InstanceOf: PractitionerRole
Usage: #example
Description: "Mr Moon Farmatseut - pharmacist"

* practitioner = Reference(practitioner2)
* practitioner.display = "Moon Farmatseut"
* organization = Reference(organization2)
* organization.display = "Su-Bin Pharmacy B"
* code = $snomed#46255001 "Pharmacist"