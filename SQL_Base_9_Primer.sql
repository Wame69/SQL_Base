-- ������ 1
CREATE TABLE ����������1 (
    ID INT,
    ��� VARCHAR(20)
);

-- ������ 2
DROP TABLE ����������1;

-- ������ 3
CREATE TABLE ����������1 (
    ID INT UNIQUE,
    ��� VARCHAR(20) NOT NULL
);

-- ������ 4
CREATE TABLE ����������1 (
    ID INT CHECK (ID < 200),
    ��� VARCHAR(20) DEFAULT '������������� ����������'
);

-- ������ 5
CREATE TABLE ����������1 (
    ID INT PRIMARY KEY IDENTITY(5,3),
    ��� VARCHAR(20)
);
