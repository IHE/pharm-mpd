// Check the latest version in MEOW IG
Logical: DosagingInformation
Title: "Dosaging - Data Model"
Description: "Usage instructions. Instructions about requested administration of the product. Based on FHIR Dosage complex data type."
Characteristics: #can-be-target

* sequence 0..1 INT "Order of the dosage instruction, in case one treatment consists of several dosaging schemes"
* text 0..1 ST "Free text usage/dosage instructions"
* additionalInstruction 0..* CD "Coded instructions, e.g warnings to the patient, like 'may cause drowsiness' etc"
* patientInstruction 0..1 ST "Patient oriented instructions as free text"
* doseAndRate 0..* Class "Amount of medication administered per one dose (= one timing)"
  * type 0..1 CD "The kind of dose or rate specified (e.g calculated, ordered, etc)."
  * dose 0..1 PQ "!Range or SimpleQuantity. Amount of medication per one dose. (1 tablet, 2-3 tablets, 20ml)"
  * rate 0..1 RTO "!Ratio, Range or SimpleQuantity. Time period during which one defined dose is administered (per 1 hour, per 5-10 minutes)"
* timing 0..1 Class "When medication should be administered (period, time of day, frequency, etc)" 
  * event 0..* dateTime "Exact date and/or time of the administration"
  * code 0..1 CD "Timing abbreviation (AM - morning, Q4H - once in every 4 hours, BID - twice a day, etc)"
  * repeat 0..1 Class "Repetition of the administration."
    * bounds 0..1 Class "Time bounds for the treatment (current dosaging scheme). Only one of the following can exist."
      * duration 0..1 PQ "Number of time units, e.g 10 days"
      * range 0..1 Range "A range of numbers of time units, 5-10 days"
      * period 0..1 Period "Start and end date, 05.08.2023 - 10.08.2023"
    * count 0..1 Class "Number of times to repeat, exact or range"
      * count 1..1 INT "Number of times (e.g 'once', '10 times')"
      * countMax 0..1 INT "Maximum number of times (e.g 'maximum 10 times')"
    * duration 0..1 Class "Duration of one administration, exact or range"
      * duration 1..1 PQ "Duration of administration (e.g '5 minutes', '1 hour')"
      * durationMax 0..1 PQ "Maximum duration of administration (e.g 'maximum 1 hour')"
    * frequency 0..1 Class "Frequency of intake/administration (e.g 'three times a day')"
      * numberOfTimes 1..1 INT "Number of times per period (e.g '3 times')"
      * maxNumberOfTimes 0..1 INT "Maximum number of times per period (e.g. 'maximum 3 times')"
      * period 1..1 PQ "Duration to which the frequency applies (e.g '... / 1 day')"
      * periodMax 0..1 PQ "Upper limit of the period (e.g ... / 4-6 hours)"
    * dayOfWeek 0..* CD "The day of the week of administration, e.g Mon, Tue, etc"
    * timeOfDay 0..* time "Time of day of administration (e.g '10:00')"
    * eventTime 0..* Class "An event the administration is bound to, e.g 'before meal', '30 min before meal'"
      * when 0..* CD "Time period or event ('before meal', 'immediately', 'morning')"
      * offset 0..1 INT "minutes from event, before or after (?not sure how to show before/after with only positive integers)"
* asNeeded 0..1 BL "Take as needed"
* asNeededFor 0..* CD "Take as needed for the coded reason"
* bodySite 0..1 CD "Body site of administration"
* routeOfAdministration 0..1 CD "Route of administration"
* methodOfAdministration 0..1 CD "Method of administration"
* maxDose 0..* Class "Maximum dose for the patient"
  * maxDosePerPeriod 0..* RTO "Upper limit on medication per unit of time"
  * maxDosePerAdministration 0..1 PQ "Upper limit on medication per one administration"
  * maxDosePerLifetime 0..1 PQ "Upper limit on medication per lifetime of the patient"