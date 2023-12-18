with source as (
  select * from {{ source('raw', 'drug_era') }}
),

renamed as (
  select
    {{ adapter.quote("drug_era_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("drug_concept_id") }},
    {{ adapter.quote("drug_era_start_date") }},
    {{ adapter.quote("drug_era_end_date") }},
    {{ adapter.quote("drug_exposure_count") }},
    {{ adapter.quote("gap_days") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
