SELECT mc.CountryCode, 
COUNT(mc.MountainId) AS [MountainRanges]
FROM MountainsCountries AS mc
JOIN Mountains AS m
ON mc.MountainId = m.Id
WHERE mc.CountryCode IN ('US', 'RU', 'BG')
GROUP BY mc.CountryCode