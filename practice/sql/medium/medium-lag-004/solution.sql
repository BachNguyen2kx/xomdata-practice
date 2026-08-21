-- Xom Data · Trend labels for the monthly report
-- Problem: https://xomdata.com/practice/medium-lag-004
-- Solved: 2026-08-21

-- Viết SQL của bạn ở đây
select m.month,
       m.revenue,
       case
           when p.revenue is null then 'First'
           when m.revenue > p.revenue then 'Up'
           when m.revenue < p.revenue then 'Down'
           else 'Flat'
       end as trend
from monthly_revenue m
left join monthly_revenue p
    on p.month = (
        select max(month)
        from monthly_revenue
        where month < m.month
    )
order by m.month;
