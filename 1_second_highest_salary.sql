

-- Find the second highest salary from the Employee table.
-- Logical Steps:
/*
    1) Create a query to get the salary of the highest earner. (SLECT MAX(salary) FROM Employee)
    2) Use that query as a subquery in the WHERE clause to filter out the highest salary from the Employee table.
    3) Use the MAX() function again to get the highest salary from the filtered results, which will be the second highest salary overall.
    4) Alias the result as SecondHighestSalary.
    5) If there is no second highest salary, the query will return NULL by default. 


*/

-- Symantax Steps:
/*
0. FROM the Employee table, 
1. Create a subquery in the WHERE clause to get the maximum salary.
2. In the main query, use the MAX() function to get the highest salary that is less than the maximum salary obtained from the subquery.
3. Alias the result as SecondHighestSalary.
4. If there is no second highest salary, the query will return NULL by default. 

*/ 

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);






-- AOB
-- Using CoPilot autocomplete feature
SELECT 
    (SELECT DISTINCT Salary 
     FROM Employee 
     ORDER BY Salary DESC 
     LIMIT 1 OFFSET 1) AS SecondHighestSalary;  



-- Alternative solution using DENSE_RANK()
SELECT 
    CASE 
        WHEN COUNT(DISTINCT Salary) < 2 THEN NULL 
        ELSE MAX(Salary) 
    END AS SecondHighestSalary
FROM (
    SELECT Salary, DENSE_RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
    FROM Employee
) AS RankedSalaries
WHERE SalaryRank = 2;


-- If  there is no second highest salary,return null.   



