-- Xom Data · Đơn hàng để đời của mỗi khách
-- Problem: https://xomdata.com/practice/medium-monetary-004
-- Solved: 2026-08-25

select
    customer_id,
    order_id,
    order_date,
    amount
from (
    select
        customer_id,
        order_id,
        order_date,
        amount,
        row_number() over (
            partition by customer_id
            order by amount desc, order_date, order_id
        ) as rn
    from orders
) t
where rn = 1
order by customer_id
