-- Пример 1
CREATE TABLE Управление1 (
    ID INT,
    Вид VARCHAR(20)
);

-- Пример 2
DROP TABLE Управление1;

-- Пример 3
CREATE TABLE Управление1 (
    ID INT UNIQUE,
    Вид VARCHAR(20) NOT NULL
);

-- Пример 4
CREATE TABLE Управление1 (
    ID INT CHECK (ID < 200),
    Вид VARCHAR(20) DEFAULT 'Президентская республика'
);

-- Пример 5
CREATE TABLE Управление1 (
    ID INT PRIMARY KEY IDENTITY(5,3),
    Вид VARCHAR(20)
);
