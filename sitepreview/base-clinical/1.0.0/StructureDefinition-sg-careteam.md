# WHO SMART Guidelines CareTeam - SMART Base Clinical v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines CareTeam**

## Resource Profile: WHO SMART Guidelines CareTeam 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-careteam | *Version*:1.0.0 |
| Draft as of 2026-09-04 | *Computable Name*:SGCareTeam |

 
The WHO SMART Guidelines CareTeam profile defines conformance requirements and exchange expectations for CareTeam resources in WHO Smart Guidelines content. 

**Usages:**

* Refer to this Profile: [WHO SMART Guidelines CarePlan](StructureDefinition-sg-careplan.md), [WHO SMART Guidelines CareTeam](StructureDefinition-sg-careteam.md) and [WHO SMART Guidelines EpisodeOfCare](StructureDefinition-sg-episodeofcare.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-careteam.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-careteam.csv), [Excel](StructureDefinition-sg-careteam.xlsx), [Schematron](StructureDefinition-sg-careteam.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-careteam",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-careteam",
  "version" : "1.0.0",
  "name" : "SGCareTeam",
  "title" : "WHO SMART Guidelines CareTeam",
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
  "description" : "The WHO SMART Guidelines CareTeam profile defines conformance requirements and exchange expectations for CareTeam resources in WHO Smart Guidelines content.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CareTeam",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-careteam",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "CareTeam",
      "path" : "CareTeam",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.identifier",
      "path" : "CareTeam.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.identifier.use",
      "path" : "CareTeam.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.identifier.system",
      "path" : "CareTeam.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.identifier.value",
      "path" : "CareTeam.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.status",
      "path" : "CareTeam.status",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.category",
      "path" : "CareTeam.category",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.name",
      "path" : "CareTeam.name",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.subject",
      "path" : "CareTeam.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.encounter",
      "path" : "CareTeam.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.period",
      "path" : "CareTeam.period",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant",
      "path" : "CareTeam.participant",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant.role",
      "path" : "CareTeam.participant.role",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.participant.member",
      "path" : "CareTeam.participant.member",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-practitioner",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-practitionerrole",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-patient",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-relatedperson",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-organization",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-careteam"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.managingOrganization",
      "path" : "CareTeam.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.telecom",
      "path" : "CareTeam.telecom",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.telecom.extension:telecom-preferred",
      "path" : "CareTeam.telecom.extension",
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
      "id" : "CareTeam.telecom.system",
      "path" : "CareTeam.telecom.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.telecom.value",
      "path" : "CareTeam.telecom.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "CareTeam.telecom.use",
      "path" : "CareTeam.telecom.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
