CREATE FUNCTION udf_GetReportsCount(@employeeId INT, @statusId INT)
RETURNS INT
AS
BEGIN
DECLARE @result INT = (SELECT COUNT(*)
	FROM Reports
WHERE EmployeeId = @employeeId AND StatusId = @statusId)
	RETURN @result;
END
GO
SELECT Id, FirstName, Lastname, dbo.udf_GetReportsCount(Id, 2) AS ReportsCount
FROM Employees
ORDER BY Id

--DROP FUNCTION dbo.udf_GetReportsCount