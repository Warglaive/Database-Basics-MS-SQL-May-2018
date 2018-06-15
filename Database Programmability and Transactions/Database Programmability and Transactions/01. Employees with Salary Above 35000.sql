--USE SoftUni
CREATE OR ALTER FUNCTION udf_ProjectWeeks(@StartDate DATETIME, @EndDate DATETIME)
RETURNS INT
AS
BEGIN
	DECLARE @ProjectWeeks INT;
	IF(@EndDate IS NULL)
	BEGIN
		SET @EndDate = GETDATE();
	END
	SET @ProjectWeeks = DATEDIFF(WEEK, @StartDate, @EndDate)
	RETURN @ProjectWeeks
END
GO
SELECT ProjectID, 
	StartDate, 
	EndDate, 
	dbo.udf_ProjectWeeks(StartDate, EndDate) AS [Project Weeks]
	FROM Projects