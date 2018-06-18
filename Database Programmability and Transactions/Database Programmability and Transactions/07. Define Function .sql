CREATE FUNCTION ufn_IsWordComprised(@setOfLetters NVARCHAR(MAX), @word NVARCHAR(MAX))
RETURNS BIT
BEGIN
	DECLARE @index INT = 1;
	DECLARE @currentChar CHAR(1)
	DECLARE @isComprised INT

	WHILE(@index <= LEN(@word))
	BEGIN
		SET @currentChar = SUBSTRING(@word, @index, 1)
		SET @isComprised = CHARINDEX(@currentChar, @setOfLetters)

		IF(@isComprised = 0)
		BEGIN
			RETURN 0;
		END
		ELSE
			
		SET @index += 1;
	END
	RETURN 1;
END
GO
SELECT [dbo].ufn_IsWordComprised('oistmiahf','sofia')
--DROP FUNCTION ufn_IsWordComprised