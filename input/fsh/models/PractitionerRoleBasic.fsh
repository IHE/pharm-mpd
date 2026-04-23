Logical: PractitionerRoleBasic
Title: "Practitioner role (model)"
Description: "Logical model for a practitioner role within an organization (basic data relevant for this use case)"
Characteristics: #can-be-target
* identifier 0..* Identifier "Identifiers for a role"
* practitioner 1..1 Reference(PractitionerBasic) "Practitioner that provide services for the organization"
* organization 0..1 Reference(OrganizationBasic) "Organization where the roles are available"
* role 0..* CodeableConcept "Roles which this practitioner may perform"