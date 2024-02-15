Instance: TestPatientExampleOne
InstanceOf: TestPatient
Usage: #example
Title: "Test Patient Example One"
Description: "Example using simple extensions"
* identifier[NID].value = "NID1234"
* identifier[NID].system = "http://openhie.org/fhir/zambia-training/identifier/nid"
* identifier[MR].value = "MRN1234-A"
* identifier[MR].system = "http://openhie.org/fhir/zambia-training/identifier/mr"
* contact[+].name.given[+] = "Moses"
* contact[=].name.given[+] = "John"
* contact[=].name.family = "Giji"
* contact[=].telecom[+].value = "0831234567"
* contact[=].telecom[=].system = #phone
* contact[=].telecom[+].value = "same@gmail.com"
* contact[=].telecom[=].system = #email
* telecom[+][PHOME].value = "083-123-4567"
* telecom[=][PHOME].system = #phone
* telecom[+][EMAIL].value = "same@gmail.com"
* telecom[=][EMAIL].system = #email
//* extension[HIVPOPSTATUS].valueCodeableConcept.coding.code = #472986005
//* extension[HIVPOPSTATUS].valueCodeableConcept.coding.system = "http://openhie.org/fhir/zambia-training/CodeSystem/cs-key-population-status"
* extension[HIVPOPSTATUS].valueCodeableConcept = $SCT#472986005
* extension[HIVPOPSTATUSDate].valueDateTime = "1983-05-22T16:40:17+02:00"

Instance: TestPatientExampleTwo
InstanceOf: TestPatient
Usage: #example
Title: "Test Patient Example Two"
Description: "Example using a complex extension"
* identifier[NID].value = "NID1234"
* identifier[NID].system = "http://openhie.org/fhir/zambia-training/identifier/nid"
* identifier[MR].value = "MRN1234-A"
* identifier[MR].system = "http://openhie.org/fhir/zambia-training/identifier/mr"
* contact[+].name.given[+] = "Moses"
* contact[=].name.given[+] = "John"
* contact[=].name.family = "Giji"
* contact[=].telecom[+].value = "0831234567"
* contact[=].telecom[=].system = #phone
* contact[=].telecom[+].value = "same@gmail.com"
* contact[=].telecom[=].system = #email
* telecom[+][PHOME].value = "083-123-4567"
* telecom[=][PHOME].system = #phone
* telecom[+][EMAIL].value = "same@gmail.com"
* telecom[=][EMAIL].system = #email
* extension[HIVPOPSTATUSDate].valueDateTime = "1983-05-22T16:40:17+02:00"
* extension[COMPLEXHIVPopStatus].extension[HIVPOPSTATUS].valueCodeableConcept = $SCT#472986005
* extension[COMPLEXHIVPopStatus].extension[HIVPOPSTATUSDate].valueDateTime = "1983-05-22T16:40:17+02:00"