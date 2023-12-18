with source as (
  select * from {{ source('raw', 'dose_era') }}
),

renamed as (
  select
    {{ adapter.quote("dose_era_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("drug_concept_id") }},
    {{ adapter.quote("unit_concept_id") }},
    {{ adapter.quote("dose_value") }},
    {{ adapter.quote("dose_era_start_date") }},
    {{ adapter.quote("dose_era_end_date") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
