CREATE PROC usp_GetEmployeesSalaryAboveNumber(@input DECIMAL(18,4))
AS
	SELECT FirstName AS [First Name], LastName AS [Last Name] FROM Employees
	WHERE Salary >= @input

--EXEC usp_GetEmployeesSalaryAboveNumber 48100
--DROP PROC usp_GetEmployeesSalaryAboveNumber