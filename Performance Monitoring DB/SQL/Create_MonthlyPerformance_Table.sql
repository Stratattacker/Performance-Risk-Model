Create table MonthlyPerformance (
	PerformanceID INT Identity(1,1) PRIMARY KEY, 
	EmployeeID smallINT NOT NULL,
	ReportMonth DATE NOT NULL,
	Target_Completions INT NOT NULL,
	Actual_Completions INT NOT NULL,
	SLA_Target INT NOT NULL,
	SLA_Achieved INT NOT NULL,

	FOREIGN KEY (EmployeeID)
		REFERENCES Employees (EmployeeID)
); 
