with source as (
  select * from {{ source('raw', 'relationship') }}
),

renamed as (
  select
    {{ adapter.quote("relationship_id") }},
    {{ adapter.quote("relationship_name") }},
    {{ adapter.quote("is_hierarchical") }},
    {{ adapter.quote("defines_ancestry") }},
    {{ adapter.quote("reverse_relationship_id") }},
    {{ adapter.quote("relationship_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
