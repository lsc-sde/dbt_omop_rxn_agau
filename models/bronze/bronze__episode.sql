with source as (
  select * from {{ source('raw', 'episode') }}
),

renamed as (
  select
    {{ adapter.quote("episode_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("episode_concept_id") }},
    {{ adapter.quote("episode_start_date") }},
    {{ adapter.quote("episode_start_datetime") }},
    {{ adapter.quote("episode_end_date") }},
    {{ adapter.quote("episode_end_datetime") }},
    {{ adapter.quote("episode_parent_id") }},
    {{ adapter.quote("episode_number") }},
    {{ adapter.quote("episode_object_concept_id") }},
    {{ adapter.quote("episode_type_concept_id") }},
    {{ adapter.quote("episode_source_value") }},
    {{ adapter.quote("episode_source_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
