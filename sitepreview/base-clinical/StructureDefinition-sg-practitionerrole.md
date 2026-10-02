# WHO SMART Guidelines PractitionerRole - SMART Base Clinical v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines PractitionerRole**

## Resource Profile: WHO SMART Guidelines PractitionerRole 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-practitionerrole | *Version*:1.0.0 |
| Draft as of 2026-09-04 | *Computable Name*:SGPractitionerRole |

 
The WHO SMART Guidelines PractitionerRole profile defines conformance requirements and exchange expectations for PractitionerRole resources in WHO Smart Guidelines content. 

**Usages:**

* Refer to this Profile: [WHO SMART Guidelines AllergyIntolerance](StructureDefinition-sg-allergyintolerance.md), [WHO SMART Guidelines CareTeam](StructureDefinition-sg-careteam.md), [WHO SMART Guidelines Condition](StructureDefinition-sg-condition.md), [WHO SMART Guidelines Encounter](StructureDefinition-sg-encounter.md)... Show 10 more, [WHO SMART Guidelines EpisodeOfCare](StructureDefinition-sg-episodeofcare.md), [WHO SMART Guidelines MeasureReport](StructureDefinition-sg-measurereport.md), [WHO SMART Guidelines Medication Not Requested](StructureDefinition-sg-medicationnotrequested.md), [WHO SMART Guidelines MedicationRequest](StructureDefinition-sg-medicationrequest.md), [WHO SMART Guidelines Observation](StructureDefinition-sg-observation.md), [WHO SMART Guidelines Observation Not Done](StructureDefinition-sg-observationnotdone.md), [WHO SMART Guidelines Patient](StructureDefinition-sg-patient.md), [WHO SMART Guidelines Procedure](StructureDefinition-sg-procedure.md), [WHO SMART Guidelines Service Not Requested](StructureDefinition-sg-servicenotrequested.md) and [WHO SMART Guidelines ServiceRequest](StructureDefinition-sg-servicerequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-practitionerrole.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-practitionerrole.csv), [Excel](StructureDefinition-sg-practitionerrole.xlsx), [Schematron](StructureDefinition-sg-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-practitionerrole",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-practitionerrole",
  "version" : "1.0.0",
  "name" : "SGPractitionerRole",
  "title" : "WHO SMART Guidelines PractitionerRole",
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
  "description" : "The WHO SMART Guidelines PractitionerRole profile defines conformance requirements and exchange expectations for PractitionerRole resources in WHO Smart Guidelines content.",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-practitionerrole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.identifier",
      "path" : "PractitionerRole.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.identifier.use",
      "path" : "PractitionerRole.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.identifier.system",
      "path" : "PractitionerRole.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.identifier.value",
      "path" : "PractitionerRole.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.active",
      "path" : "PractitionerRole.active",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.period",
      "path" : "PractitionerRole.period",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.location",
      "path" : "PractitionerRole.location",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-location"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom",
      "path" : "PractitionerRole.telecom",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom.extension:telecom-preferred",
      "path" : "PractitionerRole.telecom.extension",
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
      "id" : "PractitionerRole.telecom.system",
      "path" : "PractitionerRole.telecom.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom.value",
      "path" : "PractitionerRole.telecom.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.telecom.use",
      "path" : "PractitionerRole.telecom.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
