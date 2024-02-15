Profile: TestPatient
Parent: Patient
Id: test-patient
Title: "Test Patient"
Description: "Test Patient"
* contact 0..*
* contact.name 1..1
* contact.name.given 1..*
* contact.name.family 1..1
* contact.telecom 0..*
* contact.telecom.system 1..1