
CREATE TABLE ������ (
    ��� INT PRIMARY KEY,
    "01.03.04" INT,
    "09.03.02" INT,
    "09.03.03" INT,
    "14.03.02" INT,
    "38.03.05" INT
);

CREATE TABLE ����������� (
    ���_����� INT PRIMARY KEY,
    ���� INT
);

CREATE TABLE ������� (
    ���_����� INT PRIMARY KEY,
    ������������� VARCHAR(50)
);

CREATE TABLE ������������� (
    ���_����� INT PRIMARY KEY,
    ������ VARCHAR(50),
    ������� VARCHAR(50)
);

CREATE TABLE ������� (
    ���_����� INT PRIMARY KEY,
    ����� VARCHAR(10),
    ������� VARCHAR(50)
);

CREATE TABLE ������� (
    ���� DATE,
    ��� INT,
    ���_����� INT,
    ���_����� INT,
    ��������� VARCHAR(10),
    ������ INT,
    PRIMARY KEY (����, ���, ���_�����)
);
