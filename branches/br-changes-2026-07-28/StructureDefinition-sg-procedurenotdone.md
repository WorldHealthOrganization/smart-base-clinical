# WHO SMART Guidelines Procedure Not Done - SMART Base Clinical v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines Procedure Not Done**

## Resource Profile: WHO SMART Guidelines Procedure Not Done 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-procedurenotdone | *Version*:2.0.0 |
| Draft as of 2026-09-01 | *Computable Name*:SGProcedureNotDone |

 
The WHO SMART Guidelines Procedure Not Done profile defines conformance requirements and exchange expectations for Procedure resources used to communicate that a particular procedure (or class of procedures) was not performed in WHO Smart Guidelines content. 

**Usages:**

* Refer to this Profile: [WHO SMART Guidelines CarePlan](StructureDefinition-sg-careplan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-procedurenotdone.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-procedurenotdone.csv), [Excel](StructureDefinition-sg-procedurenotdone.xlsx), [Schematron](StructureDefinition-sg-procedurenotdone.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-procedurenotdone",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-procedurenotdone",
  "version" : "2.0.0",
  "name" : "SGProcedureNotDone",
  "title" : "WHO SMART Guidelines Procedure Not Done",
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
  "description" : "The WHO SMART Guidelines Procedure Not Done profile defines conformance requirements and exchange expectations for Procedure resources used to communicate that a particular procedure (or class of procedures) was not performed in WHO Smart Guidelines content.",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure",
      "constraint" : [{
        "key" : "pnd-1",
        "severity" : "error",
        "human" : "To indicate what procedure was not performed, either at least one coding in the code element or a notDoneValueSet extension shall be provided",
        "expression" : "code.extension('http://hl7.org/fhir/StructureDefinition/cqf-notDoneValueSet').exists() xor code.coding.exists()",
        "xpath" : "exists(f:extension)"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier",
      "path" : "Procedure.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier.use",
      "path" : "Procedure.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier.system",
      "path" : "Procedure.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.identifier.value",
      "path" : "Procedure.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "fixedCode" : "not-done",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "condition" : ["pnd-1"],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.extension:notDoneValueSet",
      "path" : "Procedure.code.extension",
      "sliceName" : "notDoneValueSet",
      "short" : "What was not performed",
      "definition" : "Specifies the value set that characterizes the events or activities that did not occur or were not performed.",
      "requirements" : "Must be able to indicate the value set from which the expected event would be drawn, had it occurred.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/cqf-notDoneValueSet"]
      }],
      "condition" : ["pnd-1"],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-encounter"]
      }],
      "mustSupport" : true
    }]
  }
}

```
