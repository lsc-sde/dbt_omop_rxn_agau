with source as (
  select * from {{ source('raw', 'measurement') }}
),

renamed as (
  select
    {{ adapter.quote("measurement_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("measurement_concept_id") }},
    {{ adapter.quote("measurement_date") }},
    {{ adapter.quote("measurement_datetime") }},
    {{ adapter.quote("measurement_time") }},
    {{ adapter.quote("measurement_type_concept_id") }},
    {{ adapter.quote("operator_concept_id") }},
    {{ adapter.quote("value_as_number") }},
    {{ adapter.quote("value_as_concept_id") }},
    {{ adapter.quote("unit_concept_id") }},
    {{ adapter.quote("range_low") }},
    {{ adapter.quote("range_high") }},
    {{ adapter.quote("provider_id") }},
    {{ adapter.quote("visit_occurrence_id") }},
    {{ adapter.quote("visit_detail_id") }},
    {{ adapter.quote("measurement_source_value") }},
    {{ adapter.quote("measurement_source_concept_id") }},
    {{ adapter.quote("unit_source_value") }},
    {{ adapter.quote("unit_source_concept_id") }},
    {{ adapter.quote("value_source_value") }},
    {{ adapter.quote("meas_event_field_concept_id") }},
    {{ adapter.quote("measurement_event_id") }},
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
