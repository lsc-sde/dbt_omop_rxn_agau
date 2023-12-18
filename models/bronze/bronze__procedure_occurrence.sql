with source as (
  select * from {{ source('raw', 'procedure_occurrence') }}
),

renamed as (
  select
    {{ adapter.quote("procedure_occurrence_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("procedure_concept_id") }},
    {{ adapter.quote("procedure_date") }},
    {{ adapter.quote("procedure_datetime") }},
    {{ adapter.quote("procedure_end_date") }},
    {{ adapter.quote("procedure_end_datetime") }},
    {{ adapter.quote("procedure_type_concept_id") }},
    {{ adapter.quote("modifier_concept_id") }},
    {{ adapter.quote("quantity") }},
    {{ adapter.quote("provider_id") }},
    {{ adapter.quote("visit_occurrence_id") }},
    {{ adapter.quote("visit_detail_id") }},
    {{ adapter.quote("procedure_source_value") }},
    {{ adapter.quote("procedure_source_concept_id") }},
    {{ adapter.quote("modifier_source_value") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
