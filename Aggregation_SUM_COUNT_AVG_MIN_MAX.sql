-- Example 1 – COUNT total employees
SELECT COUNT(*) AS TotalEmployees FROM Employees;

-- Example 2 – COUNT with condition
SELECT COUNT(*) AS ITEmployees FROM Employees WHERE Department = 'IT';