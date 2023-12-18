with source as (
  select * from {{ source('raw', 'care_site') }}
),

renamed as (
  select
    {{ adapter.quote("care_site_id") }},
    {{ adapter.quote("care_site_name") }},
    {{ adapter.quote("place_of_service_concept_id") }},
    {{ adapter.quote("location_id") }},
    {{ adapter.quote("care_site_source_value") }},
    {{ adapter.quote("place_of_service_source_value") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
