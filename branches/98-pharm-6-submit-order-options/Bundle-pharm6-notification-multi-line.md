# pharm6-notification-multi-line - Medication Prescription and Dispense (MPD) v1.0.0-comment-3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pharm6-notification-multi-line**

## Example Bundle: pharm6-notification-multi-line



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "pharm6-notification-multi-line",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrderNotificationBundle"]
  },
  "type" : "subscription-notification",
  "timestamp" : "2026-10-22T10:05:00+02:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:4f7c1e2a-6b0d-4c4e-9d61-0a1f2b3c4d02",
    "resource" : {
      "resourceType" : "SubscriptionStatus",
      "id" : "pharm6-status-multi-line",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrderNotificationStatus"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"SubscriptionStatus_pharm6-status-multi-line\"> </a><p class=\"res-header-id\"><b>Generated Narrative: SubscriptionStatus pharm6-status-multi-line</b></p><a name=\"pharm6-status-multi-line\"> </a><a name=\"hcpharm6-status-multi-line\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHEMedicationOrderNotificationStatus.html\">Medication Order Notification Status</a></p></div><p><b>status</b>: Active</p><p><b>type</b>: Event Notification</p><p><b>eventsSinceSubscriptionStart</b>: 2</p><h3>NotificationEvents</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>EventNumber</b></td><td><b>Timestamp</b></td><td><b>Focus</b></td><td><b>AdditionalContext</b></td></tr><tr><td style=\"display: none\">*</td><td>2</td><td>2026-10-22 10:05:00+0200</td><td><a href=\"Bundle-pharm6-notification-multi-line.html#http-//example.org/fhir/MedicationRequest/200-2-medication-prescription-request1\">MedicationRequest: identifier = 200-1/2; groupIdentifier = 200; status = active; intent = order; authoredOn = 2024-10-06</a></td><td><a href=\"Bundle-pharm6-notification-multi-line.html#http-//example.org/fhir/MedicationRequest/200-2-medication-prescription-request2\">MedicationRequest: identifier = 200-2/2; groupIdentifier = 200; status = active; intent = order; authoredOn = 2024-10-06</a></td></tr></table><p><b>subscription</b>: Identifier: <code>http://example.org/order-subscriptions</code>/pharmacy-orders</p></div>"
      },
      "status" : "active",
      "type" : "event-notification",
      "eventsSinceSubscriptionStart" : "2",
      "notificationEvent" : [{
        "eventNumber" : "2",
        "timestamp" : "2026-10-22T10:05:00+02:00",
        "focus" : {
          "reference" : "http://example.org/fhir/MedicationRequest/200-2-medication-prescription-request1"
        },
        "additionalContext" : [{
          "reference" : "http://example.org/fhir/MedicationRequest/200-2-medication-prescription-request2"
        }]
      }],
      "subscription" : {
        "identifier" : {
          "system" : "http://example.org/order-subscriptions",
          "value" : "pharmacy-orders"
        }
      }
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationRequest/200-2-medication-prescription-request1",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "200-2-medication-prescription-request1",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_200-2-medication-prescription-request1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest 200-2-medication-prescription-request1</b></p><a name=\"200-2-medication-prescription-request1\"> </a><a name=\"hc200-2-medication-prescription-request1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHEMedicationOrder.html\">IHE Medication Order</a></p></div><p><b>identifier</b>: 200-1/2</p><p><b>groupIdentifier</b>: 200</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><h3>Medications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 324821004}\">Valacyclovir (as valacyclovir hydrochloride) 500 mg oral tablet</span></td></tr></table><p><b>subject</b>: <a href=\"Patient-patient1.html\">Thomas Engine  Male, DoB: 1950-09-15 ( 12345)</a></p><p><b>authoredOn</b>: 2024-10-06</p><p><b>requester</b>: <a href=\"PractitionerRole-doctor1.html\">Dr Meryl Ärztin: Clinical oncologist at Dr Ärztin Private Practice</a></p><h3>Reasons</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 407451003}\">Herpes simplex type 1 infection</span></td></tr></table><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: 2 per 1 day</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: SNOMED CT  code732936001 = 'Tablet')</span></td></tr></table></blockquote><h3>DispenseRequests</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ValidityPeriod</b></td><td><b>NumberOfRepeatsAllowed</b></td><td><b>Quantity</b></td></tr><tr><td style=\"display: none\">*</td><td>2024-10-06 --&gt; 2024-12-06</td><td>1</td><td>10 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: SNOMED CT  code732936001 = 'Tablet')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "value" : "200-1/2"
      }],
      "groupIdentifier" : {
        "value" : "200"
      },
      "status" : "active",
      "intent" : "order",
      "medication" : {
        "concept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "324821004",
            "display" : "Valacyclovir (as valacyclovir hydrochloride) 500 mg oral tablet"
          }]
        }
      },
      "subject" : {
        "reference" : "Patient/patient1"
      },
      "authoredOn" : "2024-10-06",
      "requester" : {
        "reference" : "PractitionerRole/doctor1"
      },
      "reason" : [{
        "concept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "407451003",
            "display" : "Herpes simplex type 1 infection"
          }]
        }
      }],
      "dosageInstruction" : [{
        "timing" : {
          "repeat" : {
            "boundsDuration" : {
              "value" : 5,
              "unit" : "day",
              "system" : "http://unitsofmeasure.org",
              "code" : "d"
            },
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Tablet",
            "system" : "http://snomed.info/sct",
            "code" : "732936001"
          }
        }]
      }],
      "dispenseRequest" : {
        "validityPeriod" : {
          "start" : "2024-10-06",
          "end" : "2024-12-06"
        },
        "numberOfRepeatsAllowed" : 1,
        "quantity" : {
          "value" : 10,
          "unit" : "Tablet",
          "system" : "http://snomed.info/sct",
          "code" : "732936001"
        }
      }
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/MedicationRequest/200-2-medication-prescription-request2",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "200-2-medication-prescription-request2",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PHARM/MPD/StructureDefinition/IHEMedicationOrder"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_200-2-medication-prescription-request2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest 200-2-medication-prescription-request2</b></p><a name=\"200-2-medication-prescription-request2\"> </a><a name=\"hc200-2-medication-prescription-request2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHEMedicationOrder.html\">IHE Medication Order</a></p></div><p><b>identifier</b>: 200-2/2</p><p><b>groupIdentifier</b>: 200</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><h3>Medications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 374647008}\">Amoxicillin 875 mg oral tablet</span></td></tr></table><p><b>subject</b>: <a href=\"Patient-patient1.html\">Thomas Engine  Male, DoB: 1950-09-15 ( 12345)</a></p><p><b>authoredOn</b>: 2024-10-06</p><p><b>requester</b>: <a href=\"PractitionerRole-doctor1.html\">Dr Meryl Ärztin: Clinical oncologist at Dr Ärztin Private Practice</a></p><h3>Reasons</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 88348008}\">Maxillary sinusitis</span></td></tr></table><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: 2 per 1 day</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: SNOMED CT  code732936001 = 'Tablet')</span></td></tr></table></blockquote><h3>DispenseRequests</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ValidityPeriod</b></td><td><b>NumberOfRepeatsAllowed</b></td><td><b>Quantity</b></td></tr><tr><td style=\"display: none\">*</td><td>2024-10-06 --&gt; 2024-12-06</td><td>1</td><td>14 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: SNOMED CT  code732936001 = 'Tablet')</span></td></tr></table></div>"
      },
      "identifier" : [{
        "value" : "200-2/2"
      }],
      "groupIdentifier" : {
        "value" : "200"
      },
      "status" : "active",
      "intent" : "order",
      "medication" : {
        "concept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "374647008",
            "display" : "Amoxicillin 875 mg oral tablet"
          }]
        }
      },
      "subject" : {
        "reference" : "Patient/patient1"
      },
      "authoredOn" : "2024-10-06",
      "requester" : {
        "reference" : "PractitionerRole/doctor1"
      },
      "reason" : [{
        "concept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "88348008",
            "display" : "Maxillary sinusitis"
          }]
        }
      }],
      "dosageInstruction" : [{
        "timing" : {
          "repeat" : {
            "boundsDuration" : {
              "value" : 7,
              "unit" : "day",
              "system" : "http://unitsofmeasure.org",
              "code" : "d"
            },
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Tablet",
            "system" : "http://snomed.info/sct",
            "code" : "732936001"
          }
        }]
      }],
      "dispenseRequest" : {
        "validityPeriod" : {
          "start" : "2024-10-06",
          "end" : "2024-12-06"
        },
        "numberOfRepeatsAllowed" : 1,
        "quantity" : {
          "value" : 14,
          "unit" : "Tablet",
          "system" : "http://snomed.info/sct",
          "code" : "732936001"
        }
      }
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/Patient/patient1",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "patient1",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_patient1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient patient1</b></p><a name=\"patient1\"> </a><a name=\"hcpatient1\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Thomas Engine  Male, DoB: 1950-09-15 ( 12345)</p><hr/></div>"
      },
      "identifier" : [{
        "value" : "12345"
      }],
      "name" : [{
        "family" : "Engine",
        "given" : ["Thomas"]
      }],
      "gender" : "male",
      "birthDate" : "1950-09-15"
    }
  },
  {
    "fullUrl" : "http://example.org/fhir/PractitionerRole/doctor1",
    "resource" : {
      "resourceType" : "PractitionerRole",
      "id" : "doctor1",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"PractitionerRole_doctor1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: PractitionerRole doctor1</b></p><a name=\"doctor1\"> </a><a name=\"hcdoctor1\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Dr Meryl Ärztin: Clinical oncologist at Dr Ärztin Private Practice</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"The practitioner who is able to provide the services in this role\">Practitioner:</td><td colspan=\"3\"><a href=\"Practitioner-practitioner1.html\">Dr Meryl Ärztin</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The organization where the practitioner performs the roles\">Organization:</td><td colspan=\"3\"><a href=\"Organization-organization1.html\">Dr Ärztin Private Practice</a></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Roles which this practitioner is authorized to perform for the organization\">Role:</td><td colspan=\"3\"><span title=\"Codes:{http://snomed.info/sct 309295000}\">Clinical oncologist</span></td></tr></table></div>"
      },
      "practitioner" : {
        "reference" : "Practitioner/practitioner1",
        "display" : "Dr Meryl Ärztin"
      },
      "organization" : {
        "reference" : "Organization/organization1",
        "display" : "Dr Ärztin Private Practice"
      },
      "code" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "309295000",
          "display" : "Clinical oncologist"
        }]
      }]
    }
  }]
}

```
