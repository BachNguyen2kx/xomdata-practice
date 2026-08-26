-- Xom Data · Employees by salary, descending
-- Problem: https://xomdata.com/practice/easy-where-008
-- Solved: 2026-08-26

SELECT full_name, salaries
from employees
WHERE salaries>20000000
ORDER BY salaries DESC, full_name asc
