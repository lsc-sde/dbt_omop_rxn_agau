with source as (
  select * from {{ source('raw', 'death') }}
),

renamed as (
  select
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("death_date") }},
    {{ adapter.quote("death_datetime") }},
    {{ adapter.quote("death_type_concept_id") }},
    {{ adapter.quote("cause_concept_id") }},
    {{ adapter.quote("cause_source_value") }},
    {{ adapter.quote("cause_source_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
