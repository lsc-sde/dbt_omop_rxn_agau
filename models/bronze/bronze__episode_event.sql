with source as (
  select * from {{ source('raw', 'episode_event') }}
),

renamed as (
  select
    {{ adapter.quote("episode_id") }},
    {{ adapter.quote("event_id") }},
    {{ adapter.quote("episode_event_field_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
