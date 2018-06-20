--USE Bank
CREATE TABLE NotificationEmails(
Id INT IDENTITY NOT NULL,
Recipient INT,
[Subject] NVARCHAR(MAX),
Body NVARCHAR(MAX)
)
GO
CREATE TRIGGER tr_LogsInsert ON Logs AFTER INSERT 
AS
BEGIN
	DECLARE @recipient INT = (SELECT AccountId FROM inserted)
	DECLARE @subject NVARCHAR(MAX) = (SELECT CONCAT('Balance change for account: ', AccountId) FROM inserted)
	DECLARE @body NVARCHAR(MAX) = (SELECT CONCAT('On ',GETDATE(), 'your balance was changed from ', oldSum, 'to', newSum, '.') FROM inserted)

	INSERT INTO NotificationEmails
	VALUES
	(@recipient, @subject, @body)
END

GO
--UPDATE Accounts SET Balance += 1 WHERE Id = 11
--SELECT * FROM NotificationEmails