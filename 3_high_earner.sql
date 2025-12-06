

-- return the names and salaries of employees who earn more than their managers

SELECT e.name AS EmployeeName, m.name AS ManagerName, e.salary AS EmployeeSalary, m.salary AS ManagerSalary
FROM employee e
JOIN employee m ON e.manager_id = m.id -- Assuming there is a manager_id column in the Employee table, join the employees manager id with the id of the manager
WHERE e.salary > m.salary; -- Filter the results to include only those employees whose salary is greater than their manager's salary
