with source as (
  select * from {{ source('raw', 'vocabulary') }}
),

renamed as (
  select
    {{ adapter.quote("vocabulary_id") }},
    {{ adapter.quote("vocabulary_name") }},
    {{ adapter.quote("vocabulary_reference") }},
    {{ adapter.quote("vocabulary_version") }},
    {{ adapter.quote("vocabulary_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
