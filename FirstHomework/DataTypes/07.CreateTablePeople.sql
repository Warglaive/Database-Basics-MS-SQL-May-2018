USE Minions
CREATE TABLE People(
Id INT IDENTITY PRIMARY KEY,
[Name] NVARCHAR(50) NOT NULL,
Picture IMAGE,
Height DECIMAL(15, 2),
Gender varchar(10) NOT NULL CHECK (Gender IN('m', 'f')),
Birthday DATETIME NOT NULL,
Biography NVARCHAR(MAX)
)
