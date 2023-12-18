with source as (
  select * from {{ source('raw', 'cdm_source') }}
),

renamed as (
  select
    {{ adapter.quote("cdm_source_name") }},
    {{ adapter.quote("cdm_source_abbreviation") }},
    {{ adapter.quote("cdm_holder") }},
    {{ adapter.quote("source_description") }},
    {{ adapter.quote("source_documentation_reference") }},
    {{ adapter.quote("cdm_etl_reference") }},
    {{ adapter.quote("source_release_date") }},
    {{ adapter.quote("cdm_release_date") }},
    {{ adapter.quote("cdm_version") }},
    {{ adapter.quote("cdm_version_concept_id") }},
    {{ adapter.quote("vocabulary_version") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
