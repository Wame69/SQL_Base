SELECT full_name, LEN(full_name) AS ����������_�������� FROM [SQL_Baze_4].[dbo].[Academics]
SELECT LTRIM(full_name) AS full_name,birth_date,specialization,year_of_title FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, CHARINDEX('�',full_name) AS �������_� FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, LEFT(specialization,3) AS ����_3 FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, SUBSTRING(specialization,2,4) AS ����_2_5 FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, birth_date, REPLACE(specialization,'��������','��������') AS ����, year_of_title FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, birth_date, UPPER(specialization) AS ����, year_of_title FROM [SQL_Baze_4].[dbo].[Academics]
SELECT full_name, REVERSE(full_name) AS ���_��� FROM [SQL_Baze_4].[dbo].[Academics]
SELECT DISTINCT REPLICATE(specialization, 4) AS ����_4 FROM [SQL_Baze_4].[dbo].[Academics];
SELECT ABS(COS(PI())) AS �������_��, ABS(SIN(PI())) AS �����_��,ABS(TAN(PI())) AS �������_��,ABS(COT(PI())) AS ���������_��;
SELECT ROUND(132.456, 3) AS ���3,ROUND(132.456, 2) AS ���2,ROUND(132.456, 1) AS ���1,ROUND(132.456, 0) AS ���0,ROUND(132.456, -1) AS ���_1,ROUND(132.456, -2) AS ���_2,ROUND(132.456, -3) AS ���_3;
SELECT CEILING(132.456) AS ������,FLOOR(132.456) AS ������;
SELECT SQRT(25) AS ������,SQUARE(25) AS �������,POWER(25, 3) AS ���;
SELECT GETDATE() AS ������;
SELECT 
    DAY(GETDATE()) AS ����,
    MONTH(GETDATE()) AS �����,
    YEAR(GETDATE()) AS ���,
    DATEPART(HOUR, GETDATE()) AS ���,
    DATEPART(MINUTE, GETDATE()) AS ������,
    DATEPART(SECOND, GETDATE()) AS �������,
    DATEPART(QUARTER, GETDATE()) AS �������,
    DATEPART(WEEK, GETDATE()) AS ������,
    DATEPART(DAYOFYEAR, GETDATE()) AS ����_����,
    DATEPART(WEEKDAY, GETDATE()) AS ����_������;
SELECT DATEADD(DAY, -100, GETDATE()) AS ����_100_�����;
SELECT DATEDIFF(DAY, '1895-07-08', '1971-04-12') AS ����������_��������_����;
SELECT full_name AS ���,CASE WHEN MONTH(birth_date) IN (3, 4, 5) THEN '�����'WHEN MONTH(birth_date) IN (6, 7, 8) THEN '����'WHEN MONTH(birth_date) IN (9, 10, 11) THEN '�����'ELSE '����' END AS �����_���� FROM [SQL_Baze_4].[dbo].[Academics];
SELECT 
    full_name AS ���,
    birth_date AS ����_��������,
    CASE 
        WHEN (MONTH(birth_date) = 3 AND DAY(birth_date) >= 21) OR (MONTH(birth_date) = 4 AND DAY(birth_date) <= 20) THEN '����'
        WHEN (MONTH(birth_date) = 4 AND DAY(birth_date) >= 21) OR (MONTH(birth_date) = 5 AND DAY(birth_date) <= 21) THEN '�����'
        WHEN (MONTH(birth_date) = 5 AND DAY(birth_date) >= 22) OR (MONTH(birth_date) = 6 AND DAY(birth_date) <= 21) THEN '��������'
        WHEN (MONTH(birth_date) = 6 AND DAY(birth_date) >= 22) OR (MONTH(birth_date) = 7 AND DAY(birth_date) <= 22) THEN '���'
        WHEN (MONTH(birth_date) = 7 AND DAY(birth_date) >= 23) OR (MONTH(birth_date) = 8 AND DAY(birth_date) <= 23) THEN '���'
        WHEN (MONTH(birth_date) = 8 AND DAY(birth_date) >= 24) OR (MONTH(birth_date) = 9 AND DAY(birth_date) <= 23) THEN '����'
        WHEN (MONTH(birth_date) = 9 AND DAY(birth_date) >= 24) OR (MONTH(birth_date) = 10 AND DAY(birth_date) <= 23) THEN '����'
        WHEN (MONTH(birth_date) = 10 AND DAY(birth_date) >= 24) OR (MONTH(birth_date) = 11 AND DAY(birth_date) <= 22) THEN '��������'
        WHEN (MONTH(birth_date) = 11 AND DAY(birth_date) >= 23) OR (MONTH(birth_date) = 12 AND DAY(birth_date) <= 21) THEN '�������'
        WHEN (MONTH(birth_date) = 12 AND DAY(birth_date) >= 22) OR (MONTH(birth_date) = 1 AND DAY(birth_date) <= 20) THEN '�������'
        WHEN (MONTH(birth_date) = 1 AND DAY(birth_date) >= 21) OR (MONTH(birth_date) = 2 AND DAY(birth_date) <= 19) THEN '�������'
        ELSE '����'
    END AS ����_�������
FROM [SQL_Baze_4].[dbo].[Academics];

SELECT 
    full_name AS ���,
    birth_date AS ����_��������,
    specialization AS �������������,
    year_of_title AS ���_����������_������,
    IIF(year_of_title - YEAR(birth_date) <= 45, '�������', '������') AS �������_���_����������
FROM [SQL_Baze_4].[dbo].[Academics];
