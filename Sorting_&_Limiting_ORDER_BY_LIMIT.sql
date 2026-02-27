-- Example 1 – ORDER BY Salary ascending
SELECT * FROM Employees ORDER BY Salary ASC;

-- Example 2 – ORDER BY Salary descending
SELECT * FROM Employees ORDER BY Salary DESC;

-- Example 3 – ORDER BY multiple columns
SELECT * FROM Employees ORDER BY Department ASC, Salary DESC;

-- Example 4 – ORDER BY with alias
SELECT FirstName, Salary AS MonthlySalary FROM Employees ORDER BY MonthlySalary DESC;