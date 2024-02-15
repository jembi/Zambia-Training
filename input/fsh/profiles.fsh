Invariant: PATIENT-PHONE-1
Description: "Only special characters (dash) and numbers are allowed. For example: 083-123-1234"
Expression: "$this.matches('[0-9]{1,3}-[0-9]{1,3}-[0-9]{4}')"
Severity: #error

Profile: TestPatient
Parent: Patient
Id: test-patient
Title: "Test Patient"
Description: "Test Patient for training"

* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    NID 0..1 MS and
    MR 1..1
* identifier[NID].value 1..1
* identifier[NID].system = "http://openhie.org/fhir/zambia-training/identifier/nid"
* identifier[NID] ^definition = "To capture a patient's National ID..."
* identifier[MR].value 1..1
* identifier[MR].system = "http://openhie.org/fhir/zambia-training/identifier/mr"

* contact 0..*
* contact.name 1..1
* contact.name.given 1..*
* contact.name.family 1..1
* contact.telecom 0..*
* contact.telecom.system 1..1

* telecom 0..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.ordered = false
* telecom ^slicing.description = "Slice based on the type of identifier."
* telecom contains
    EMAIL 0..1 MS and
    PHOME 0..1 MS
* telecom[EMAIL].value 1..1
* telecom[EMAIL].system = #email
* telecom[EMAIL] ^definition = "To capture a patient's email address..."
* telecom[PHOME].value 1..1
  * obeys PATIENT-PHONE-1
* telecom[PHOME].system = #phone
* telecom[PHOME] ^definition = "To capture a blah blah blah..."
* extension contains HIVKeyPop named HIVPOPSTATUS 0..1
* extension contains HIVPopStatusDate named HIVPOPSTATUSDate 0..1
* extension contains HIVPopStatusComplex named COMPLEXHIVPopStatus 0..1