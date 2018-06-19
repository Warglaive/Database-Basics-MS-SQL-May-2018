CREATE PROC usp_CalculateFutureValueForAccount(@AccId INT, @rate FLOAT)
AS 
BEGIN
	SELECT a.Id AS [Account Id], ah.FirstName, ah.LastName, a.Balance AS [Current Balance], 
	dbo.ufn_CalculateFutureValue(a.Balance, @rate, 5) AS [Balance in 5 years]
		FROM AccountHolders AS ah
	JOIN Accounts AS a
	ON a.AccountHolderId = ah.Id
	WHERE a.id = @AccId;
END
-- SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5) AS [Balance in 5 years]
EXEC usp_CalculateFutureValueForAccount 1, 5
--DROP PROC usp_CalculateFutureValueForAccount