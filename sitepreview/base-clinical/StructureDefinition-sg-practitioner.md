# WHO SMART Guidelines Practitioner - SMART Base Clinical v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines Practitioner**

## Resource Profile: WHO SMART Guidelines Practitioner 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-practitioner | *Version*:1.0.0 |
| Draft as of 2026-09-04 | *Computable Name*:SGPractitioner |

 
The WHO SMART Guidelines Practitioner profile defines conformance requirements and exchange expectations for Practitioner resources in WHO Smart Guidelines content. 

**Usages:**

* Refer to this Profile: [WHO SMART Guidelines AllergyIntolerance](StructureDefinition-sg-allergyintolerance.md), [WHO SMART Guidelines CareTeam](StructureDefinition-sg-careteam.md), [WHO SMART Guidelines Condition](StructureDefinition-sg-condition.md), [WHO SMART Guidelines Encounter](StructureDefinition-sg-encounter.md)... Show 11 more, [WHO SMART Guidelines EpisodeOfCare](StructureDefinition-sg-episodeofcare.md), [WHO SMART Guidelines MeasureReport](StructureDefinition-sg-measurereport.md), [WHO SMART Guidelines Medication Not Requested](StructureDefinition-sg-medicationnotrequested.md), [WHO SMART Guidelines MedicationRequest](StructureDefinition-sg-medicationrequest.md), [WHO SMART Guidelines Observation](StructureDefinition-sg-observation.md), [WHO SMART Guidelines Observation Not Done](StructureDefinition-sg-observationnotdone.md), [WHO SMART Guidelines Patient](StructureDefinition-sg-patient.md), [WHO SMART Guidelines PractitionerRole](StructureDefinition-sg-practitionerrole.md), [WHO SMART Guidelines Procedure](StructureDefinition-sg-procedure.md), [WHO SMART Guidelines Service Not Requested](StructureDefinition-sg-servicenotrequested.md) and [WHO SMART Guidelines ServiceRequest](StructureDefinition-sg-servicerequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-practitioner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-practitioner.csv), [Excel](StructureDefinition-sg-practitioner.xlsx), [Schematron](StructureDefinition-sg-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-practitioner",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-practitioner",
  "version" : "1.0.0",
  "name" : "SGPractitioner",
  "title" : "WHO SMART Guidelines Practitioner",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T05:53:08+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "The WHO SMART Guidelines Practitioner profile defines conformance requirements and exchange expectations for Practitioner resources in WHO Smart Guidelines content.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier.use",
      "path" : "Practitioner.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier.system",
      "path" : "Practitioner.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.active",
      "path" : "Practitioner.active",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.use",
      "path" : "Practitioner.name.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.text",
      "path" : "Practitioner.name.text",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom",
      "path" : "Practitioner.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom.extension:telecom-preferred",
      "path" : "Practitioner.telecom.extension",
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
      "id" : "Practitioner.telecom.system",
      "path" : "Practitioner.telecom.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom.value",
      "path" : "Practitioner.telecom.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.telecom.use",
      "path" : "Practitioner.telecom.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.qualification",
      "path" : "Practitioner.qualification",
      "mustSupport" : true
    }]
  }
}

```
