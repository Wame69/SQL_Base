CREATE TABLE ��������� (
    ������������ NVARCHAR(10) PRIMARY KEY,
    �������� NVARCHAR(255) NOT NULL
);

CREATE TABLE ������� (
    ���� NVARCHAR(10) PRIMARY KEY,
    �������� NVARCHAR(255) NOT NULL,
    ��������� NVARCHAR(10) NOT NULL,
    FOREIGN KEY (���������) REFERENCES ���������(������������)
);

CREATE TABLE ��������� (
    �������� INT PRIMARY KEY,
    ���� NVARCHAR(10) NOT NULL,
    ������� NVARCHAR(255) NOT NULL,
    ��������� NVARCHAR(255) NOT NULL,
    �������� MONEY NOT NULL,
    ��� INT NULL,
    FOREIGN KEY (����) REFERENCES �������(����),
    FOREIGN KEY (���) REFERENCES ���������(��������)
);

CREATE TABLE ������������� (
    ����� NVARCHAR(10) PRIMARY KEY,
    ����������� NVARCHAR(255) NOT NULL,
    ���� NVARCHAR(10) NOT NULL,
    FOREIGN KEY (����) REFERENCES �������(����)
);

CREATE TABLE ���������� (
    ��� INT PRIMARY KEY,
    ����� INT NOT NULL,
    �������� NVARCHAR(255) NOT NULL,
    ����������� NVARCHAR(10) NOT NULL,
    FOREIGN KEY (�����������) REFERENCES �������(����)
);
