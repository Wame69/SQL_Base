CREATE TABLE Countries (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    capital NVARCHAR(100) NOT NULL,
    area INT NOT NULL,
    population BIGINT NOT NULL,
    continent NVARCHAR(50) NOT NULL
);
