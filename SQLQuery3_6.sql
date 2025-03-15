
CREATE TABLE Заявка (
    Код INT PRIMARY KEY,
    "01.03.04" INT,
    "09.03.02" INT,
    "09.03.03" INT,
    "14.03.02" INT,
    "38.03.05" INT
);

CREATE TABLE ЗавКафедрой (
    Таб_номер INT PRIMARY KEY,
    Стаж INT
);

CREATE TABLE Инженер (
    Таб_номер INT PRIMARY KEY,
    Специальность VARCHAR(50)
);

CREATE TABLE Преподаватель (
    Таб_номер INT PRIMARY KEY,
    Звание VARCHAR(50),
    Степень VARCHAR(50)
);

CREATE TABLE Студент (
    Рег_номер INT PRIMARY KEY,
    Номер VARCHAR(10),
    Фамилия VARCHAR(50)
);

CREATE TABLE Экзамен (
    Дата DATE,
    Код INT,
    Рег_номер INT,
    Таб_номер INT,
    Аудитория VARCHAR(10),
    Оценка INT,
    PRIMARY KEY (Дата, Код, Рег_номер)
);
