-- Xom Data · Store list by city
-- Problem: https://xomdata.com/practice/easy-select-005
-- Solved: 2026-08-26

SELECT
    name,
    city
from stores
ORDER BY city asc, name ASC
