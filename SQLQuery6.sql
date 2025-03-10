SELECT full_name, LEN(full_name) AS Количество_Символов FROM [SQL_Baze_4].[dbo].[Academics]
SELECT LTRIM(full_name) AS full_name,birth_date,specialization,year_of_title FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, CHARINDEX('о',full_name) AS Позиция_о FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, LEFT(specialization,3) AS Спец_3 FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, SUBSTRING(specialization,2,4) AS Спец_2_5 FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, birth_date, REPLACE(specialization,'лингвист','языковед') AS Спец, year_of_title FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, birth_date, UPPER(specialization) AS Спец, year_of_title FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, REVERSE(full_name) AS ФИО_Обр FROM [SQL_Baze_4].[dbo].[Academics]
SELECT DISTINCT REPLICATE(specialization, 4) AS Спец_4 FROM [SQL_Baze_4].[dbo].[Academics];
SELECT ABS(COS(PI())) AS Косинус_Пи, ABS(SIN(PI())) AS Синус_Пи,ABS(TAN(PI())) AS Тангенс_Пи,ABS(COT(PI())) AS КоТангенс_Пи;
SELECT ROUND(132.456, 3) AS Окр3,ROUND(132.456, 2) AS Окр2,ROUND(132.456, 1) AS Окр1,ROUND(132.456, 0) AS Окр0,ROUND(132.456, -1) AS Окр_1,ROUND(132.456, -2) AS Окр_2,ROUND(132.456, -3) AS Окр_3;
SELECT CEILING(132.456) AS Больше,FLOOR(132.456) AS Меньше;
SELECT SQRT(25) AS Корень,SQUARE(25) AS Квадрат,POWER(25, 3) AS Куб;
SELECT GETDATE() AS Сейчас;
SELECT 
    DAY(GETDATE()) AS День,
    MONTH(GETDATE()) AS Месяц,
    YEAR(GETDATE()) AS Год,
    DATEPART(HOUR, GETDATE()) AS Час,
    DATEPART(MINUTE, GETDATE()) AS Минута,
    DATEPART(SECOND, GETDATE()) AS Секунда,
    DATEPART(QUARTER, GETDATE()) AS Квартал,
    DATEPART(WEEK, GETDATE()) AS Неделя,
    DATEPART(DAYOFYEAR, GETDATE()) AS День_года,
    DATEPART(WEEKDAY, GETDATE()) AS День_недели;
SELECT DATEADD(DAY, -100, GETDATE()) AS День_100_Назад;
SELECT DATEDIFF(DAY, '1895-07-08', '1971-04-12') AS Количество_прожитых_дней;
SELECT full_name AS ФИО,CASE WHEN MONTH(birth_date) IN (3, 4, 5) THEN 'Весна'WHEN MONTH(birth_date) IN (6, 7, 8) THEN 'Лето'WHEN MONTH(birth_date) IN (9, 10, 11) THEN 'Осень'ELSE 'Зима' END AS Время_года FROM [SQL_Baze_4].[dbo].[Academics];
SELECT 
    full_name AS ФИО,
    birth_date AS Дата_рождения,
    CASE 
        WHEN (MONTH(birth_date) = 3 AND DAY(birth_date) >= 21) OR (MONTH(birth_date) = 4 AND DAY(birth_date) <= 20) THEN 'Овен'
        WHEN (MONTH(birth_date) = 4 AND DAY(birth_date) >= 21) OR (MONTH(birth_date) = 5 AND DAY(birth_date) <= 21) THEN 'Телец'
        WHEN (MONTH(birth_date) = 5 AND DAY(birth_date) >= 22) OR (MONTH(birth_date) = 6 AND DAY(birth_date) <= 21) THEN 'Близнецы'
        WHEN (MONTH(birth_date) = 6 AND DAY(birth_date) >= 22) OR (MONTH(birth_date) = 7 AND DAY(birth_date) <= 22) THEN 'Рак'
        WHEN (MONTH(birth_date) = 7 AND DAY(birth_date) >= 23) OR (MONTH(birth_date) = 8 AND DAY(birth_date) <= 23) THEN 'Лев'
        WHEN (MONTH(birth_date) = 8 AND DAY(birth_date) >= 24) OR (MONTH(birth_date) = 9 AND DAY(birth_date) <= 23) THEN 'Дева'
        WHEN (MONTH(birth_date) = 9 AND DAY(birth_date) >= 24) OR (MONTH(birth_date) = 10 AND DAY(birth_date) <= 23) THEN 'Весы'
        WHEN (MONTH(birth_date) = 10 AND DAY(birth_date) >= 24) OR (MONTH(birth_date) = 11 AND DAY(birth_date) <= 22) THEN 'Скорпион'
        WHEN (MONTH(birth_date) = 11 AND DAY(birth_date) >= 23) OR (MONTH(birth_date) = 12 AND DAY(birth_date) <= 21) THEN 'Стрелец'
        WHEN (MONTH(birth_date) = 12 AND DAY(birth_date) >= 22) OR (MONTH(birth_date) = 1 AND DAY(birth_date) <= 20) THEN 'Козерог'
        WHEN (MONTH(birth_date) = 1 AND DAY(birth_date) >= 21) OR (MONTH(birth_date) = 2 AND DAY(birth_date) <= 19) THEN 'Водолей'
        ELSE 'Рыбы'
    END AS Знак_зодиака
FROM [SQL_Baze_4].[dbo].[Academics];

SELECT 
    full_name AS ФИО,
    birth_date AS Дата_рождения,
    specialization AS Специализация,
    year_of_title AS Год_присвоения_звания,
    IIF(year_of_title - YEAR(birth_date) <= 45, 'Молодой', 'Старый') AS Возраст_при_присвоении
FROM [SQL_Baze_4].[dbo].[Academics];
