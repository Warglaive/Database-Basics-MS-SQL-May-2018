CREATE TRIGGER tr_CloseDate_Report ON Reports AFTER UPDATE
AS
BEGIN
	DECLARE @oldValue DATETIME = (SELECT CloseDate FROM deleted)
	DECLARE @newValue DATETIME = (SELECT CloseDate FROM inserted)

	IF(@oldValue != @newValue)
	BEGIN
		UPDATE Reports
		SET StatusId = 3
	END
END