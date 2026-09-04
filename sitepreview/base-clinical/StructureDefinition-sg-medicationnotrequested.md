# WHO SMART Guidelines Medication Not Requested - SMART Base Clinical v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines Medication Not Requested**

## Resource Profile: WHO SMART Guidelines Medication Not Requested 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-medicationnotrequested | *Version*:1.0.0 |
| Draft as of 2026-09-04 | *Computable Name*:SGMedicationNotRequested |

 
The WHO SMART Guidelines Medication Not Requested profile defines conformance requirements and exchange expectations for MedicationRequest resources used to communicate that a specific medication (or class of medications) should not be prescribed in WHO Smart Guidelines content. 

**Usages:**

* Refer to this Profile: [WHO SMART Guidelines CarePlan](StructureDefinition-sg-careplan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-medicationnotrequested.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-medicationnotrequested.csv), [Excel](StructureDefinition-sg-medicationnotrequested.xlsx), [Schematron](StructureDefinition-sg-medicationnotrequested.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-medicationnotrequested",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-medicationnotrequested",
  "version" : "1.0.0",
  "name" : "SGMedicationNotRequested",
  "title" : "WHO SMART Guidelines Medication Not Requested",
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
  "description" : "The WHO SMART Guidelines Medication Not Requested profile defines conformance requirements and exchange expectations for MedicationRequest resources used to communicate that a specific medication (or class of medications) should not be prescribed in WHO Smart Guidelines content.",
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
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest",
      "constraint" : [{
        "key" : "mnr-1",
        "severity" : "error",
        "human" : "To indicate what medication was not requested, either at least one coding in the medication element or a notDoneValueSet extension shall be provided",
        "expression" : "medication.extension('http://hl7.org/fhir/StructureDefinition/cqf-notDoneValueSet').exists() xor medication.coding.exists()",
        "xpath" : "exists(f:extension)"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.identifier",
      "path" : "MedicationRequest.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.identifier.use",
      "path" : "MedicationRequest.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.identifier.system",
      "path" : "MedicationRequest.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.identifier.value",
      "path" : "MedicationRequest.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.status",
      "path" : "MedicationRequest.status",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.doNotPerform",
      "path" : "MedicationRequest.doNotPerform",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "fixedBoolean" : true,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "condition" : ["mnr-1"],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x].extension:notDoneValueSet",
      "path" : "MedicationRequest.medication[x].extension",
      "sliceName" : "notDoneValueSet",
      "short" : "What was not requested",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/cqf-notDoneValueSet"]
      }],
      "condition" : ["mnr-1"],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x].coding",
      "path" : "MedicationRequest.medication[x].coding",
      "condition" : ["mnr-1"],
      "mustSupport" : false
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.encounter",
      "path" : "MedicationRequest.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.authoredOn",
      "path" : "MedicationRequest.authoredOn",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-practitioner",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-practitionerrole",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-patient",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-relatedperson"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.recorder",
      "path" : "MedicationRequest.recorder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-practitioner",
        "http://smart.who.int/base-clinical/StructureDefinition/sg-practitionerrole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.reasonCode",
      "path" : "MedicationRequest.reasonCode",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
