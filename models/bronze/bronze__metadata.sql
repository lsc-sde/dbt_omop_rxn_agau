with source as (
  select * from {{ source('raw', 'metadata') }}
),

renamed as (
  select
    {{ adapter.quote("metadata_id") }},
    {{ adapter.quote("metadata_concept_id") }},
    {{ adapter.quote("metadata_type_concept_id") }},
    {{ adapter.quote("name") }},
    {{ adapter.quote("value_as_string") }},
    {{ adapter.quote("value_as_concept_id") }},
    {{ adapter.quote("value_as_number") }},
    {{ adapter.quote("metadata_date") }},
    {{ adapter.quote("metadata_datetime") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
