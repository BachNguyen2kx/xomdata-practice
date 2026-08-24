-- Xom Data · Bức ảnh tệp khách tại một thời điểm
-- Problem: https://xomdata.com/practice/medium-churn-006
-- Solved: 2026-08-24

select
    segment,
    count(*) as customer_count
from (
    select
        customer_id,
        case
            when first_order >= '2024-06-01'
                 and first_order <= '2024-06-30'
                then 'new'
            when last_order < date('2024-06-30', '-90 days')
                then 'churned'
            else 'active'
        end as segment
    from (
        select
            customer_id,
            min(order_date) as first_order,
            max(order_date) as last_order
        from orders
        where order_date <= '2024-06-30'
        group by customer_id
    ) customer_summary
) customer_segment
group by segment;
