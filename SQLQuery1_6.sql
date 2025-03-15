CREATE TABLE Факультет (
    Аббревиатура NVARCHAR(10) PRIMARY KEY,
    Название NVARCHAR(255) NOT NULL
);

CREATE TABLE Кафедра (
    Шифр NVARCHAR(10) PRIMARY KEY,
    Название NVARCHAR(255) NOT NULL,
    Факультет NVARCHAR(10) NOT NULL,
    FOREIGN KEY (Факультет) REFERENCES Факультет(Аббревиатура)
);

CREATE TABLE Сотрудник (
    ТабНомер INT PRIMARY KEY,
    Шифр NVARCHAR(10) NOT NULL,
    Фамилия NVARCHAR(255) NOT NULL,
    Должность NVARCHAR(255) NOT NULL,
    Зарплата MONEY NOT NULL,
    Шеф INT NULL,
    FOREIGN KEY (Шифр) REFERENCES Кафедра(Шифр),
    FOREIGN KEY (Шеф) REFERENCES Сотрудник(ТабНомер)
);

CREATE TABLE Специальность (
    Номер NVARCHAR(10) PRIMARY KEY,
    Направление NVARCHAR(255) NOT NULL,
    Шифр NVARCHAR(10) NOT NULL,
    FOREIGN KEY (Шифр) REFERENCES Кафедра(Шифр)
);

CREATE TABLE Дисциплина (
    Код INT PRIMARY KEY,
    Объем INT NOT NULL,
    Название NVARCHAR(255) NOT NULL,
    Исполнитель NVARCHAR(10) NOT NULL,
    FOREIGN KEY (Исполнитель) REFERENCES Кафедра(Шифр)
);
