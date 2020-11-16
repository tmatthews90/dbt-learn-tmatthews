with

orders as (
    select * from {{ source('ticket_tailor', 'orders') }}
)

select * from orders
