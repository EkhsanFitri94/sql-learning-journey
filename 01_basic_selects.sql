-- My first SQL practice file
-- Goal: Learn the basic SELECT, FROM, WHERE, and LIMIT clauses.

-- Query to select all columns from the Employees table.
SELECT * 
FROM Employees;

-- Query to select only the first and last names of all employees.
SELECT FirstName, LastName
FROM Employees;

-- Query to filter for employees only in the 'Sales' department.
SELECT *
FROM Employees
WHERE Department = 'Sales';

-- Query to get a preview of the table by limiting the results to 3 rows.
SELECT *
FROM Employees
LIMIT 3;
