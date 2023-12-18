with source as (
  select * from {{ source('raw', 'payer_plan_period') }}
),

renamed as (
  select
    {{ adapter.quote("payer_plan_period_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("payer_plan_period_start_date") }},
    {{ adapter.quote("payer_plan_period_end_date") }},
    {{ adapter.quote("payer_concept_id") }},
    {{ adapter.quote("payer_source_value") }},
    {{ adapter.quote("payer_source_concept_id") }},
    {{ adapter.quote("plan_concept_id") }},
    {{ adapter.quote("plan_source_value") }},
    {{ adapter.quote("plan_source_concept_id") }},
    {{ adapter.quote("sponsor_concept_id") }},
    {{ adapter.quote("sponsor_source_value") }},
    {{ adapter.quote("sponsor_source_concept_id") }},
    {{ adapter.quote("family_source_value") }},
    {{ adapter.quote("stop_reason_concept_id") }},
    {{ adapter.quote("stop_reason_source_value") }},
    {{ adapter.quote("stop_reason_source_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
