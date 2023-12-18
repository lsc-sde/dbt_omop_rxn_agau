with source as (
  select * from {{ source('raw', 'specimen') }}
),

renamed as (
  select
    {{ adapter.quote("specimen_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("specimen_concept_id") }},
    {{ adapter.quote("specimen_type_concept_id") }},
    {{ adapter.quote("specimen_date") }},
    {{ adapter.quote("specimen_datetime") }},
    {{ adapter.quote("quantity") }},
    {{ adapter.quote("unit_concept_id") }},
    {{ adapter.quote("anatomic_site_concept_id") }},
    {{ adapter.quote("disease_status_concept_id") }},
    {{ adapter.quote("specimen_source_id") }},
    {{ adapter.quote("specimen_source_value") }},
    {{ adapter.quote("unit_source_value") }},
    {{ adapter.quote("anatomic_site_source_value") }},
    {{ adapter.quote("disease_status_source_value") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
