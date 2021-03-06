USE Minions
CREATE TABLE People(
Id INT IDENTITY UNIQUE,
[Name] NVARCHAR(200) NOT NULL,
Picture IMAGE,
Height DECIMAL(15, 2),
[Weight] DECIMAL(15, 2),
Gender CHAR(1) NOT NULL,
Birthday DATETIME NOT NULL,
Biography NVARCHAR(MAX)
)

INSERT INTO People([Name], Picture , Height,[Weight], Gender, Birthday, Biography)
VALUES
('name', 'pic', 23.2, 88.1, 'f', CONVERT(datetime, '02-01-2001', 103),'blo'),
('sec', 'pic2', 252.1, 88.1,'m', CONVERT(datetime, '01-03-2003',103), 'xx'),
('az','xggx',55.1,88.1,'f',CONVERT(datetime,'03-09-2013',103), 'k'),
('axzz','xsxx',35.1,88.1,'m',CONVERT(datetime,'06-06-2011',103),'b'),
('awwz','xx',95.1,88.1,'f',CONVERT(datetime,'07-08-2012',103),'p')

ALTER TABLE People
 ADD PRIMARY KEY(Id)