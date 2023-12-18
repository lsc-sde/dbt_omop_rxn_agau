with source as (
  select * from {{ source('raw', 'note') }}
),

renamed as (
  select
    {{ adapter.quote("note_id") }},
    {{ adapter.quote("person_id") }},
    {{ adapter.quote("note_date") }},
    {{ adapter.quote("note_datetime") }},
    {{ adapter.quote("note_type_concept_id") }},
    {{ adapter.quote("note_class_concept_id") }},
    {{ adapter.quote("note_title") }},
    {{ adapter.quote("note_text") }},
    {{ adapter.quote("encoding_concept_id") }},
    {{ adapter.quote("language_concept_id") }},
    {{ adapter.quote("provider_id") }},
    {{ adapter.quote("visit_occurrence_id") }},
    {{ adapter.quote("visit_detail_id") }},
    {{ adapter.quote("note_source_value") }},
    {{ adapter.quote("note_event_id") }},
    {{ adapter.quote("note_event_field_concept_id") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
