-- ������� 1
CREATE TABLE ����������_����������� (
    ID INT PRIMARY KEY IDENTITY(1,1),
    ��� VARCHAR(50) DEFAULT '�� �������'
);

-- ������� 2
CREATE TABLE ������_����������� (
    ID INT PRIMARY KEY,
    �������� VARCHAR(100) NOT NULL,
    ��������� INT CHECK (��������� > 0)
);

-- ������� 3
CREATE TABLE �����_����������� (
    ID INT PRIMARY KEY,
    �������� VARCHAR(50) NOT NULL,
    ����� VARCHAR(50) DEFAULT '����������'
);

-- ������� 4
CREATE TABLE ��������_����������� (
    ID INT PRIMARY KEY,
    �������� VARCHAR(50) NOT NULL,
    ����� VARCHAR(50) DEFAULT '������'
);