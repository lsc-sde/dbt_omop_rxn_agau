with source as (
  select * from {{ source('raw', 'concept_synonym') }}
),

renamed as (
  select
    {{ adapter.quote("concept_id") }},
    {{ adapter.quote("concept_synonym_name") }},
    {{ adapter.quote("language_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
