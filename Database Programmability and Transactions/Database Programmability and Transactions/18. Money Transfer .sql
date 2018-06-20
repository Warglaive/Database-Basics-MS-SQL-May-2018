--USE Bank
CREATE PROC usp_TransferMoney(@SenderId INT, @ReceiverId INT, @Amount DECIMAL(15, 4))
AS
BEGIN
	EXEC [dbo].usp_DepositMoney @ReceiverId, @Amount
	EXEC [dbo].usp_WithdrawMoney @SenderId, @Amount
END