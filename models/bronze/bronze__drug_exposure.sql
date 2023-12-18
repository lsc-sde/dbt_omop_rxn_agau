with source as (
  select * from {{ source('raw', 'drug_exposure') }}
),

renamed as (
  select
    {{ adapter.quote("drug_exposure_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("drug_concept_id") }},
    {{ adapter.quote("drug_exposure_start_date") }},
    {{ adapter.quote("drug_exposure_start_datetime") }},
    {{ adapter.quote("drug_exposure_end_date") }},
    {{ adapter.quote("drug_exposure_end_datetime") }},
    {{ adapter.quote("verbatim_end_date") }},
    {{ adapter.quote("drug_type_concept_id") }},
    {{ adapter.quote("stop_reason") }},
    {{ adapter.quote("refills") }},
    {{ adapter.quote("quantity") }},
    {{ adapter.quote("days_supply") }},
    {{ adapter.quote("sig") }},
    {{ adapter.quote("route_concept_id") }},
    {{ adapter.quote("lot_number") }},
    {{ adapter.quote("provider_id") }},
    {{ adapter.quote("visit_occurrence_id") }},
    {{ adapter.quote("visit_detail_id") }},
    {{ adapter.quote("drug_source_value") }},
    {{ adapter.quote("drug_source_concept_id") }},
    {{ adapter.quote("route_source_value") }},
    {{ adapter.quote("dose_unit_source_value") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
