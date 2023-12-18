with source as (
  select * from {{ source('raw', 'domain') }}
),

renamed as (
  select
    {{ adapter.quote("domain_id") }},
    {{ adapter.quote("domain_name") }},
    {{ adapter.quote("domain_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
