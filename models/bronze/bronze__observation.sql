with source as (
  select * from {{ source('raw', 'observation') }}
),

renamed as (
  select
    {{ adapter.quote("observation_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("observation_concept_id") }},
    {{ adapter.quote("observation_date") }},
    {{ adapter.quote("observation_datetime") }},
    {{ adapter.quote("observation_type_concept_id") }},
    {{ adapter.quote("value_as_number") }},
    {{ adapter.quote("value_as_string") }},
    {{ adapter.quote("value_as_concept_id") }},
    {{ adapter.quote("qualifier_concept_id") }},
    {{ adapter.quote("unit_concept_id") }},
    {{ adapter.quote("provider_id") }},
    {{ adapter.quote("visit_occurrence_id") }},
    {{ adapter.quote("visit_detail_id") }},
    {{ adapter.quote("observation_source_value") }},
    {{ adapter.quote("observation_source_concept_id") }},
    {{ adapter.quote("unit_source_value") }},
    {{ adapter.quote("qualifier_source_value") }},
    {{ adapter.quote("value_source_value") }},
    {{ adapter.quote("observation_event_id") }},
    {{ adapter.quote("obs_event_field_concept_id") }},
    {{ adapter.quote("unique_key") }},
    {{ adapter.quote("datasource") }},
    {{ adapter.quote("updated_at") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
