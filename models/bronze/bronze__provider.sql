with source as (
  select * from {{ source('raw', 'provider') }}
),

renamed as (
  select
    {{ adapter.quote("provider_id") }},
    {{ adapter.quote("provider_name") }},
    {{ adapter.quote("npi") }},
    {{ adapter.quote("dea") }},
    {{ adapter.quote("specialty_concept_id") }},
    {{ adapter.quote("care_site_id") }},
    {{ adapter.quote("year_of_birth") }},
    {{ adapter.quote("gender_concept_id") }},
    {{ adapter.quote("provider_source_value") }},
    {{ adapter.quote("specialty_source_value") }},
    {{ adapter.quote("specialty_source_concept_id") }},
    {{ adapter.quote("gender_source_value") }},
    {{ adapter.quote("gender_source_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
