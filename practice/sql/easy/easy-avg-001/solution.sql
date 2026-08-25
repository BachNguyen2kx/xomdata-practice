-- Xom Data · Company-wide average salary
-- Problem: https://xomdata.com/practice/easy-avg-001
-- Solved: 2026-08-25

SELECT
    AVG(salaries) as avg_salary
From 
    employees
