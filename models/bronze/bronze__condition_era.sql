with source as (
  select * from {{ source('raw', 'condition_era') }}
),

renamed as (
  select
    {{ adapter.quote("condition_era_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("condition_concept_id") }},
    {{ adapter.quote("condition_era_start_date") }},
    {{ adapter.quote("condition_era_end_date") }},
    {{ adapter.quote("condition_occurrence_count") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
