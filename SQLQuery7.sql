SELECT full_name FROM [SQL_Baze_4].[dbo].[Academics] ORDER BY LEN(full_name);
SELECT LTRIM(full_name) AS cleaned_full_name FROM [SQL_Baze_4].[dbo].[Academics];
SELECT full_name, CHARINDEX('ов', full_name) AS position_ov FROM [SQL_Baze_4].[dbo].[Academics];
SELECT full_name, RIGHT(specialization, 2) AS last_two_letters FROM [SQL_Baze_4].[dbo].[Academics];
SELECT 
    full_name, 
    LEFT(full_name, CHARINDEX(' ', full_name)) + ' ' +
    UPPER(LEFT(PARSENAME(REPLACE(full_name, ' ', '.'), 2), 1)) + '.' +
    UPPER(LEFT(PARSENAME(REPLACE(full_name, ' ', '.'), 1), 1)) + '.' AS formatted_name FROM [SQL_Baze_4].[dbo].[Academics];
SELECT DISTINCT specialization, REVERSE(specialization) AS reversed_specialization FROM [SQL_Baze_4].[dbo].[Academics]
SELECT REPLICATE(N'Иванов ', 25) AS repeated_surname;
SELECT ROUND(ABS(SQUARE(SIN(PI()/2)) - SQUARE(COS(3*PI()/2))), 2) AS result;
SELECT DATEDIFF(DAY, GETDATE(), '2024-06-30') AS days_until_semester_end;
SELECT DATEDIFF(MONTH, GETDATE(), DATEFROMPARTS(YEAR(GETDATE()), MONTH('1999-03-15'), DAY('1999-03-15'))) AS months_until_birthday;
SELECT full_name, 
    CASE WHEN (YEAR(birth_date) % 4 = 0 AND YEAR(birth_date) % 100 <> 0) OR (YEAR(birth_date) % 400 = 0) 
         THEN 'Високосный' 
         ELSE 'Не високосный' 
    END AS leap_year_status
FROM [SQL_Baze_4].[dbo].[Academics];
SELECT DISTINCT specialization, CASE WHEN LEN(specialization) > 7 THEN 'длинный' ELSE 'короткий' END AS length_category FROM [SQL_Baze_4].[dbo].[Academics];
