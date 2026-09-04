# WHO SMART Guidelines Patient - SMART Base Clinical v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines Patient**

## Resource Profile: WHO SMART Guidelines Patient 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-patient | *Version*:1.0.0 |
| Draft as of 2026-09-04 | *Computable Name*:SGPatient |

 
The WHO SMART Guidelines Patient profile defines conformance requirements and exchange expectations for Patient resources in WHO Smart Guidelines content. 

**Usages:**

* Refer to this Profile: [WHO SMART Guidelines AllergyIntolerance](StructureDefinition-sg-allergyintolerance.md), [WHO SMART Guidelines CarePlan](StructureDefinition-sg-careplan.md), [WHO SMART Guidelines CareTeam](StructureDefinition-sg-careteam.md), [WHO SMART Guidelines Condition](StructureDefinition-sg-condition.md)... Show 16 more, [WHO SMART Guidelines Encounter](StructureDefinition-sg-encounter.md), [WHO SMART Guidelines EpisodeOfCare](StructureDefinition-sg-episodeofcare.md), [WHO SMART Guidelines Group](StructureDefinition-sg-group.md), [WHO SMART Guidelines Immunization](StructureDefinition-sg-immunization.md), [WHO SMART Guidelines Immunization Not Done](StructureDefinition-sg-immunizationnotdone.md), [WHO SMART Guidelines MeasureReport](StructureDefinition-sg-measurereport.md), [WHO SMART Guidelines Medication Not Requested](StructureDefinition-sg-medicationnotrequested.md), [WHO SMART Guidelines MedicationRequest](StructureDefinition-sg-medicationrequest.md), [WHO SMART Guidelines Observation](StructureDefinition-sg-observation.md), [WHO SMART Guidelines Observation Not Done](StructureDefinition-sg-observationnotdone.md), [WHO SMART Guidelines Patient](StructureDefinition-sg-patient.md), [WHO SMART Guidelines Procedure](StructureDefinition-sg-procedure.md), [WHO SMART Guidelines Procedure Not Done](StructureDefinition-sg-procedurenotdone.md), [WHO SMART Guidelines RelatedPerson](StructureDefinition-sg-relatedperson.md), [WHO SMART Guidelines Service Not Requested](StructureDefinition-sg-servicenotrequested.md) and [WHO SMART Guidelines ServiceRequest](StructureDefinition-sg-servicerequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-patient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-patient.csv), [Excel](StructureDefinition-sg-patient.xlsx), [Schematron](StructureDefinition-sg-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-patient",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-patient",
  "version" : "1.0.0",
  "name" : "SGPatient",
  "title" : "WHO SMART Guidelines Patient",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T05:37:50+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "The WHO SMART Guidelines Patient profile defines conformance requirements and exchange expectations for Patient resources in WHO Smart Guidelines content.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient",
      "mustSupport" : true
    },
    {
      "id" : "Patient.extension:birthTime",
      "path" : "Patient.extension",
      "sliceName" : "birthTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthTime"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.use",
      "path" : "Patient.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier.value",
      "path" : "Patient.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.active",
      "path" : "Patient.active",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.use",
      "path" : "Patient.name.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.text",
      "path" : "Patient.name.text",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom.extension:telecom-preferred",
      "path" : "Patient.telecom.extension",
      "sliceName" : "telecom-preferred",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-preferred"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom.system",
      "path" : "Patient.telecom.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom.value",
      "path" : "Patient.telecom.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom.use",
      "path" : "Patient.telecom.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "mustSupport" : true
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.extension:address-preferred",
      "path" : "Patient.address.extension",
      "sliceName" : "address-preferred",
      "comment" : "Make general extension.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-preferred"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.use",
      "path" : "Patient.address.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address.text",
      "path" : "Patient.address.text",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.photo",
      "path" : "Patient.photo",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact",
      "path" : "Patient.contact",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.name",
      "path" : "Patient.contact.name",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.contact.telecom",
      "path" : "Patient.contact.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.communication",
      "path" : "Patient.communication",
      "mustSupport" : true
    },
    {
      "id" : "Patient.communication.language",
      "path" : "Patient.communication.language",
      "mustSupport" : true
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-practitioner",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "mustSupport" : true
    },
    {
      "id" : "Patient.link.other",
      "path" : "Patient.link.other",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-patient"]
      }],
      "mustSupport" : true
    }]
  }
}

```
