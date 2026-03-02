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
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 1          | John      | Doe      | HR         | 5000   |
| 2          | Jane      | Smith    | IT         | 6000   |
| 3          | Alice     | Brown    | IT         | 7000   |
| 4          | Bob       | Johnson  | HR         | 5000   |
| 5          | Eve       | Davis    | Finance    | 8000   |


-- Example 2 – Select specific columns
SELECT FirstName, LastName, Salary FROM Employees;
| FirstName | LastName | Salary |
| --------- | -------- | ------ |
| John      | Doe      | 5000   |
| Jane      | Smith    | 6000   |
| Alice     | Brown    | 7000   |
| Bob       | Johnson  | 5000   |
| Eve       | Davis    | 8000   |


-- Example 3 – Select distinct departments
SELECT DISTINCT Department FROM Employees;
| Department |
| ---------- |
| HR         |
| IT         |
| Finance    |


-- Example 4 – Concatenate first and last names
SELECT FirstName || ' ' || LastName AS FullName FROM Employees;
| FullName    |
| ----------- |
| John Doe    |
| Jane Smith  |
| Alice Brown |
| Bob Johnson |
| Eve Davis   |


-- Example 5 – Select with alias
SELECT EmployeeID AS ID, Salary AS MonthlySalary FROM Employees;
| ID | MonthlySalary |
| -- | ------------- |
| 1  | 5000          |
| 2  | 6000          |
| 3  | 7000          |
| 4  | 5000          |
| 5  | 8000          |


-- Example 6 – Select top N rows (SQL Server)
SELECT TOP 3 * FROM Employees;
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 1          | John      | Doe      | HR         | 5000   |
| 2          | Jane      | Smith    | IT         | 6000   |
| 3          | Alice     | Brown    | IT         | 7000   |


-- Example 7 – Select with LIMIT (MySQL/PostgreSQL)
SELECT * FROM Employees LIMIT 2;

-- Example 8 – Using DISTINCT with multiple columns
SELECT DISTINCT Department, Salary FROM Employees;

-- Example 9 – Select with string functions
SELECT UPPER(FirstName) AS UpperName FROM Employees;

-- Example 10 – Select using arithmetic operation
SELECT FirstName, Salary, Salary * 12 AS AnnualSalary FROM Employees;