-- Find duplicate records in the Employee table based on the 'name' column.

-- Logical Steps:
/*
    1) Select the 'name' column from the Employee table.
    2) Use the COUNT() function to count occurrences of each name.
    3) Group the results by the 'name' column to aggregate counts for each name.
    4) Use the HAVING clause to filter groups where the count is greater than 1, indicating duplicates.
    5) Alias the count as DuplicateCount for clarity.
*/              

SELECT name, COUNT(*) AS DuplicateCount
FROM Employee
GROUP BY name
HAVING COUNT(*) > 1;


