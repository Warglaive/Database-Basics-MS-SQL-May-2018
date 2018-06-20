--USE Bank
CREATE PROC usp_WithdrawMoney(@AccountId INT, @MoneyAmount DECIMAL(15, 4))
AS
BEGIN
	UPDATE Accounts
	SET Balance -= @MoneyAmount
	WHERE id = @AccountId
END

--EXEC usp_WithdrawMoney 1, 10