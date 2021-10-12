## Main actors
[comment]: # from common suppl

1. Prescription placer  
The main role of this actor consists in placing the prescription (initial or modified in case of a substitution of invalidation, for example). It sends the cancellation of the prescription or its discontinuation, as well. In order to fulfill this task, the prescription placer retrieves the current treatment of the patient and medication already dispensed recently. 
The prescription placer receives the pharmaceutical validation and status tracking information such as substitution, availability, administration plan and reports and cancellation. The corresponding human actor is a prescriber.

2. Pharmaceutical adviser  
This actor is responsible for the validation of prescriptions from a pharmacist’s perspective. Therefore, it receives the initial prescription, validates it and sends it back (accepted, cancelled, modified, substitution of pharmaceutical product); therefore it provides the pharmaceutical advice. To perform this task it checks the current treatment.
The pharmaceutical advice can be due to clinical, legal, or supply aspects.
This actor may be implemented in the hospital pharmacy module of a hospital information system or the point of sale software of the pharmacy. The corresponding human actor is typically a pharmacist (or pharmacist assistant).


3. Medication dispenser  
This actor is responsible for the process of dispensing medication to the patient, fulfilling the prescription. Therefore it produces the information on the medication dispensed to the patient. In order to achieve this, it receives prescriptions already validated. It also confirms drug availability for administration and it receives the administration plan and administration reports. This actor may be implemented as the point of sale software of a community pharmacy or the hospital pharmacy module of a hospital information system. The human actor behind this system actor is usually a pharmacist or a pharmacist assistant. In addition to the dispense, in this version this actor is considered to take care of all the dependencies to ensure a proper dispensing.

4. Medication administration Informer  
The medication administration producer’s informer’s main responsibility consists in creating and placing the medication administration plan and the corresponding administration reports. In order to achieve this, it receives the initial prescription, the pharmaceutical validation or a “simple” substitution. It also receives the confirmation of drug availability for administration.
Through administration reports, the Medication Administration Manager actor reports, among others:  
* The replacements (e.g. the 1g tablet by two 500 mg single dose packets)
* The follow-up (e.g. injectable follow-up)

