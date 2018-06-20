--USE Diablo
CREATE FUNCTION ufn_CashInUsersGames(@gameName NVARCHAR(MAX))
RETURNS TABLE
AS
RETURN(
SELECT SUM(e.Cash) AS [SumCash] 
	FROM (
		SELECT ug.Cash, ROW_NUMBER() OVER(ORDER BY ug.Cash DESC) AS [row] 
			FROM Games AS g
			JOIN UsersGames AS ug
			ON ug.GameId = g.Id
			WHERE g.[Name] = @gameName) AS e
			WHERE e.row % 2 = 1
)
--DROP FUNCTION ufn_CashInUsersGames
--SELECT * FROM [dbo].ufn_CashInUsersGames('Love in a mist')