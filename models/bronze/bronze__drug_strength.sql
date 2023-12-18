with source as (
  select * from {{ source('raw', 'drug_strength') }}
),

renamed as (
  select
    {{ adapter.quote("drug_concept_id") }},
    {{ adapter.quote("ingredient_concept_id") }},
    {{ adapter.quote("amount_value") }},
    {{ adapter.quote("amount_unit_concept_id") }},
    {{ adapter.quote("numerator_value") }},
    {{ adapter.quote("numerator_unit_concept_id") }},
    {{ adapter.quote("denominator_value") }},
    {{ adapter.quote("denominator_unit_concept_id") }},
    {{ adapter.quote("box_size") }},
    {{ adapter.quote("valid_start_date") }},
    {{ adapter.quote("valid_end_date") }},
    {{ adapter.quote("invalid_reason") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
