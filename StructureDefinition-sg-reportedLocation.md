# WHO SMART Guidelines Reported Location - SMART Base Clinical v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines Reported Location**

## Extension: WHO SMART Guidelines Reported Location 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-reportedLocation | *Version*:1.0.0 |
| Draft as of 2026-09-04 | *Computable Name*:SGReportedLocation |

The location at which the reported data was generated

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [WHO SMART Guidelines MeasureReport](StructureDefinition-sg-measurereport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-reportedLocation.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-reportedLocation.csv), [Excel](StructureDefinition-sg-reportedLocation.xlsx), [Schematron](StructureDefinition-sg-reportedLocation.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-reportedLocation",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-reportedLocation",
  "version" : "1.0.0",
  "name" : "SGReportedLocation",
  "title" : "WHO SMART Guidelines Reported Location",
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
  "description" : "The location at which the reported data was generated",
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
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "MeasureReport"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Where the report was generated",
      "definition" : "The location at which the reported data was generated",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://smart.who.int/base-clinical/StructureDefinition/sg-reportedLocation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Where the report was generated",
      "definition" : "The location at which the reported data was generated",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Location"]
      }]
    }]
  }
}

```
