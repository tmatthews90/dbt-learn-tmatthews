with

events as (select * from {{ ref('stg_ticket_tailor__events') }}),
orders as (select * from {{ ref('stg_ticket_tailor__orders') }}),
tickets as (select * from {{ ref('stg_ticket_tailor__issued_tickets') }}),

final as (
    select
    events.NAME
    from events
    group by 1
)

select * from final