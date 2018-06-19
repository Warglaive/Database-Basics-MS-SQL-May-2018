CREATE FUNCTION ufn_CalculateFutureValue(@sum DECIMAL(15, 4), @YearlyInterestRate FLOAT, @NumberOfYears INT)
RETURNS DECIMAL(15, 4)
AS
BEGIN
	DECLARE @result DECIMAL(15, 3);
		SET @result = @sum * (POWER(1 + @YearlyInterestRate, @NumberOfYears))

	RETURN @result;
END
GO
SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5)