with

tickets as (
    select * from {{ source('ticket_tailor', 'issued_tickets') }}
)

select * from tickets
