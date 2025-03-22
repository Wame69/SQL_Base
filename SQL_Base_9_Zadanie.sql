-- Задание 1
CREATE TABLE Управление_ВашаФамилия (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Вид VARCHAR(50) DEFAULT 'Не указано'
);

-- Задание 2
CREATE TABLE Страны_ВашаФамилия (
    ID INT PRIMARY KEY,
    Название VARCHAR(100) NOT NULL,
    Население INT CHECK (Население > 0)
);

-- Задание 3
CREATE TABLE Цветы_ВашаФамилия (
    ID INT PRIMARY KEY,
    Название VARCHAR(50) NOT NULL,
    Класс VARCHAR(50) DEFAULT 'Двудольные'
);

-- Задание 4
CREATE TABLE Животные_ВашаФамилия (
    ID INT PRIMARY KEY,
    Название VARCHAR(50) NOT NULL,
    Отряд VARCHAR(50) DEFAULT 'Хищные'
);