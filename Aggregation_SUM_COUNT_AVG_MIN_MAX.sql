-- Example 1 – COUNT total employees
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- Example 2 – COUNT with condition
SELECT COUNT(*) AS ITEmployees FROM Employees WHERE Department = 'IT';

-- Example 3 – SUM of all salaries
SELECT SUM(Salary) AS TotalSalary FROM Employees;