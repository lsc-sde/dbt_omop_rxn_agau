with source as (
  select * from {{ source('raw', 'concept_relationship') }}
),

renamed as (
  select
    {{ adapter.quote("concept_id_1") }},
    {{ adapter.quote("concept_id_2") }},
    {{ adapter.quote("relationship_id") }},
    {{ adapter.quote("valid_start_date") }},
    {{ adapter.quote("valid_end_date") }},
    {{ adapter.quote("invalid_reason") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
