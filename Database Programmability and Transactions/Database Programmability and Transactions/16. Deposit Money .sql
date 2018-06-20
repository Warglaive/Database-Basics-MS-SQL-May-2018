--USE Bank
CREATE PROC usp_DepositMoney(@AccountId INT, @MoneyAmount DECIMAL(15,4))
AS
BEGIN
	IF(@MoneyAmount > 0)
	BEGIN
		UPDATE Accounts
		SET Balance += @MoneyAmount
		WHERE Id = @AccountId
	END
END

EXEC usp_DepositMoney 1, 10