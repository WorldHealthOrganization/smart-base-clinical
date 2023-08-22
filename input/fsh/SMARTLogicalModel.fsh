
Alias: $smart = http://who.smart.codes/smart
Alias: $loinc = http://who.smart.codes/loinc
Alias: $snomed = http://who.smart.codes/snomed
Alias: $icd-10 = http://who.smart.codes/icd-10
Alias: $icd-11 = http://who.smart.codes/icd-11
Alias: $icf = http://who.smart.codes/icf
Alias: $ichi = http://who.smart.codes/ichi
Alias: $snomed-gps = http://who.smart.codes/smart-gps
Alias: $atc = http://who.smart.codes/atc

Profile: SGLogicalModel
Parent: StructureDefinition

* title 1..1
* publisher 1..1
* description 1..1
* kind = #logical
* differential
  * element
    * short 1..1
    * definition 1..1
    * code 
      * ^slicing.discriminator.type = #pattern
      * ^slicing.discriminator.path = "system"
      * ^slicing.rules = #open
      * ^slicing.ordered = false   // can be omitted, since false is the default
      * ^slicing.description = "Types of codes that the element corresponds to"
    * code contains 
       smart 1..1 MS and 
       loinc 0..1 MS and 
       snomed 0..1 MS and 
       icd-10 0..1 MS and 
       icd-11 0..1 MS and 
       icf 0..1 MS and 
       ichi 0..1 MS and 
       snomed-gps 0..1 MS and 
       atc 0..1 MS  

    * code[smart].system = $smart
    * code[loinc].system = $loinc
    * code[snomed].system = $snomed
    * code[icd-10].system = $icd-10
    * code[icd-11].system = $icd-11
    * code[icf].system = $icf
    * code[ichi].system = $ichi
    * code[snomed-gps].system = $snomed-gps  
    * code[atc].system = $atc

    * type 1..1


Logical: IMMZ_C_RegisterClient
Title: "IMMZ.C Register Client"
Description: "Register Client"

* ^meta.profile = Canonical(SGLogicalModel)

* uniqueIdentifier 1..1 Identifier "Unique identifier" "Unique identifier for the client, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, immunization information system ID, medical record ID)."
  * ^code[+] = $smart#IMMZ.C.DE1




* name 1..1 string "Name" "The full name of the client"
  * ^code[+].code = $smart#IMMZ.C.DE2
  * ^code[+].code = $loinc#54125-0
  * ^code[+].code = $snomed-gps#371484003

* firstName 0..1 string "First name" "Client's first name or given name"
  * ^code[+].code = $smart#IMMZ.C.DE3
  * ^code[+].code = $loinc#45392-8
  * ^code[+].code = $snomed-gps#184095009

* familyName 0..1 string "Family name" "Client's family name or last name"
  * ^code[+].code = $smart#IMMZ.C.DE4
  * ^code[+].code = $loinc#45394-4
  * ^code[+].code = $snomed-gps#184096005

* sex 1..1 Coding "Sex" "Documentation of a specific instance of sex information for the client"
  * ^code[+].code = $smart#IMMZ.C.DE5
  * ^code[+].code = $loinc#46098-0
  * ^code[+].code = $snomed-gps#184100006

// * male 0..1 "Male" "Client's biological sex is male"
//   * ^code[+].code = $smart#IMMZ.C.DE6
//   * ^code[+].code = $icd-11#XX2UQ8 
//   * ^code[+].code = $snomed-gps#248153007"

// * female 0..1 "Female" "Client's biological sex is female"
//   * ^code[+].code = $smart#IMMZ.C.DE7
//   * ^code[+].code = $icd-11#XX2V25 
//   * ^code[+].code = $snomed-gps#248152002"

// * biologicalSexNotSpecified 0..1 "Biological sex not specified" "Client's biological sex is not specified"
//   * ^code[+].code = $smart#IMMZ.C.DE8
//   * ^code[+].code = $icd-11#XX2PX3
//   * ^code[+].code = $snomed-gps#772004004"

// * intersex 0..1 "Intersex" "Client's biological sex is intersex"
//   * ^code[+].code = $smart#IMMZ.C.DE9
//   * ^code[+].code = $icd-11#XX45B7
//   * ^code[+].code = $snomed-gps#15867007"


* dateOfBirth 0..1 date "Date of birth " "Client's date of birth (DOB) if known; if unknown, use assigned DOB for administrative purposes"
  * ^code[+].code = $smart#IMMZ.C.DE10
  * ^code[+].code = $loinc#21112-8
  * ^code[+].code = $snomed-gps#184099003

* ageInWeeks 0..1 Quantity "Age in weeks" "The client's calculated age (number of weeks) based on the date of birth (DOB) and the visit date"
  * ^code[+].code = $smart#IMMZ.C.DE11
  * ^code[+].code = $loinc#63900-5

* ageInMonths 0..1 Quantity "Age in months" "The client's calculated age (number of months) based on the date of birth (DOB) and the visit date"
  * ^code[+].code = $smart#IMMZ.C.DE12
  * ^code[+].code = $loinc#63900-5

* ageInYears 0..1 Quantity "Age in years" "The client's calculated age (number of years) based on the date of birth (DOB) and the visit date"
  * ^code[+].code = $smart#IMMZ.C.DE13
  * ^code[+].code = $loinc#63900-5

* multipleBirth 1..1 boolean "Multiple birth " "Indicates whether the client is part of a multiple birth (e.g. twins, triplets, etc.)"
  * ^code[+].code = $smart#IMMZ.C.DE14

* caregivers 0..* BackboneElement "Caregivers" "The client's caregiver (person) which could be next of kin (e.g., partner, husband, mother, sibling, etc.)"
  * ^code[+].code = $smart#IMMZ.C.DE15
  * ^code[+].code = $snomed-gps#184140000

  * fullName 0..1 string "Caregiver's full name" "The full name of the client's caregiver"
    * ^code[+].code = $smart#IMMZ.C.DE16
    * ^code[+].code = $snomed-gps#184140000

  * firstName 0..1 string "Caregiver's first name" "First or given name of the client's caregiver"
    * ^code[+].code = $smart#IMMZ.C.DE17

  * familyName 0..1 string "Caregiver's family name" "Family name or last name of the client's caregiver"
    * ^code[+].code = $smart#IMMZ.C.DE18

  * phoneNumber 1..1 string "Contact phone number" "Client's phone number; can be a landline or a mobile phone number"
    * ^code[+].code = $smart#IMMZ.C.DE19
    * ^code[+].code = $loinc#42077-8
    * ^code[+].code = $snomed-gps#184103008

* administrativeArea 0..1 Coding "Administrative area" "The name of the city/municipality/town/village of where the client lives"
  * ^code[+].code = $smart#IMMZ.C.DE20
  * ^code[+].code = $loinc#56799-0
  * ^code[+].code = $snomed-gps#184097001"


* activeHealthWorker 1..1 boolean "Active health worker" "Is the client an active and participating health worker. This data element is used mainly for reporting and indicators purposes."
  * ^code[+].code = $smart#IMMZ.C.DE21

