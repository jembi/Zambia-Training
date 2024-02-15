Alias: $SCT = http://snomed.info/sct 

CodeSystem: CSKeyPopulationStatus
Id: cs-key-population-status
Title: "Key Population Status"
Description: "A list of key population types"
* ^experimental = false
* ^caseSensitive = true
* #General-Population "General Population"

ValueSet: VSKeyPopulationSatus
Id: vs-key-population-status
Title: "Key Population Status"
Description: "A list of key population types"
* ^experimental = false
* $SCT#472986005 "Sexually active with men"
* $SCT#159799000 "Female prostitute"
* $SCT#159800001 "Male prostitute"
* $SCT#228388006 "Intravenous drug user"
* $SCT#417284009 "Current drug user"
* $SCT#407375002 "Surgically transgendered transsexual"
* include codes from system CSKeyPopulationStatus