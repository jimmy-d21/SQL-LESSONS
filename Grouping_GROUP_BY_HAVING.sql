-- Example 1 – GROUP BY department
SELECT Department, COUNT(*) AS NumEmployees FROM Employees GROUP BY Department;