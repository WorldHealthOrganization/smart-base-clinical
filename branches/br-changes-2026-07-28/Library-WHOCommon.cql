library WHOCommon version '2.0.0'

using FHIR version '4.0.1'

include hl7.fhir.uv.cql.FHIRHelpers version '4.0.1'
include hl7.fhir.uv.cql.FHIRCommon version '2.0.0' called FC

context Patient

define fluent function reportedLocation(measureReport MeasureReport):
  measureReport.ext('http://smart.who.int/base-clinical/StructureDefinition/sg-reportedLocation').value as Reference

define function Official(identifiers List<Identifier>):
  singleton from (identifiers I where I.use = 'official')

define fluent function official(identifiers List<Identifier>):
  singleton from (identifiers I where I.use = 'official')

define function Official(addresses List<Address>):
  singleton from (addresses A where A.use = 'official')

define fluent function official(addresses List<Address>):
  singleton from (addresses A where A.use = 'official')

define function Official(names List<HumanName>):
  singleton from (names N where N.use = 'official')

define fluent function official(names List<HumanName>):
  singleton from (names N where N.use = 'official')

define function Mobile(contactPoints List<ContactPoint>):
  singleton from (contactPoints P where P.use = 'mobile')

define fluent function mobile(contactPoints List<ContactPoint>):
  singleton from (contactPoints P where P.use = 'mobile')

/* NOTE: Should use .single() instead of Only() */
define function Only(allergies List<AllergyIntolerance>):
  singleton from allergies

define function Only(appointments List<Appointment>):
  singleton from appointments

define function Only(careplans List<CarePlan>):
  singleton from careplans

define function Only(conditions List<Condition>):
  singleton from conditions

define function Only(encounters List<Encounter>):
  singleton from encounters

define function Only(immunizations List<Immunization>):
  singleton from immunizations

define function Only(medicationrequests List<MedicationRequest>):
  singleton from medicationrequests

define function Only(observations List<Observation>):
  singleton from observations

define function Only(procedures List<Procedure>):
  singleton from procedures

define function Only(serviceRequests List<ServiceRequest>):
  singleton from serviceRequests

define function Only(dosages List<Dosage>):
  singleton from dosages

define function Only(doses List<FHIR.Dosage.DoseAndRate>):
  singleton from doses

define function Earliest(observations List<Observation>):
  First(
    observations O
      sort by start of effective.toInterval()
  )

define fluent function earliest(observations List<Observation>):
  First(
    observations O
      sort by start of effective.toInterval()
  )

define function Latest(observations List<Observation>):
  Last(
    observations O
      sort by start of effective.toInterval()
  )

define fluent function latest(observations List<Observation>):
  Last(
    observations O
      sort by start of effective.toInterval()
  )

define function MostRecent(observations List<Observation>):
  Last(
    observations O
      sort by start of effective.toInterval()
  )

define fluent function mostRecent(observations List<Observation>):
  Last(
    observations O
      sort by start of effective.toInterval()
  )

define function MostRecent(procedures List<Procedure>):
  Last(
    procedures P
      sort by start of performed.toInterval()
    )

define fluent function mostRecent(procedures List<Procedure>):
  Last(
    procedures P
      sort by start of performed.toInterval()
  )

define function Lowest(observations List<Observation>):
  First(
    observations O
      sort by (value as FHIR.Quantity)
  )

define fluent function lowest(observations List<Observation>):
  First(
    observations O
      sort by (value as FHIR.Quantity)
  )

define function Highest(observations List<Observation>):
  Last(
    observations O
      sort by (value as FHIR.Quantity)
  )

define fluent function highest(observations List<Observation>):
  Last(
    observations O
      sort by (value as FHIR.Quantity)
  )
