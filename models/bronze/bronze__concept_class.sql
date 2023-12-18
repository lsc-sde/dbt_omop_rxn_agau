with source as (
  select * from {{ source('raw', 'concept_class') }}
),

renamed as (
  select
    {{ adapter.quote("concept_class_id") }},
    {{ adapter.quote("concept_class_name") }},
    {{ adapter.quote("concept_class_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
