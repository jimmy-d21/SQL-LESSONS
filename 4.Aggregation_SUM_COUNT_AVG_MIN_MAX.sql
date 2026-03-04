Sample Table: Employees
| EmployeeID | FirstName | LastName | Department | Salary |
| ---------- | --------- | -------- | ---------- | ------ |
| 1          | John      | Doe      | HR         | 5000   |
| 2          | Jane      | Smith    | IT         | 6000   |
| 3          | Alice     | Brown    | IT         | 7000   |
| 4          | Bob       | Johnson  | HR         | 5000   |
| 5          | Eve       | Davis    | Finance    | 8000   |


-- Example 1 – COUNT total employees
SELECT COUNT(*) AS TotalEmployees FROM Employees;
| TotalEmployees |
| -------------- |
| 5              |


-- Example 2 – COUNT with condition
SELECT COUNT(*) AS ITEmployees FROM Employees WHERE Department = 'IT';
| ITEmployees |
| ----------- |
| 2           |


-- Example 3 – SUM of all salaries
SELECT SUM(Salary) AS TotalSalary FROM Employees;
| TotalSalary |
| ----------- |
| 31000       |


-- Example 4 – AVG salary
SELECT AVG(Salary) AS AvgSalary FROM Employees;
| AvgSalary |
| --------- |
| 6200      |


-- Example 5 – MIN salary
SELECT MIN(Salary) AS MinSalary FROM Employees;

-- Example 6 – MAX salary
SELECT MAX(Salary) AS MaxSalary FROM Employees;

-- Example 7 – SUM by department
SELECT Department, SUM(Salary) AS DeptSalary FROM Employees GROUP BY Department;

-- Example 8 – AVG by department
SELECT Department, AVG(Salary) AS AvgDeptSalary FROM Employees GROUP BY Department;


-- Example 9 – COUNT distinct salaries
SELECT COUNT(DISTINCT Salary) AS UniqueSalaries FROM Employees;

-- Example 10 – Aggregation with HAVING
SELECT Department, AVG(Salary) AS AvgDeptSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 6000;