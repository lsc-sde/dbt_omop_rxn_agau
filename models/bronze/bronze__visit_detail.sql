with source as (
  select * from {{ source('raw', 'visit_detail') }}
),

renamed as (
  select
    {{ adapter.quote("visit_detail_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("visit_detail_concept_id") }},
    {{ adapter.quote("visit_detail_start_date") }},
    {{ adapter.quote("visit_detail_start_datetime") }},
    {{ adapter.quote("visit_detail_end_date") }},
    {{ adapter.quote("visit_detail_end_datetime") }},
    {{ adapter.quote("visit_detail_type_concept_id") }},
    {{ adapter.quote("provider_id") }},
    {{ adapter.quote("care_site_id") }},
    {{ adapter.quote("visit_detail_source_value") }},
    {{ adapter.quote("visit_detail_source_concept_id") }},
    {{ adapter.quote("admitted_from_concept_id") }},
    {{ adapter.quote("admitted_from_source_value") }},
    {{ adapter.quote("discharged_to_source_value") }},
    {{ adapter.quote("discharged_to_concept_id") }},
    {{ adapter.quote("preceding_visit_detail_id") }},
    {{ adapter.quote("parent_visit_detail_id") }},
    {{ adapter.quote("visit_occurrence_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
