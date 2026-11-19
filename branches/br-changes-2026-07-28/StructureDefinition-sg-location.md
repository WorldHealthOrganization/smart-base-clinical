# WHO SMART Guidelines Location - SMART Base Clinical v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **WHO SMART Guidelines Location**

## Resource Profile: WHO SMART Guidelines Location 

| | |
| :--- | :--- |
| *Official URL*:http://smart.who.int/base-clinical/StructureDefinition/sg-location | *Version*:2.0.0 |
| Draft as of 2026-09-01 | *Computable Name*:SGLocation |

 
The WHO SMART Guidelines Location profile defines conformance requirements and exchange expectations for Location resources in WHO Smart Guidelines content. 

**Usages:**

* Refer to this Profile: [WHO SMART Guidelines Encounter](StructureDefinition-sg-encounter.md), [WHO SMART Guidelines Immunization](StructureDefinition-sg-immunization.md), [WHO SMART Guidelines Location](StructureDefinition-sg-location.md), [WHO SMART Guidelines PractitionerRole](StructureDefinition-sg-practitionerrole.md) and [WHO SMART Guidelines Procedure](StructureDefinition-sg-procedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/smart.who.int.base-clinical|current/StructureDefinition/StructureDefinition-sg-location.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-sg-location.csv), [Excel](StructureDefinition-sg-location.xlsx), [Schematron](StructureDefinition-sg-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "sg-location",
  "url" : "http://smart.who.int/base-clinical/StructureDefinition/sg-location",
  "version" : "2.0.0",
  "name" : "SGLocation",
  "title" : "WHO SMART Guidelines Location",
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
  "description" : "The WHO SMART Guidelines Location profile defines conformance requirements and exchange expectations for Location resources in WHO Smart Guidelines content.",
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
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location",
      "mustSupport" : true
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Location.identifier.use",
      "path" : "Location.identifier.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.identifier.system",
      "path" : "Location.identifier.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.identifier.value",
      "path" : "Location.identifier.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.type",
      "path" : "Location.type",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "description" : "A role of a place that further classifies the setting (e.g., accident site, road side, work site, community location) in which services are delivered.",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"
      }
    },
    {
      "id" : "Location.telecom",
      "path" : "Location.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Location.telecom.extension:telecom-preferred",
      "path" : "Location.telecom.extension",
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
      "id" : "Location.telecom.system",
      "path" : "Location.telecom.system",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.telecom.value",
      "path" : "Location.telecom.value",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.telecom.use",
      "path" : "Location.telecom.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "mustSupport" : true
    },
    {
      "id" : "Location.address.extension:address-preferred",
      "path" : "Location.address.extension",
      "sliceName" : "address-preferred",
      "comment" : "Make general extension.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-preferred"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.address.use",
      "path" : "Location.address.use",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.address.text",
      "path" : "Location.address.text",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Location.partOf",
      "path" : "Location.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://smart.who.int/base-clinical/StructureDefinition/sg-location"]
      }],
      "mustSupport" : true
    }]
  }
}

```
