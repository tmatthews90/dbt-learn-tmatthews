with

events as (
    select * from {{ source('ticket_tailor', 'events') }}
)

select * from events
