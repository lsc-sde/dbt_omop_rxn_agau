with source as (
  select * from {{ source('raw', 'fact_relationship') }}
),

renamed as (
  select
    {{ adapter.quote("domain_concept_id_1") }},
    {{ adapter.quote("fact_id_1") }},
    {{ adapter.quote("domain_concept_id_2") }},
    {{ adapter.quote("fact_id_2") }},
    {{ adapter.quote("relationship_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
