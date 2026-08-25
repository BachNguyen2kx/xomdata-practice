-- Xom Data · Revenue from delivered orders
-- Problem: https://xomdata.com/practice/easy-sum-001
-- Solved: 2026-08-25

SELECT
    sum(total_amount) as total_revenue
FROM
    orders
WHERE 
    status = 'Delivered'
