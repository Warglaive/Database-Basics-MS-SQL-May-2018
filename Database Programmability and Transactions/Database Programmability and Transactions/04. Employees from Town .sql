CREATE PROC usp_GetEmployeesFromTown(@townNameInput NVARCHAR(50))
AS
	SELECT FirstName, LastName FROM Employees AS e
	JOIN Addresses AS ad
	ON ad.AddressID = e.AddressID
	JOIN Towns AS t
	ON t.TownID = ad.TownID
	WHERE t.[Name] = @townNameInput
GO
EXEC usp_GetEmployeesFromTown Sofia