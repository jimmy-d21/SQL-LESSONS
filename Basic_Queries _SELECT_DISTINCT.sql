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