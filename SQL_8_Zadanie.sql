SELECT 'Задание 1'
SELECT 
    Название, 
    Столица, 
    Площадь, 
    Население, 
    Континент, 
    ROUND(Площадь * 100.0 / (SELECT SUM(Площадь) FROM Страны), 3) AS Процент
FROM Страны 
ORDER BY Процент DESC;

SELECT 'Задание 2'
SELECT 
    Название, 
    Столица, 
    Площадь, 
    Население, 
    Континент 
FROM Страны 
WHERE (Население / Площадь) > (SELECT AVG(Население / Площадь) FROM Страны);

SELECT 'Задание 3'
SELECT 
    Название, 
    Столица, 
    Площадь, 
    Население, 
    Континент 
FROM Страны 
WHERE Континент = 'Европа' AND Население < 5000000;

SELECT 'Задание 4'
SELECT 
    Название, 
    Столица, 
    Площадь, 
    Население, 
    Континент,
    ROUND(Площадь * 100.0 / (SELECT SUM(Площадь) FROM Страны WHERE Континент = A.Континент), 3) AS Процент
FROM Страны A 
ORDER BY Континент, Процент DESC;

SELECT 'Задание 5'
SELECT 
    Название, 
    Столица, 
    Площадь, 
    Население, 
    Континент 
FROM Страны A 
WHERE Площадь > (SELECT AVG(Площадь) FROM Страны B WHERE B.Континент = A.Континент);

SELECT 'Задание 6'
SELECT * 
FROM Страны 
WHERE Континент IN (
    SELECT Континент 
    FROM Страны 
    GROUP BY Континент 
    HAVING AVG(Население / Площадь) > (SELECT AVG(Население / Площадь) FROM Страны)
);

SELECT 'Задание 7'
SELECT * 
FROM Страны 
WHERE Континент = 'Южная Америка' 
AND Население > ALL (SELECT Население FROM Страны WHERE Континент = 'Африка');

SELECT 'Задание 8'
SELECT * 
FROM Страны 
WHERE Континент = 'Африка' 
AND Население > ANY (SELECT Население FROM Страны WHERE Континент = 'Южная Америка');

SELECT 'Задание 9'
SELECT * 
FROM Страны 
WHERE Континент = 'Африка' 
AND EXISTS (SELECT 1 FROM Страны WHERE Континент = 'Африка' AND Площадь > 2000000);

SELECT 'Задание 10'
SELECT * 
FROM Страны 
WHERE Континент = (SELECT Континент FROM Страны WHERE Название = 'Фиджи');

SELECT 'Задание 11'
SELECT * 
FROM Страны 
WHERE Население <= (SELECT Население FROM Страны WHERE Название = 'Фиджи');

SELECT 'Задание 12'
SELECT Название
FROM Страны S1
WHERE Население = (
    SELECT MAX(Население)
    FROM Страны S2
    WHERE S2.Континент = S1.Континент
      AND S2.Площадь = (
          SELECT MIN(Площадь)
          FROM Страны S3
          WHERE S3.Континент = S1.Континент
      )
);
