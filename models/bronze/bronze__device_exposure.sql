with source as (
  select * from {{ source('raw', 'device_exposure') }}
),

renamed as (
  select
    {{ adapter.quote("device_exposure_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("device_concept_id") }},
    {{ adapter.quote("device_exposure_start_date") }},
    {{ adapter.quote("device_exposure_start_datetime") }},
    {{ adapter.quote("device_exposure_end_date") }},
    {{ adapter.quote("device_exposure_end_datetime") }},
    {{ adapter.quote("device_type_concept_id") }},
    {{ adapter.quote("unique_device_id") }},
    {{ adapter.quote("production_id") }},
    {{ adapter.quote("quantity") }},
    {{ adapter.quote("provider_id") }},
    {{ adapter.quote("visit_occurrence_id") }},
    {{ adapter.quote("visit_detail_id") }},
    {{ adapter.quote("device_source_value") }},
    {{ adapter.quote("device_source_concept_id") }},
    {{ adapter.quote("unit_concept_id") }},
    {{ adapter.quote("unit_source_value") }},
    {{ adapter.quote("unit_source_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
