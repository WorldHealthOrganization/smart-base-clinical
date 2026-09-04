# WHO SMART Guidelines RelatedPerson - SMART Base Clinical v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines RelatedPerson**

## Resource Profile: WHO SMART Guidelines RelatedPerson 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-relatedperson | *Version*:1.0.0 |
| Draft as of 2026-09-04 | *Computable Name*:SGRelatedPerson |

 
The WHO SMART Guidelines RelatedPerson profile defines conformance requirements and exchange expectations for RelatedPerson resources in WHO Smart Guidelines content. 

**Usages:**

* Refer to this Profile: [WHO SMART Guidelines AllergyIntolerance](StructureDefinition-sg-allergyintolerance.md), [WHO SMART Guidelines CareTeam](StructureDefinition-sg-careteam.md), [WHO SMART Guidelines Condition](StructureDefinition-sg-condition.md), [WHO SMART Guidelines MeasureReport](StructureDefinition-sg-measurereport.md)... Show 7 more, [WHO SMART Guidelines Medication Not Requested](StructureDefinition-sg-medicationnotrequested.md), [WHO SMART Guidelines MedicationRequest](StructureDefinition-sg-medicationrequest.md), [WHO SMART Guidelines Observation](StructureDefinition-sg-observation.md), [WHO SMART Guidelines Observation Not Done](StructureDefinition-sg-observationnotdone.md), [WHO SMART Guidelines Procedure](StructureDefinition-sg-procedure.md), [WHO SMART Guidelines Service Not Requested](StructureDefinition-sg-servicenotrequested.md) and [WHO SMART Guidelines ServiceRequest](StructureDefinition-sg-servicerequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-relatedperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-relatedperson.csv), [Excel](StructureDefinition-sg-relatedperson.xlsx), [Schematron](StructureDefinition-sg-relatedperson.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-relatedperson",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-relatedperson",
  "version" : "1.0.0",
  "name" : "SGRelatedPerson",
  "title" : "WHO SMART Guidelines RelatedPerson",
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
  "description" : "The WHO SMART Guidelines RelatedPerson profile defines conformance requirements and exchange expectations for RelatedPerson resources in WHO Smart Guidelines content.",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-relatedperson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.identifier.use",
      "path" : "RelatedPerson.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.identifier.system",
      "path" : "RelatedPerson.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.identifier.value",
      "path" : "RelatedPerson.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.active",
      "path" : "RelatedPerson.active",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.relationship",
      "path" : "RelatedPerson.relationship",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype"
      }
    },
    {
      "id" : "RelatedPerson.name",
      "path" : "RelatedPerson.name",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.name.use",
      "path" : "RelatedPerson.name.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.name.text",
      "path" : "RelatedPerson.name.text",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.telecom",
      "path" : "RelatedPerson.telecom",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.telecom.extension:telecom-preferred",
      "path" : "RelatedPerson.telecom.extension",
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
      "id" : "RelatedPerson.telecom.system",
      "path" : "RelatedPerson.telecom.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.telecom.value",
      "path" : "RelatedPerson.telecom.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.telecom.use",
      "path" : "RelatedPerson.telecom.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.gender",
      "path" : "RelatedPerson.gender",
      "mustSupport" : true
    },
    {
      "id" : "RelatedPerson.period",
      "path" : "RelatedPerson.period",
      "mustSupport" : true
    }]
  }
}

```
