--CREATE DATABASE Movies
--USE Movies

CREATE TABLE Directors(
Id INT PRIMARY KEY NOT NULL,
DirectorName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Genres(
Id INT PRIMARY KEY NOT NULL,
GenreName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Categories(
Id INT PRIMARY KEY NOT NULL,
CategoryName NVARCHAR(50) NOT NULL,
Notes NVARCHAR(MAX)
)

CREATE TABLE Movies(
Id INT PRIMARY KEY NOT NULL,
Title VARCHAR(50) NOT NULL,
DirectorId INT NOT NULL,
CopyrightYear INT NOT NULL,
[Length] INT,
GenreId INT NOT NULL,
CategoryId INT NOT NULL,
Rating DECIMAL(15, 2),
Notes NVARCHAR(MAX)
)

INSERT INTO Directors(Id, DirectorName, Notes)
VALUES
(1, 'Steve', NULL),
(2, 'veli', 'mn dobur film'),
(3, 'gergi', 'staa'),
(4, 'asen', 'zle'),
(5, 'mitko', 'test')

INSERT INTO Genres(Id, GenreName, Notes)
VALUES
(1, 'admin', 'da'),
(2, 'bb', NULL),
(3, 'lllll', 'asdasd'),
(4, 'ppppp', '3322'),
(5, 'yyyyy', 'loren')

INSERT INTO Categories(Id, CategoryName, Notes)
VALUES
(1, 'adminX', '-----'),
(2, 'zz', NULL),
(3, 'll11232133lll', NULL),
(4, 'pp88888', '000'),
(5, 'yyyy/*y', '0.....0')

INSERT INTO Movies(Id, Title, DirectorId, CopyrightYear, [Length], GenreId, CategoryId, Rating, Notes)
VALUES
(1, 'malkata rosalka', 99, 2000, 18, 5, 33, 1.33, 'stava za samoubiici'),
(2, 'maalll ', 6, 2015, 6, 7, 33, 2.33, 'stava za samoubiici'),
(3, 'malajjjjj roka', 2, 2010, 52, 1, 33, 3.33, 'stava za samoubiici'),
(4, 'malaggggg rka', 1, 2011, 50, 9, 33, 4.33, 'stava za samoubiici'),
(5, 'malaxxxlka', 33, 2008, 8, 56, 33, 5.33, 'stava za samoubiici')