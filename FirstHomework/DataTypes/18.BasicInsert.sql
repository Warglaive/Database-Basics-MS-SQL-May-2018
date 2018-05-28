INSERT INTO Towns([Name])
VALUES
('Sofia'),
('Plovdiv'),
('Varna'),
('Burgas')

INSERT INTO Departments([Name])
VALUES
('Engineering'),
('Sales'),
('Marketing'),
('Software Development'),
('Quality Assurance')

INSERT INTO Employees(FirstName, MiddleName, LastName, JobTitle, HireDate, Salary)
VALUES
('Ivan', 'Ivanov', 'Ivanov', '.NET Developer', CONVERT(datetime, '01/02/2013', 103), 3500.00),
('Petar', 'Petrov', 'Petrov', 'Senior Engineer', CONVERT(datetime,'02/03/2004', 103), 4000.00),
('Maria', 'Petrova', 'Ivanov', 'Intern', CONVERT(datetime,'28/08/2016', 103), 525.25),
('Georgi', 'Terziev', 'Ivanov', 'CEO',  CONVERT(datetime,'09/12/2007', 103), 3000.00),
('Petar', 'Pan', 'Pan', 'Intern', CONVERT(datetime,'28/08/2016', 103), 599.88)