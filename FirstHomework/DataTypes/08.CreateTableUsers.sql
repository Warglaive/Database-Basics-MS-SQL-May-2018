CREATE TABLE Users(
Id BIGINT PRIMARY KEY IDENTITY,
Username VARCHAR(30) NOT NULL UNIQUE,
[Password] VARCHAR(26) NOT NULL,
ProfilePicture VARBINARY(MAX),
LastLoginTime DATETIME,
IsDeleted BIT
)

INSERT INTO Users(Username, [Password], ProfilePicture, LastLoginTime, IsDeleted) 
VALUES
('444xc', '333', NULL, CONVERT(datetime, '05-03-2012', 103), 0),
('xaxaxc', '123', NULL, CONVERT(datetime, '05-03-2014', 103), 0),
('asenxc', 'weed', NULL, CONVERT(datetime, '11-09-2000', 103), 0),
('sasdasdxc', 'x', NULL, CONVERT(datetime, '10-03-2005', 103), 0),
('beweqwexc', 'asd', NULL, CONVERT(datetime,'09-08-1999', 103), 0)