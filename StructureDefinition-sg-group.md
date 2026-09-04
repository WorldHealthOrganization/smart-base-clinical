# WHO SMART Guidelines Group - SMART Base Clinical v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines Group**

## Resource Profile: WHO SMART Guidelines Group 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-group | *Version*:1.0.0 |
| Draft as of 2026-09-04 | *Computable Name*:SGGroup |

 
The WHO SMART Guidelines Group profile defines conformance requirements and exchange expectations for Group resources in WHO Smart Guidelines content. 

**Usages:**

* Refer to this Profile: [WHO SMART Guidelines MeasureReport](StructureDefinition-sg-measurereport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-group.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-group.csv), [Excel](StructureDefinition-sg-group.xlsx), [Schematron](StructureDefinition-sg-group.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-group",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-group",
  "version" : "1.0.0",
  "name" : "SGGroup",
  "title" : "WHO SMART Guidelines Group",
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
  "description" : "The WHO SMART Guidelines Group profile defines conformance requirements and exchange expectations for Group resources in WHO Smart Guidelines content.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Group",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-group",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Group",
      "path" : "Group",
      "mustSupport" : true
    },
    {
      "id" : "Group.identifier",
      "path" : "Group.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Group.identifier.use",
      "path" : "Group.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Group.identifier.system",
      "path" : "Group.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Group.identifier.value",
      "path" : "Group.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Group.active",
      "path" : "Group.active",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Group.member",
      "path" : "Group.member"
    },
    {
      "id" : "Group.member.entity",
      "path" : "Group.member.entity",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-patient"]
      }]
    }]
  }
}

```
