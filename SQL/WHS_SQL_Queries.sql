SELECT COUNT(*) AS Total_Incidents
FROM osha_incidents;
SELECT DISTINCT YEAR(STR_TO_DATE(`Event Date`, '%m/%d/%Y')) AS Incident_Year
FROM osha_incidents
ORDER BY Incident_Year;
SELECT
    `Degree of Injury`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Degree of Injury`
ORDER BY Total_Incidents DESC;
SELECT *
FROM osha_incidents
WHERE STR_TO_DATE(`Event Date`, '%m/%d/%Y') IS NULL;
SELECT DISTINCT YEAR(STR_TO_DATE(`Event Date`, '%m-%d-%Y')) AS Incident_Year
FROM osha_incidents
ORDER BY Incident_Year;
SELECT *
FROM osha_incidents
WHERE STR_TO_DATE(`Event Date`, '%m-%d-%Y') IS NULL;
SELECT
    `Nature of Injury`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Nature of Injury`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
    `Part of Body`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Part of Body`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
    `Degree of Injury`,
    COUNT(*) AS Total_Incidents,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM osha_incidents), 2) AS Percentage
FROM osha_incidents
GROUP BY `Degree of Injury`
ORDER BY Total_Incidents DESC;
SELECT
    `Event type`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Event type`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
    `Task Assigned`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Task Assigned`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
    `Construction End Use`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Construction End Use`
ORDER BY Total_Incidents DESC;
SELECT
    `Project Type`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Project Type`
ORDER BY Total_Incidents DESC;
SELECT
    YEAR(STR_TO_DATE(`Event Date`, '%m-%d-%Y')) AS Incident_Year,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY Incident_Year
ORDER BY Incident_Year;
SELECT
    YEAR(STR_TO_DATE(`Event Date`, '%m-%d-%Y')) AS Incident_Year,
    COUNT(*) AS Fatal_Incidents
FROM osha_incidents
WHERE `Degree of Injury` = 'Fatal'
GROUP BY Incident_Year
ORDER BY Incident_Year;
SELECT
    YEAR(STR_TO_DATE(`Event Date`, '%m-%d-%Y')) AS Incident_Year,
    COUNT(*) AS Nonfatal_Incidents
FROM osha_incidents
WHERE `Degree of Injury` = 'Nonfatal'
GROUP BY Incident_Year
ORDER BY Incident_Year;
SELECT
    YEAR(STR_TO_DATE(`Event Date`, '%m-%d-%Y')) AS Year,
    MONTH(STR_TO_DATE(`Event Date`, '%m-%d-%Y')) AS Month,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY Year, Month
ORDER BY Year, Month;
SELECT
    `Human Factor`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Human Factor`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
    `Environmental Factor`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Environmental Factor`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
    `Event type`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Event type`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
    `Task Assigned`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
WHERE `Degree of Injury` = 'Fatal'
GROUP BY `Task Assigned`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
    `Construction End Use`,
    COUNT(*) AS Fatal_Incidents
FROM osha_incidents
WHERE `Degree of Injury` = 'Fatal'
GROUP BY `Construction End Use`
ORDER BY Fatal_Incidents DESC;
SELECT
    MONTH(STR_TO_DATE(`Event Date`, '%m-%d-%Y')) AS Month_Number,
    MONTHNAME(STR_TO_DATE(`Event Date`, '%m-%d-%Y')) AS Month_Name,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY Month_Number, Month_Name
ORDER BY Month_Number;

SELECT
    `Human Factor`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
WHERE `Human Factor` IS NOT NULL
  AND `Human Factor` <> ''
GROUP BY `Human Factor`
ORDER BY Total_Incidents DESC;
SELECT
    `Environmental Factor`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
WHERE `Environmental Factor` IS NOT NULL
  AND `Environmental Factor` <> ''
GROUP BY `Environmental Factor`
ORDER BY Total_Incidents DESC;
SELECT
    `Event type`,
    COUNT(*) AS Fatal_Incidents
FROM osha_incidents
WHERE `Degree of Injury` = 'Fatal'
GROUP BY `Event type`
ORDER BY Fatal_Incidents DESC;
SELECT
    `Nature of Injury`,
    COUNT(*) AS Fatal_Incidents
FROM osha_incidents
WHERE `Degree of Injury` = 'Fatal'
GROUP BY `Nature of Injury`
ORDER BY Fatal_Incidents DESC;
SELECT
    `Part of Body`,
    COUNT(*) AS Fatal_Incidents
FROM osha_incidents
WHERE `Degree of Injury` = 'Fatal'
GROUP BY `Part of Body`
ORDER BY Fatal_Incidents DESC;
SELECT
    `Task Assigned`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Task Assigned`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
    `Construction End Use`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Construction End Use`
ORDER BY Total_Incidents DESC;
SELECT
    `Project Type`,
    COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY `Project Type`
ORDER BY Total_Incidents DESC;
SELECT
    `Project Type`,
    COUNT(*) AS Fatal_Incidents
FROM osha_incidents
WHERE `Degree of Injury` = 'Fatal'
GROUP BY `Project Type`
ORDER BY Fatal_Incidents DESC;
SELECT
    `Construction End Use`,
    COUNT(*) AS Fatal_Incidents
FROM osha_incidents
WHERE `Degree of Injury` = 'Fatal'
GROUP BY `Construction End Use`
ORDER BY Fatal_Incidents DESC;
SELECT
ROUND(
SUM(CASE WHEN `Degree of Injury`='Fatal' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2) AS Fatality_Rate
FROM osha_incidents;
SELECT
ROUND(
SUM(CASE WHEN `Degree of Injury`='Nonfatal' THEN 1 ELSE 0 END)
*100.0/COUNT(*),2) AS Nonfatal_Rate
FROM osha_incidents;
SELECT
`Nature of Injury`,
COUNT(*) AS Total_Incidents,
ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM osha_incidents),2) AS Percentage
FROM osha_incidents
GROUP BY `Nature of Injury`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
`Part of Body`,
COUNT(*) AS Total_Incidents,
ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM osha_incidents),2) AS Percentage
FROM osha_incidents
GROUP BY `Part of Body`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
`Event type`,
COUNT(*) AS Total_Incidents,
ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM osha_incidents),2) AS Percentage
FROM osha_incidents
GROUP BY `Event type`
ORDER BY Total_Incidents DESC;
SELECT
`Project Type`,
COUNT(*) AS Total_Incidents,
ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM osha_incidents),2) AS Percentage
FROM osha_incidents
GROUP BY `Project Type`
ORDER BY Total_Incidents DESC;
SELECT
`Construction End Use`,
COUNT(*) AS Total_Incidents,
ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM osha_incidents),2) AS Percentage
FROM osha_incidents
GROUP BY `Construction End Use`
ORDER BY Total_Incidents DESC;
SELECT
MONTHNAME(STR_TO_DATE(`Event Date`,'%m-%d-%Y')) AS Month_Name,
AVG(1) AS Avg_Incidents
FROM osha_incidents
GROUP BY Month_Name;
SELECT
`Human Factor`,
COUNT(*) AS Total_Incidents,
ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM osha_incidents),2) AS Percentage
FROM osha_incidents
GROUP BY `Human Factor`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
`Environmental Factor`,
COUNT(*) AS Total_Incidents,
ROUND(COUNT(*)*100.0/(SELECT COUNT(*) FROM osha_incidents),2) AS Percentage
FROM osha_incidents
GROUP BY `Environmental Factor`
ORDER BY Total_Incidents DESC
LIMIT 10;
SELECT
    `Nature of Injury`,
    COUNT(*) AS Total_Incidents,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS Injury_Rank
FROM osha_incidents
GROUP BY `Nature of Injury`;
SELECT
    `Event type`,
    COUNT(*) AS Total_Incidents,
    DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS Event_Rank
FROM osha_incidents
GROUP BY `Event type`;
WITH InjuryCounts AS
(
SELECT
YEAR(STR_TO_DATE(`Event Date`,'%m-%d-%Y')) AS Incident_Year,
`Nature of Injury`,
COUNT(*) AS Total_Incidents
FROM osha_incidents
GROUP BY Incident_Year,`Nature of Injury`
)

SELECT *
FROM InjuryCounts
ORDER BY Incident_Year,Total_Incidents DESC;
WITH MonthlyData AS
(
SELECT
YEAR(STR_TO_DATE(`Event Date`,'%m-%d-%Y')) AS Yr,
MONTH(STR_TO_DATE(`Event Date`,'%m-%d-%Y')) AS Mn,
COUNT(*) AS Monthly_Incidents
FROM osha_incidents
GROUP BY Yr,Mn
)

SELECT *,
SUM(Monthly_Incidents)
OVER(ORDER BY Yr,Mn) AS Running_Total
FROM MonthlyData;
SELECT
YEAR(STR_TO_DATE(`Event Date`,'%m-%d-%Y')) AS Yr,
MONTH(STR_TO_DATE(`Event Date`,'%m-%d-%Y')) AS Mn,
COUNT(*) AS Total_Incidents,
RANK()
OVER(ORDER BY COUNT(*) DESC) AS Incident_Rank
FROM osha_incidents
GROUP BY Yr,Mn;
SELECT
`Nature of Injury`,
COUNT(*) AS Total_Incidents,
ROUND(
COUNT(*)*100/
SUM(COUNT(*)) OVER(),2
) AS Contribution_Percentage
FROM osha_incidents
GROUP BY `Nature of Injury`;
SELECT
`Human Factor`,
COUNT(*) AS Total_Incidents,
ROW_NUMBER()
OVER(ORDER BY COUNT(*) DESC) AS Row_Num
FROM osha_incidents
GROUP BY `Human Factor`;
SELECT
`Environmental Factor`,
COUNT(*) AS Total_Incidents,
ROW_NUMBER()
OVER(ORDER BY COUNT(*) DESC) AS Row_Num
FROM osha_incidents
GROUP BY `Environmental Factor`;
WITH YearData AS
(
SELECT
YEAR(STR_TO_DATE(`Event Date`,'%m-%d-%Y')) AS Yr,
COUNT(*) AS Incidents
FROM osha_incidents
GROUP BY Yr
)

SELECT
Yr,
Incidents,
LAG(Incidents)
OVER(ORDER BY Yr) Previous_Year,
Incidents-
LAG(Incidents)
OVER(ORDER BY Yr) AS Difference
FROM YearData;
SELECT
`Project Type`,
COUNT(*) AS Total_Incidents,
RANK()
OVER(ORDER BY COUNT(*) DESC) Risk_Rank
FROM osha_incidents
GROUP BY `Project Type`;