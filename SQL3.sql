SELECT MAX(area) AS Max_Area FROM Countries;
SELECT MIN(population) AS Min_Population FROM Countries WHERE continent = 'Африка';
SELECT SUM(population) AS Total_Population FROM Countries WHERE continent = 'Северная Америка' OR continent = 'Южная Америка';
SELECT ROUND(AVG(CAST(population AS FLOAT)), 2) AS Avg_Population FROM Countries WHERE continent <> 'Европа';
SELECT COUNT(*) AS Country_Count FROM Countries WHERE name LIKE 'С%';
SELECT COUNT(DISTINCT continent) AS Continent_Count FROM Countries;
SELECT MAX(population) - MIN(population) AS Population_Difference FROM Countries;
SELECT continent, COUNT(name) AS Country_Count FROM Countries GROUP BY continent ORDER BY Country_Count DESC;
SELECT LEFT(name, 1) AS First_Letter, COUNT(name) AS Country_Count FROM Countries GROUP BY LEFT(name, 1) ORDER BY First_Letter;
SELECT continent FROM Countries GROUP BY continent HAVING AVG(CAST(population AS FLOAT) / area) > 100;
SELECT continent, CASE
    WHEN continent IN ('Европа', 'Азия') THEN FLOOR(SUM(population) * 1.2)
    WHEN continent IN ('Северная Америка', 'Африка') THEN FLOOR(SUM(population) * 1.5)
    ELSE FLOOR(SUM(population) * 1.7)
END AS Projected_Population FROM Countries GROUP BY continent;
SELECT continent FROM Countries GROUP BY continent HAVING MAX(population) <= 1000 * MIN(population);
SELECT COUNT(*) AS Country_Without_Capital FROM Countries WHERE capital IS NULL;
SELECT 
    MAX(LEN(name)) AS Max_Country_Name_Length, 
    MIN(LEN(name)) AS Min_Country_Name_Length, 
    MAX(LEN(capital)) AS Max_Capital_Name_Length, 
    MIN(LEN(capital)) AS Min_Capital_Name_Length 
FROM Countries;
SELECT continent, AVG(CAST(population AS FLOAT) / area) AS Density FROM Countries WHERE area > 1000000 GROUP BY continent HAVING AVG(CAST(population AS FLOAT) / area) > 30 ORDER BY Density DESC;
