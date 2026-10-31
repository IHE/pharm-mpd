# Changes and issues in this version - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* **Changes and issues in this version**

## Changes and issues in this version

### Changes

* Unreleased: Submit Medication Order [PHARM-6] 
* PHARM-6 now has two options: the Order Bundle Option (a subscription-notification Bundle aligned with HL7 COW, supporting orders with multiple order items) and the Single Order Option (the previous behaviour: POST/PUT of a MedicationRequest)
* PHARM-6 covers updates and cancellation by the author of the order; requests by others to change an order are out of scope
* Added the Medication Order Notification Bundle and Medication Order Notification Status profiles
 
* 2 May 2025: Draft release for comment 
* Defines the actors
* Defines profiles
* Defines an initial set of Transactions - additional transactions are expected in the future
 

### Known issues

* PHARM-6 Order Bundle Option: whether the COW Coordination Task can be included in the Bundle is to be confirmed with HL7 COW
* Requests by other actors to change or cancel an order are not yet covered
* No test plan - it will be added in a future edition

