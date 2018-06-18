CREATE OR ALTER PROC usp_GetTownsStartingWith(@input NVARCHAR(50))
AS
	SELECT [Name] FROM Towns
	WHERE SUBSTRING([Name], 1, LEN(@input)) = @input
EXEC usp_GetTownsStartingWith b