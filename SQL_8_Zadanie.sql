SELECT '������� 1'
SELECT 
    ��������, 
    �������, 
    �������, 
    ���������, 
    ���������, 
    ROUND(������� * 100.0 / (SELECT SUM(�������) FROM ������), 3) AS �������
FROM ������ 
ORDER BY ������� DESC;

SELECT '������� 2'
SELECT 
    ��������, 
    �������, 
    �������, 
    ���������, 
    ��������� 
FROM ������ 
WHERE (��������� / �������) > (SELECT AVG(��������� / �������) FROM ������);

SELECT '������� 3'
SELECT 
    ��������, 
    �������, 
    �������, 
    ���������, 
    ��������� 
FROM ������ 
WHERE ��������� = '������' AND ��������� < 5000000;

SELECT '������� 4'
SELECT 
    ��������, 
    �������, 
    �������, 
    ���������, 
    ���������,
    ROUND(������� * 100.0 / (SELECT SUM(�������) FROM ������ WHERE ��������� = A.���������), 3) AS �������
FROM ������ A 
ORDER BY ���������, ������� DESC;

SELECT '������� 5'
SELECT 
    ��������, 
    �������, 
    �������, 
    ���������, 
    ��������� 
FROM ������ A 
WHERE ������� > (SELECT AVG(�������) FROM ������ B WHERE B.��������� = A.���������);

SELECT '������� 6'
SELECT * 
FROM ������ 
WHERE ��������� IN (
    SELECT ��������� 
    FROM ������ 
    GROUP BY ��������� 
    HAVING AVG(��������� / �������) > (SELECT AVG(��������� / �������) FROM ������)
);

SELECT '������� 7'
SELECT * 
FROM ������ 
WHERE ��������� = '����� �������' 
AND ��������� > ALL (SELECT ��������� FROM ������ WHERE ��������� = '������');

SELECT '������� 8'
SELECT * 
FROM ������ 
WHERE ��������� = '������' 
AND ��������� > ANY (SELECT ��������� FROM ������ WHERE ��������� = '����� �������');

SELECT '������� 9'
SELECT * 
FROM ������ 
WHERE ��������� = '������' 
AND EXISTS (SELECT 1 FROM ������ WHERE ��������� = '������' AND ������� > 2000000);

SELECT '������� 10'
SELECT * 
FROM ������ 
WHERE ��������� = (SELECT ��������� FROM ������ WHERE �������� = '�����');

SELECT '������� 11'
SELECT * 
FROM ������ 
WHERE ��������� <= (SELECT ��������� FROM ������ WHERE �������� = '�����');

SELECT '������� 12'
SELECT ��������
FROM ������ S1
WHERE ��������� = (
    SELECT MAX(���������)
    FROM ������ S2
    WHERE S2.��������� = S1.���������
      AND S2.������� = (
          SELECT MIN(�������)
          FROM ������ S3
          WHERE S3.��������� = S1.���������
      )
);
