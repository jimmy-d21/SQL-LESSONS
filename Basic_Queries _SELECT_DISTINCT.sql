Sample Table: Employees
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 1          | John      | Doe      | HR         | 5000   |
| 2          | Jane      | Smith    | IT         | 6000   |
| 3          | Alice     | Brown    | IT         | 7000   |
| 4          | Bob       | Johnson  | HR         | 5000   |
| 5          | Eve       | Davis    | Finance    | 8000   |


-- Example 1 – Select all columns
SELECT * FROM Employees;

-- Example 2 – Select specific columns
SELECT FirstName, LastName, Salary FROM Employees;

-- Example 3 – Select distinct departments
SELECT DISTINCT Department FROM Employees;

-- Example 4 – Concatenate first and last names
SELECT FirstName || ' ' || LastName AS FullName FROM Employees;

-- Example 5 – Select with alias
SELECT EmployeeID AS ID, Salary AS MonthlySalary FROM Employees;

-- Example 6 – Select top N rows (SQL Server)
SELECT TOP 3 * FROM Employees;

-- Example 7 – Select with LIMIT (MySQL/PostgreSQL)
SELECT * FROM Employees LIMIT 2;

-- Example 8 – Using DISTINCT with multiple columns
SELECT DISTINCT Department, Salary FROM Employees;

-- Example 9 – Select with string functions
SELECT UPPER(FirstName) AS UpperName FROM Employees;

-- Example 10 – Select using arithmetic operation
SELECT FirstName, Salary, Salary * 12 AS AnnualSalary FROM Employees;