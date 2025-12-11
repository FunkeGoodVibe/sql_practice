

SELECT * 
FROM employees
WHERE join_date >= CURRENT_DATE - INTERVAL '6 months'