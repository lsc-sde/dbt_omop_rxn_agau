with source as (
  select * from {{ source('raw', 'cost') }}
),

renamed as (
  select
    {{ adapter.quote("cost_id") }},
    {{ adapter.quote("cost_event_id") }},
    {{ adapter.quote("cost_domain_id") }},
    {{ adapter.quote("cost_type_concept_id") }},
    {{ adapter.quote("currency_concept_id") }},
    {{ adapter.quote("total_charge") }},
    {{ adapter.quote("total_cost") }},
    {{ adapter.quote("total_paid") }},
    {{ adapter.quote("paid_by_payer") }},
    {{ adapter.quote("paid_by_patient") }},
    {{ adapter.quote("paid_patient_copay") }},
    {{ adapter.quote("paid_patient_coinsurance") }},
    {{ adapter.quote("paid_patient_deductible") }},
    {{ adapter.quote("paid_by_primary") }},
    {{ adapter.quote("paid_ingredient_cost") }},
    {{ adapter.quote("paid_dispensing_fee") }},
    {{ adapter.quote("payer_plan_period_id") }},
    {{ adapter.quote("amount_allowed") }},
    {{ adapter.quote("revenue_code_concept_id") }},
    {{ adapter.quote("revenue_code_source_value") }},
    {{ adapter.quote("drg_concept_id") }},
    {{ adapter.quote("drg_source_value") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
