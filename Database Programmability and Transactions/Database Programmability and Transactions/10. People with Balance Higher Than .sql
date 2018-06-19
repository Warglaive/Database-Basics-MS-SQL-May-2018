--USE Bank
CREATE PROC usp_GetHoldersWithBalanceHigherThan(@number DECIMAL(15, 2))
AS
BEGIN
	SELECT ah.FirstName, ah.LastName FROM AccountHolders AS ah
	JOIN Accounts AS acc
	ON acc.AccountHolderId = ah.Id
	GROUP BY ah.FirstName, ah.LastName
	HAVING SUM(acc.Balance) > @number;
END

EXEC usp_GetHoldersWithBalanceHigherThan 1
--DROP PROC usp_GetHoldersWithBalanceHigherThan