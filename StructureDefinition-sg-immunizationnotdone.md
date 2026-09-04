# WHO SMART Guidelines Immunization Not Done - SMART Base Clinical v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines Immunization Not Done**

## Resource Profile: WHO SMART Guidelines Immunization Not Done 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-immunizationnotdone | *Version*:1.0.0 |
| Draft as of 2026-09-04 | *Computable Name*:SGImmunizationNotDone |

 
The WHO SMART Guidelines Immunization Not Done profile defines conformance requirements and exchange expectations for Immunization resources used to communicate that a specific immunization (or class of immunizations) was not done in WHO Smart Guidelines content. 

**Usages:**

* Refer to this Profile: [WHO SMART Guidelines CarePlan](StructureDefinition-sg-careplan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-immunizationnotdone.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-immunizationnotdone.csv), [Excel](StructureDefinition-sg-immunizationnotdone.xlsx), [Schematron](StructureDefinition-sg-immunizationnotdone.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-immunizationnotdone",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-immunizationnotdone",
  "version" : "1.0.0",
  "name" : "SGImmunizationNotDone",
  "title" : "WHO SMART Guidelines Immunization Not Done",
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
  "description" : "The WHO SMART Guidelines Immunization Not Done profile defines conformance requirements and exchange expectations for Immunization resources used to communicate that a specific immunization (or class of immunizations) was not done in WHO Smart Guidelines content.",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization",
      "constraint" : [{
        "key" : "ind-1",
        "severity" : "error",
        "human" : "To indicate what immunization was not done, either at least one coding in the vaccineCode element or a notDoneValueSet extension shall be provided",
        "expression" : "vaccineCode.extension('http://hl7.org/fhir/StructureDefinition/cqf-notDoneValueSet').exists() xor vaccineCode.coding.exists()",
        "xpath" : "exists(f:extension)"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.identifier",
      "path" : "Immunization.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.identifier.use",
      "path" : "Immunization.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.identifier.system",
      "path" : "Immunization.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.identifier.value",
      "path" : "Immunization.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.status",
      "path" : "Immunization.status",
      "type" : [{
        "code" : "code"
      }],
      "fixedCode" : "not-done",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.statusReason",
      "path" : "Immunization.statusReason",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "condition" : ["ind-1"],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.vaccineCode.extension:notDoneValueSet",
      "path" : "Immunization.vaccineCode.extension",
      "sliceName" : "notDoneValueSet",
      "short" : "What wasn't administered",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/cqf-notDoneValueSet"]
      }],
      "condition" : ["ind-1"],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.patient",
      "path" : "Immunization.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.encounter",
      "path" : "Immunization.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.recorded",
      "path" : "Immunization.recorded",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
