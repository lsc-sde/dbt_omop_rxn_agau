with source as (
  select * from {{ source('raw', 'source_to_concept_map') }}
),

renamed as (
  select
    {{ adapter.quote("source_code") }},
    {{ adapter.quote("source_concept_id") }},
    {{ adapter.quote("source_vocabulary_id") }},
    {{ adapter.quote("source_code_description") }},
    {{ adapter.quote("target_concept_id") }},
    {{ adapter.quote("target_vocabulary_id") }},
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
