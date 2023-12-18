with source as (
  select * from {{ source('raw', 'location') }}
),

renamed as (
  select
    {{ adapter.quote("location_id") }},
    {{ adapter.quote("address_1") }},
    {{ adapter.quote("address_2") }},
    {{ adapter.quote("city") }},
    {{ adapter.quote("state") }},
    {{ adapter.quote("zip") }},
    {{ adapter.quote("county") }},
    {{ adapter.quote("location_source_value") }},
    {{ adapter.quote("country_concept_id") }},
    {{ adapter.quote("country_source_value") }},
    {{ adapter.quote("latitude") }},
    {{ adapter.quote("longitude") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
