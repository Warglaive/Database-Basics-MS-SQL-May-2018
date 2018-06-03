USE Geography
SELECT CountryName AS [Country Name], IsoCode AS [Iso Code] 
FROM Countries
--full string letters minus replaced string letters(after replacement with '')
WHERE CountryName LIKE '%a%a%a%'
ORDER BY [Iso Code]