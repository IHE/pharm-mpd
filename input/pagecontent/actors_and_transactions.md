## Main actors

1. Prescription Actor
This actor is responsible for all things prescription-related. It can be someone that triggers a new prescription or someone who acts on an existing prescription.
For acting on existing prescriptions, it can be a review of the prescription (only overview and comment), validation (can block prescription from going further down the line) or plannnig a prescription for someone else to analyse and formalize the request. The possible **Roles** are:
* Prescription Placer
* Prescription Validator
* Prescription Reviewer
* Prescription Planner

2. Medication Dispenser
This actor is responsible for the process of dispensing medication to the patient, fulfilling the prescription. Therefore it produces the information on the medication dispensed to the patient. In order to achieve this, it receives prescriptions already validated. It also confirms drug availability for administration and it receives the administration plan and administration reports. This actor may be implemented as the point of sale software of a community pharmacy or the hospital pharmacy module of a hospital information system. The human actor behind this system actor is usually a pharmacist or a pharmacist assistant. In addition to the dispense, in this version this actor is considered to take care of all the dependencies to ensure a proper dispensing.

3. Medication administration Informer
The medication administration producer’s informer’s main responsibility consists in creating and placing the medication administration plan and the corresponding administration reports. In order to achieve this, it receives the initial prescription, the pharmaceutical validation or a “simple” substitution. It also receives the confirmation of drug availability for administration.
Through administration reports, the Medication Administration Manager actor reports, among others:
* The replacements (e.g. the 1g tablet by two 500 mg single dose packets)
* The follow-up (e.g. injectable follow-up)
