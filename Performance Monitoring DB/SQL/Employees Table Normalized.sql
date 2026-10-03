CREATE TABLE dbo.Employees (
    EmployeeID INT PRIMARY KEY,
    EEID NVARCHAR(7),
    Full_Name NVARCHAR(30),
    Gender NVARCHAR(6),
    Ethnicity NVARCHAR(30),
    Age INT, 
	Annual_Salary MONEY, 
	Bonus NVARCHAR (10),
    Hire_Date DATE,
    Exit_Date DATE
); 
INSERT INTO dbo.Employees (EmployeeID, EEID, Full_Name, Gender, Ethnicity, Age, Hire_Date, Annual_Salary, Bonus, Exit_Date)
SELECT EmployeeID, EEID, Full_Name, Gender, Ethnicity, Age, Hire_Date, Annual_Salary, Bonus, Exit_Date
FROM [Employee Sample Data]; 