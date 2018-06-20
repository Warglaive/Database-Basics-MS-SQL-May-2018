--USE Bank 
CREATE TABLE Logs(
LogId INT IDENTITY NOT NULL,
AccountId INT NOT NULL,
OldSum DECIMAL(15 ,2),
NewSum Decimal(15, 2)
)
GO
CREATE TRIGGER tr_AccountsUpdate ON Accounts AFTER UPDATE
AS
BEGIN
	DECLARE @accountId INT = (SELECT Id FROM inserted)
	DECLARE @oldBalance DECIMAL(15, 2) = (SELECT Balance FROM deleted)
	DECLARE @newBalance DECIMAL(15, 2) = (SELECT Balance FROM inserted)
	
	
	INSERT INTO Logs
		VALUES
		(@accountId, @oldBalance, @newBalance)
END
--UPDATE Accounts SET Balance+=1 WHERE Id=11
--SELECT * FROM logs