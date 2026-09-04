# WHO SMART Guidelines CarePlan - SMART Base Clinical v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines CarePlan**

## Resource Profile: WHO SMART Guidelines CarePlan 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-careplan | *Version*:1.0.0 |
| Draft as of 2026-09-04 | *Computable Name*:SGCarePlan |

 
The WHO SMART Guidelines CarePlan profile defines conformance requirements and exchange expectations for CarePlan resources in WHO Smart Guidelines content. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-careplan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-careplan.csv), [Excel](StructureDefinition-sg-careplan.xlsx), [Schematron](StructureDefinition-sg-careplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-careplan",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-careplan",
  "version" : "1.0.0",
  "name" : "SGCarePlan",
  "title" : "WHO SMART Guidelines CarePlan",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-04T05:49:22+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "The WHO SMART Guidelines CarePlan profile defines conformance requirements and exchange expectations for CarePlan resources in WHO Smart Guidelines content.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-careplan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CarePlan",
      "path" : "CarePlan",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.identifier",
      "path" : "CarePlan.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.identifier.use",
      "path" : "CarePlan.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.identifier.system",
      "path" : "CarePlan.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.identifier.value",
      "path" : "CarePlan.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.status",
      "path" : "CarePlan.status",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.intent",
      "path" : "CarePlan.intent",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.category",
      "path" : "CarePlan.category",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.title",
      "path" : "CarePlan.title",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.description",
      "path" : "CarePlan.description",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.subject",
      "path" : "CarePlan.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.encounter",
      "path" : "CarePlan.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.period",
      "path" : "CarePlan.period",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.careTeam",
      "path" : "CarePlan.careTeam",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-careteam"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.addresses",
      "path" : "CarePlan.addresses",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-condition"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity",
      "path" : "CarePlan.activity",
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.outcomeReference",
      "path" : "CarePlan.activity.outcomeReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-allergyintolerance",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-condition",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-encounter",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-episodeofcare",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-immunization",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-immunizationnotdone",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-observation",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-observationnotdone",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-procedure",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-procedurenotdone"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.reference",
      "path" : "CarePlan.activity.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-medicationnotrequested",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-medicationrequest",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-servicenotrequested",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-servicerequest"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CarePlan.activity.detail",
      "path" : "CarePlan.activity.detail",
      "min" : 0,
      "max" : "0"
    }]
  }
}

```
