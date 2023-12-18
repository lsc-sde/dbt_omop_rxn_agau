with source as (
  select * from {{ source('raw', 'cohort') }}
),

renamed as (
  select
    {{ adapter.quote("cohort_definition_id") }},
    {{ adapter.quote("subject_id") }},
    {{ adapter.quote("cohort_start_date") }},
    {{ adapter.quote("cohort_end_date") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
