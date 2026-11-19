# WHO SMART Guidelines MedicationRequest - SMART Base Clinical v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines MedicationRequest**

## Resource Profile: WHO SMART Guidelines MedicationRequest 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-medicationrequest | *Version*:2.0.0 |
| Draft as of 2026-09-01 | *Computable Name*:SGMedicationRequest |

 
The WHO SMART Guidelines MedicationRequest profile defines conformance requirements and exchange expectations for MedicationRequest resources in WHO Smart Guidelines content. 

**Usages:**

* Refer to this Profile: [WHO SMART Guidelines CarePlan](StructureDefinition-sg-careplan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-medicationrequest.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-medicationrequest.csv), [Excel](StructureDefinition-sg-medicationrequest.xlsx), [Schematron](StructureDefinition-sg-medicationrequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-medicationrequest",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-medicationrequest",
  "version" : "2.0.0",
  "name" : "SGMedicationRequest",
  "title" : "WHO SMART Guidelines MedicationRequest",
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
  "description" : "The WHO SMART Guidelines MedicationRequest profile defines conformance requirements and exchange expectations for MedicationRequest resources in WHO Smart Guidelines content.",
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
      "id" : "MedicationRequest.intent",
      "path" : "MedicationRequest.intent",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.category",
      "path" : "MedicationRequest.category",
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "description" : "Type of medication usage",
        "valueSet" : "http://hl7.org/fhir/ValueSet/medicationrequest-category"
      }
    },
    {
      "id" : "MedicationRequest.doNotPerform",
      "path" : "MedicationRequest.doNotPerform",
      "type" : [{
        "code" : "boolean"
      }],
      "fixedBoolean" : false,
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "mustSupport" : true
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
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction",
      "path" : "MedicationRequest.dosageInstruction",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing",
      "path" : "MedicationRequest.dosageInstruction.timing",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.frequency",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.frequencyMax",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.frequencyMax",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.period",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.period",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.periodMax",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.periodMax",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.timing.repeat.periodUnit",
      "path" : "MedicationRequest.dosageInstruction.timing.repeat.periodUnit",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "path" : "MedicationRequest.dosageInstruction.asNeeded[x]",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.site",
      "path" : "MedicationRequest.dosageInstruction.site",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.route",
      "path" : "MedicationRequest.dosageInstruction.route",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.method",
      "path" : "MedicationRequest.dosageInstruction.method",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "path" : "MedicationRequest.dosageInstruction.doseAndRate.dose[x]",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest",
      "path" : "MedicationRequest.dispenseRequest",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.initialFill",
      "path" : "MedicationRequest.dispenseRequest.initialFill",
      "min" : 0,
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.dispenseInterval",
      "path" : "MedicationRequest.dispenseRequest.dispenseInterval",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.validityPeriod",
      "path" : "MedicationRequest.dispenseRequest.validityPeriod",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.quantity",
      "path" : "MedicationRequest.dispenseRequest.quantity",
      "mustSupport" : true
    },
    {
      "id" : "MedicationRequest.dispenseRequest.expectedSupplyDuration",
      "path" : "MedicationRequest.dispenseRequest.expectedSupplyDuration",
      "mustSupport" : true
    }]
  }
}

```
