# Volume 1 - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* **Volume 1**

## Volume 1

The MPD profile describes the data exchange between systems for electronic prescriptions and dispenses, both in terms of content - semantic and syntax of the data exchange - and workflow - actors and transactions, which should be implemented in systems aiming for interoperability.

From implementer experience and analysis of standards implementation, IHE acknowledges the variation in medication workflows, depending on jurisdiction, organizational factors, practitioner or patient preferences, and other operational factors such as product availability.

To achieve this, IHE has sought to:

* Address the use cases that have been described by IHE since the [IHE Pharmacy White Paper](), from order creation and validation to pharmacy preparation and dispensation.
* Ensure coverage of the [Use Cases](usecases.md) that present common situations in current technology systems and for which standard interoperability is sought.
* Describe common data models and FHIR profiles for exchanging medication-related information
* Create a common set of actors that can be combined, adopted and adapted to address the variety of use cases and exceptions, while standardizing data exchange and interoperability architectures.

### Transaction Descriptions

The transactions in this profile are summarized in the [Actors and Transactions page](actors-transactions.md).

## XX.2 Actor Options

Each actor is only having one transaction at the moment, so no options are defined.

## XX.3 Required Actor Groupings

At this moment, MPD doesn't specify any required groupings. For some examples on how actors can be combined in different implementation architectures, see [Actor Grouping examples](actor-grouping-examples.md).

## XX.4 Overview

The [Actor grouping examples](actor-grouping-examples.md) page describes how the different actors can be combined in different exchange architectures. For detailed usage of the transactions, the section [Usage examples](usage-examples.md) provide a description of several use cases and how these use cases use the transactions described in Volume 2.

### XX.4.1 Concepts

Not applicable

### XX.4.2 Use Cases

Use Cases and patterns covered are described in the [Use Cases](usecases.md) pages.

## XX.5 Security Considerations

See ITI TF-2x: [Appendix Z.8 "Mobile Security Considerations"](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations)

## XX.6 Cross-Profile Considerations

No Cross-profile considerations are described at this moment. Transversal groupings e.g. Consistent Time (CT) Client, ATNA Secure Node or Secure Application, as well as other profiles, will be considered for future editions.

