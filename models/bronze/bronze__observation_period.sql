with source as (
  select * from {{ source('raw', 'observation_period') }}
),

renamed as (
  select
    {{ adapter.quote("observation_period_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("observation_period_start_date") }},
    {{ adapter.quote("observation_period_end_date") }},
    {{ adapter.quote("period_type_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
