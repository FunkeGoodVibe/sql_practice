



--  Count employees in each department having more than 5 employees.
SELECT department_id, COUNT(*)
FROM employees
GROUP BY department
HAVING COUNT(*) > 5 