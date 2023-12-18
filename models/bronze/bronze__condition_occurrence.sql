with source as (
  select * from {{ source('raw', 'condition_occurrence') }}
),

renamed as (
  select
    {{ adapter.quote("condition_occurrence_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("condition_concept_id") }},
    {{ adapter.quote("condition_start_date") }},
    {{ adapter.quote("condition_start_datetime") }},
    {{ adapter.quote("condition_end_date") }},
    {{ adapter.quote("condition_end_datetime") }},
    {{ adapter.quote("condition_type_concept_id") }},
    {{ adapter.quote("condition_status_concept_id") }},
    {{ adapter.quote("stop_reason") }},
    {{ adapter.quote("provider_id") }},
    {{ adapter.quote("visit_occurrence_id") }},
    {{ adapter.quote("visit_detail_id") }},
    {{ adapter.quote("condition_source_value") }},
    {{ adapter.quote("condition_source_concept_id") }},
    {{ adapter.quote("condition_status_source_value") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
