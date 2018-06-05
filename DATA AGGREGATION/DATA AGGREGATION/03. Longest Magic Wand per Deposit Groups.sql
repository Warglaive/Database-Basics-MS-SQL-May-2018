SELECT DepositGroup, MAX(MagicWandSize) AS [LongestMagicWand] 
From WizzardDeposits
GROUP BY DepositGroup