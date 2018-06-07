--USE Gringotts
SELECT SUM(Result.Diff) AS [SumDifference] FROM(
SELECT DepositAmount - (SELECT DepositAmount FROM WizzardDeposits
WHERE Id = Host.Id + 1) AS [Diff]
FROM WizzardDeposits AS [Host]) AS Result