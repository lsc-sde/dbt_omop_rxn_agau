with source as (
  select * from {{ source('raw', 'cohort_definition') }}
),

renamed as (
  select
    {{ adapter.quote("cohort_definition_id") }},
    {{ adapter.quote("cohort_definition_name") }},
    {{ adapter.quote("cohort_definition_description") }},
    {{ adapter.quote("definition_type_concept_id") }},
    {{ adapter.quote("cohort_definition_syntax") }},
    {{ adapter.quote("subject_concept_id") }},
    {{ adapter.quote("cohort_initiation_date") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
