SELECT TOP(5) c.CountryName, r.RiverName FROM Countries AS c
FULL JOIN CountriesRivers AS cr
ON cr.CountryCode = c.CountryCode
FULL JOIN Rivers AS r
ON cr.RiverId = r.Id
WHERE c.ContinentCode = 'AF'
ORDER BY c.CountryName