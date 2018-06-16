--USE SoftUni
CREATE OR ALTER FUNCTION ufn_GetSalaryLevel(@salary DECIMAL(18,4))
RETURNS VARCHAR(10)
AS
BEGIN	
	DECLARE @result VARCHAR(10);
	IF(@salary < 30000)
		BEGIN
			SET	@result = 'Low';
		END
	ELSE IF(@salary >= 30000 AND @salary <= 50000)
		BEGIN
			SET @result = 'Average'
		END
	ELSE
		BEGIN
			SET @result = 'High'
		END
 	RETURN @result;
END
--GO
 
--SELECT Salary, dbo.ufn_GetSalaryLevel(Salary) AS [Salary Level] FROM Employees
