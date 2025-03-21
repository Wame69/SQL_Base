-- Создание таблицы Страны
CREATE TABLE Страны (
    Название VARCHAR(100) PRIMARY KEY,
    Столица VARCHAR(100),
    Площадь INT,
    Население BIGINT,
    Континент VARCHAR(50)
);

-- Заполнение таблицы данными
INSERT INTO Страны (Название, Столица, Площадь, Население, Континент) VALUES
('Австрия', 'Вена', 83858, 8741753, 'Европа'),
('Азербайджан', 'Баку', 86600, 9705600, 'Азия'),
('Албания', 'Тирана', 28748, 2866376, 'Европа'),
('Алжир', 'Алжир', 2381740, 43000000, 'Африка'),
('Ангола', 'Луанда', 1246700, 25831000, 'Африка'),
('Аргентина', 'Буэнос-Айрес', 2766890, 43847000, 'Южная Америка'),
('Афганистан', 'Кабул', 647500, 29822488, 'Азия'),
('Бангладеш', 'Дакка', 144000, 160221000, 'Азия'),
('Бахрейн', 'Манама', 701, 1397000, 'Азия'),
('Белиз', 'Бельмопан', 22966, 377968, 'Северная Америка'),
('Белоруссия', 'Минск', 207595, 9494800, 'Европа'),
('Бельгия', 'Брюссель', 30528, 11250585, 'Европа'),
('Бенин', 'Порто-Ново', 112620, 11167000, 'Африка'),
('Болгария', 'София', 110910, 7153784, 'Европа'),
('Боливия', 'Сукре', 1098580, 10985059, 'Южная Америка'),
('Ботсвана', 'Габороне', 600370, 2209208, 'Африка'),
('Бразилия', 'Бразилиа', 8511965, 206081432, 'Южная Америка'),
('Буркина-Фасо', 'Уагадугу', 274200, 19034397, 'Африка'),
('Бутан', 'Тхимпху', 47000, 784000, 'Азия'),
('Великобритания', 'Лондон', 244820, 65341138, 'Европа'),
('Венгрия', 'Будапешт', 93030, 9830485, 'Европа'),
('Венесуэла', 'Каракас', 912050, 31028637, 'Южная Америка'),
('Восточный Тимор', 'Дили', 14874, 1167242, 'Азия'),
('Вьетнам', 'Ханой', 329560, 91713300, 'Азия');

INSERT INTO [SQL_Baze_8].[dbo].[Страны] (Название, Столица, Площадь, Население, Континент)
VALUES 
('Южноафриканская Республика', 'Претория', 1219090, 59308690, 'Африка'),  
('Конго', 'Бразавиль', 342000, 47410000, 'Африка'),                
('Мали', 'Бамако', 1240192, 19600000, 'Африка'),                       
('Танзания', 'Додома', 945087, 59734218, 'Африка'),                  
('США', 'Вашингтон', 9833517, 331002651, 'Северная Америка'),          
('Канада', 'Оттава', 9984670, 37742154, 'Северная Америка'),             
('Австралия', 'Канберра', 7692024, 25687041, 'Океания'),               
('Новая Зеландия', 'Веллингтон', 268021, 5000000, 'Океания'),            
('Япония', 'Токио', 377975, 126476461, 'Азия'),                       
('Индонезия', 'Джакарта', 1904569, 273523615, 'Азия'),                    
('Испания', 'Мадрид', 505992, 46719142, 'Европа'),                         
('Швеция', 'Стокгольм', 450295, 10099265, 'Европа');                      
INSERT INTO [SQL_Baze_8].[dbo].[Страны] (Название, Столица, Площадь, Население, Континент)
VALUES 
('Науру', 'Ярен', 21, 10000, 'Океания'),
('Гондурас', 'Тегусигальпа', 112492, 9904607, 'Центральная Америка'),
('Египет', 'Каир', 1002450, 102334404, 'Африка'),
('Нигерия', 'Абуджа', 923768, 206139589, 'Африка'),
('Южная Корея', 'Сеул', 100032, 51329899, 'Азия'),
('Германия', 'Берлин', 357022, 83149300, 'Европа'),
('Китай', 'Пекин', 9596961, 1395380000, 'Азия'),
('Индия', 'Нью-Дели', 3287263, 1380004385, 'Азия'),
('Франция', 'Париж', 551695, 67022000, 'Европа'),
('Италия', 'Рим', 301340, 60265000, 'Европа');
INSERT INTO [SQL_Baze_8].[dbo].[Страны] (Название, Столица, Площадь, Население, Континент)
VALUES
('Фиджи', 'Сува', 18274, 896444, 'Океания'), 
('Палау', 'Нгерулмуд', 459, 18000, 'Океания');

INSERT INTO [SQL_Baze_8].[dbo].[Страны] (Название, Столица, Площадь, Население, Континент)
VALUES
('Колумбия', 'Богота', 1141748, 50882891, 'Южная Америка'),     
('Перу', 'Лима', 1285216, 32971854, 'Южная Америка'),        
INSERT INTO [SQL_Baze_8].[dbo].[Страны] (Название, Столица, Площадь, Население, Континент)
VALUES

('Чили', 'Сантьяго', 756102, 19116209, 'Южная Америка'),
('Эквадор', 'Кито', 283561, 17643054, 'Южная Америка'),
('Парагвай', 'Асунсьон', 406752, 7163000, 'Южная Америка'),
('Уругвай', 'Монтевидео', 176215, 3477000, 'Южная Америка')
