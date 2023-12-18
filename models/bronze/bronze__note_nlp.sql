with source as (
  select * from {{ source('raw', 'note_nlp') }}
),

renamed as (
  select
    {{ adapter.quote("note_nlp_id") }},
    {{ adapter.quote("note_id") }},
    {{ adapter.quote("section_concept_id") }},
    {{ adapter.quote("snippet") }},
    {{ adapter.quote("offset") }},
    {{ adapter.quote("lexical_variant") }},
    {{ adapter.quote("note_nlp_concept_id") }},
    {{ adapter.quote("note_nlp_source_concept_id") }},
    {{ adapter.quote("nlp_system") }},
    {{ adapter.quote("nlp_date") }},
    {{ adapter.quote("nlp_datetime") }},
    {{ adapter.quote("term_exists") }},
    {{ adapter.quote("term_temporal") }},
    {{ adapter.quote("term_modifiers") }},
    {{ adapter.quote("Version") }},
    {{ adapter.quote("Year") }},
    {{ adapter.quote("Month") }},
    {{ adapter.quote("Day") }},
    {{ adapter.quote("ProcessInstanceId") }}

  from source
)

select * from renamed
