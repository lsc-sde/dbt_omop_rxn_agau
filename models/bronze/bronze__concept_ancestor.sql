with source as (
  select * from {{ source('raw', 'concept_ancestor') }}
),

renamed as (
  select
    {{ adapter.quote("ancestor_concept_id") }},
    {{ adapter.quote("descendant_concept_id") }},
    {{ adapter.quote("min_levels_of_separation") }},
    {{ adapter.quote("max_levels_of_separation") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
