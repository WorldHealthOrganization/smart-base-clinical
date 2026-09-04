# WHO SMART Guidelines MeasureReport - SMART Base Clinical v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines MeasureReport**

## Resource Profile: WHO SMART Guidelines MeasureReport 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-measurereport | *Version*:2.0.0 |
| Draft as of 2026-09-01 | *Computable Name*:SGMeasureReport |

 
The WHO SMART Guidelines MeasureReport profile defines conformance requirements and exchange expectations for MeasureReport resources in WHO Smart Guidelines content. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-measurereport.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-measurereport.csv), [Excel](StructureDefinition-sg-measurereport.xlsx), [Schematron](StructureDefinition-sg-measurereport.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-measurereport",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-measurereport",
  "version" : "2.0.0",
  "name" : "SGMeasureReport",
  "title" : "WHO SMART Guidelines MeasureReport",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-09-01T13:42:30+00:00",
  "publisher" : "WHO",
  "contact" : [{
    "name" : "WHO",
    "telecom" : [{
      "system" : "url",
      "value" : "http://who.int"
    }]
  }],
  "description" : "The WHO SMART Guidelines MeasureReport profile defines conformance requirements and exchange expectations for MeasureReport resources in WHO Smart Guidelines content.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MeasureReport",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MeasureReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MeasureReport",
      "path" : "MeasureReport",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.extension:reportedLocation",
      "path" : "MeasureReport.extension",
      "sliceName" : "reportedLocation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-reportedLocation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.identifier",
      "path" : "MeasureReport.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.identifier.use",
      "path" : "MeasureReport.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.identifier.system",
      "path" : "MeasureReport.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.identifier.value",
      "path" : "MeasureReport.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.status",
      "path" : "MeasureReport.status",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.type",
      "path" : "MeasureReport.type",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.measure",
      "path" : "MeasureReport.measure",
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.subject",
      "path" : "MeasureReport.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-patient",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-practitioner",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-practitionerrole",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-relatedperson",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-group"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MeasureReport.reporter",
      "path" : "MeasureReport.reporter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-practitioner",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-practitionerrole",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
