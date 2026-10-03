CREATE VIEW vw_PerformanceRisk AS 

SELECT 
	PerformanceID,
	EmployeeID,
	ReportMonth,
	Target_Completions,
	Actual_Completions,

	ROUND(
		Actual_Completions * 100.0 /
		Target_Completions, 
		2 
	) AS PerformancePercent,

	CASE 
		WHEN Actual_Completions < 
			Target_Completions * .90
		THEN 'High Risk'

		WHEN Actual_Completions < 
			Target_Completios * .95 
		THEN 'Medium Risk' 

		ELSE 'On Track' 
	END AS RiskStatus 
FROM MonthlyPerformance;