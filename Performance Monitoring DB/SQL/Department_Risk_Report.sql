SELECT
    E.Department,

    COUNT(*) AS TotalEmployees,

    SUM(
        CASE
            WHEN MP.Actual_Completions <
                 MP.Target_Completions * .90
            THEN 1
            ELSE 0
        END
    ) AS HighRiskEmployees,

    ROUND(
        SUM(
            CASE
                WHEN MP.Actual_Completions <
                     MP.Target_Completions * .90
                THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        1
    ) AS HighRiskPct

FROM MonthlyPerformance MP
JOIN Employees E
    ON MP.EmployeeID = E.EmployeeID

WHERE MP.ReportMonth = '2025-01-01'

GROUP BY E.Department

ORDER BY HighRiskPct DESC;