--Shortest Solution
SELECT TOP (5) WITH TIES c.CountryName, ISNULL(p.PeakName, '(no highest peak)')
 AS 'HighestPeakName', ISNULL(MAX(p.Elevation), 0) 
 AS 'HighestPeakElevation', ISNULL(m.MountainRange, '(no mountain)')
	FROM Countries AS c
LEFT JOIN MountainsCountries AS mc
	ON c.CountryCode = mc.CountryCode
LEFT JOIN Mountains AS m
	ON mc.MountainId = m.Id
LEFT JOIN Peaks AS p
	ON m.Id= p.MountainId
GROUP BY c.CountryName, p.PeakName, m.MountainRange
ORDER BY c.CountryName, p.PeakName
--Another solution--
WITH CTE_CountriesInfo(CountryName, PeakName, Elevation, Mountain) AS (
SELECT c.CountryName, p.PeakName, MAX(p.Elevation), m.MountainRange
	FROM Countries AS c
	LEFT JOIN MountainsCountries AS mc ON mc.CountryCode = c.CountryCode
	LEFT JOIN Mountains AS m ON m.Id = mc.MountainId
	LEFT JOIN Peaks AS p ON p.MountainId = m.Id
GROUP BY c.CountryName, p.PeakName, m.MountainRange)

SELECT TOP(5) 
e.CountryName AS [Country], 
ISNULL(cci.PeakName, '(no highest peak)') AS [Highest Peak Name], 
ISNULL(cci.Elevation, 0) AS [Highest Peak Elevation], 
ISNULL(cci.Mountain, '(no mountain)') AS [Mountain] 
	FROM (
SELECT CountryName, MAX(Elevation) AS [MaxElevation] 
	FROM CTE_CountriesInfo
GROUP BY CountryName) AS e
LEFT JOIN CTE_CountriesInfo AS cci
	ON cci.CountryName = e.CountryName AND cci.Elevation = e.MaxElevation
ORDER BY e.CountryName, cci.PeakName
