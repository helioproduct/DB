INSERT INTO room_categories (name, description, base_price) VALUES
('Стандарт', 'Стандартный номер с базовыми удобствами, подходящий для бюджетных путешественников.', 100.00),
('Делюкс', 'Улучшенный номер, предлагающий дополнительное пространство и некоторые роскошные удобства.', 150.00),
('Люкс', 'Люкс с отдельными жилыми и спальными зонами, предлагающий премиальные удобства.', 250.00),
('Семейный номер', 'Просторный номер для семей с детьми, включая дополнительные кровати.', 180.00),
('Экзекьютив-люкс', 'Элитный номер с высококлассными удобствами, ориентированный на деловых путешественников.', 300.00),
('Президентский люкс', 'Самый роскошный номер в отеле, предлагающий лучшие удобства и сервис.', 500.00),
('Одноместный номер', 'Маленький номер с односпальной кроватью, идеально подходящий для одиночных путешественников.', 80.00),
('Двухместный номер', 'Номер с двуспальной кроватью или двумя односпальными кроватями, подходит для двух человек.', 120.00),
('Твин', 'Номер с двумя отдельными односпальными кроватями, идеально подходит для друзей, путешествующих вместе.', 130.00),
('Трехместный номер', 'Больший номер, рассчитанный на размещение трех человек.', 160.00);

INSERT INTO rooms (category_id, number, is_occupied, max_guests) VALUES
(1, '101', FALSE, 2), -- Стандарт
(1, '102', FALSE, 2), -- Стандарт
(2, '201', FALSE, 2), -- Делюкс
(2, '202', FALSE, 3), -- Делюкс
(3, '301', FALSE, 4), -- Люкс
(3, '302', FALSE, 4), -- Люкс
(4, '401', FALSE, 4), -- Семейный номер
(4, '402', FALSE, 5), -- Семейный номер
(5, '501', FALSE, 2), -- Экзекьютив-люкс
(6, '601', FALSE, 4), -- Президентский люкс
(7, '701', FALSE, 1), -- Одноместный номер
(7, '702', FALSE, 1), -- Одноместный номер
(8, '801', FALSE, 2), -- Двухместный номер
(8, '802', FALSE, 2), -- Двухместный номер
(9, '901', FALSE, 2), -- Твин
(9, '902', FALSE, 2), -- Твин
(10, '1001', FALSE, 3); -- Трехместный номер

INSERT INTO staff (first_name, last_name, position, phone) VALUES
('Александр', 'Иванов', 'Администратор', '9801234567'),
('Светлана', 'Кузнецова', 'Менеджер по бронированию', '9812345678'),
('Михаил', 'Смирнов', 'Шеф-повар', '9823456789'),
('Наталья', 'Воробьева', 'Уборщица', '9834567890'),
('Антон', 'Соколов', 'Охранник', '9845678901'),
('Екатерина', 'Михайлова', 'Горничная', '9856789012'),
('Андрей', 'Федоров', 'Техник', '9867890123'),
('Татьяна', 'Алексеева', 'Бухгалтер', '9878901234'),
('Денис', 'Морозов', 'Бармен', '9889012345'),
('Оксана', 'Васильева', 'Администратор SPA', '9890123456');


INSERT INTO clients (first_name, last_name, phone, email) VALUES
('Алексей', 'Иванов', '9123456789', 'aleksey.ivanov@email.ru'),
('Мария', 'Петрова', '9234567890', 'maria.petrova@email.ru'),
('Иван', 'Сидоров', '9345678901', 'ivan.sidorov@email.ru'),
('Елена', 'Васильева', '9456789012', 'elena.vasilyeva@email.ru'),
('Николай', 'Алексеев', '9567890123', 'nikolay.alekseev@email.ru'),
('Ольга', 'Дмитриева', '9678901234', 'olga.dmitrieva@email.ru'),
('Дмитрий', 'Николаев', '9789012345', 'dmitry.nikolaev@email.ru'),
('Анна', 'Сергеева', '9890123456', 'anna.sergeeva@email.ru'),
('Сергей', 'Андреев', '9901234567', 'sergey.andreev@email.ru'),
('Ирина', 'Федорова', '9012345678', 'irina.fedorova@email.ru');


INSERT INTO bookings (client_id, room_id, staff_id, check_in_date, check_out_date, is_extended, total_price) VALUES
(1, 1, 1, '2023-01-10', '2023-01-15', FALSE, 500.00),
(2, 2, 1, '2023-01-12', '2023-01-14', FALSE, 300.00),
(3, 3, 2, '2023-01-15', '2023-01-20', TRUE, 750.00),
(4, 4, 2, '2023-01-20', '2023-01-25', FALSE, 500.00),
(5, 5, 3, '2023-02-01', '2023-02-05', FALSE, 600.00),
(6, 6, 3, '2023-02-10', '2023-02-15', FALSE, 700.00),
(7, 7, 4, '2023-02-15', '2023-02-17', FALSE, 200.00),
(8, 8, 4, '2023-02-18', '2023-02-20', TRUE, 240.00),
(9, 9, 5, '2023-03-01', '2023-03-05', FALSE, 500.00),
(10, 10, 5, '2023-03-10', '2023-03-15', FALSE, 750.00),
(1, 2, 6, '2023-03-20', '2023-03-22', FALSE, 240.00),
(2, 3, 6, '2023-04-01', '2023-04-03', FALSE, 360.00),
(3, 4, 7, '2023-04-05', '2023-04-10', FALSE, 500.00),
(4, 5, 7, '2023-04-15', '2023-04-20', TRUE, 700.00),
(5, 6, 8, '2023-05-01', '2023-05-05', FALSE, 600.00),
(6, 7, 8, '2023-05-10', '2023-05-12', FALSE, 240.00),
(7, 8, 9, '2023-05-15', '2023-05-20', FALSE, 500.00),
(8, 9, 9, '2023-06-01', '2023-06-03', FALSE, 360.00),
(9, 10, 10, '2023-06-10', '2023-06-15', FALSE, 750.00),
(10, 1, 10, '2023-06-20', '2023-06-25', TRUE, 625.00);

INSERT INTO services (name, description, price) VALUES
('Спа-процедуры', 'Различные виды массажа и спа-процедуры для расслабления и восстановления.', 1500.00),
('Фитнес-центр', 'Доступ к современному фитнес-центру с тренажерами и групповыми занятиями.', 800.00),
('Трансфер из аэропорта', 'Удобный трансфер из аэропорта прямо к дверям отеля.', 1200.00),
('Экскурсионные туры', 'Организация экскурсий по историческим и культурным местам города.', 2000.00),
('Конференц-услуги', 'Аренда конференц-залов для деловых встреч и мероприятий.', 3000.00),
('Wi-Fi', 'Высокоскоростной доступ в Интернет в номерах и на всей территории отеля.', 300.00),
('Завтрак в номер', 'Индивидуальный завтрак в номер по предварительному заказу.', 500.00),
('Прокат велосипедов', 'Прокат велосипедов для самостоятельного изучения окрестностей.', 600.00),
('Услуги прачечной', 'Стирка, глажка и химчистка одежды.', 400.00),
('Детский клуб', 'Развлекательные и образовательные программы для детей разного возраста.', 1000.00);


INSERT INTO client_services (client_id, service_id, date_of_service, time_of_service, comment) VALUES
(1, 1, '2023-01-01', '10:00:00', 'Отличное обслуживание'),
(2, 2, '2023-01-02', '11:00:00', 'Быстро и качественно'),
(3, 3, '2023-01-03', '12:00:00', 'Все понравилось'),
(4, 4, '2023-01-04', '13:00:00', 'Хорошее обслуживание'),
(5, 5, '2023-01-05', '14:00:00', 'Очень вежливый персонал'),
(6, 1, '2023-01-06', '15:00:00', 'Прекрасное обслуживание'),
(7, 2, '2023-01-07', '16:00:00', 'Быстро и профессионально'),
(8, 3, '2023-01-08', '17:00:00', 'Все на высоте'),
(9, 4, '2023-01-09', '18:00:00', 'Хорошая работа'),
(10, 5, '2023-01-10', '19:00:00', 'Отличный сервис'),
(1, 2, '2023-01-11', '10:00:00', 'Без нареканий'),
(2, 3, '2023-01-12', '11:00:00', 'Прекрасно'),
(3, 4, '2023-01-13', '12:00:00', 'Отлично'),
(4, 5, '2023-01-14', '13:00:00', 'Все удовлетворительно'),
(5, 1, '2023-01-15', '14:00:00', 'Хороший сервис'),
(6, 2, '2023-01-16', '15:00:00', 'Очень понравилось'),
(7, 3, '2023-01-17', '16:00:00', 'Все отлично'),
(8, 4, '2023-01-18', '17:00:00', 'Замечательно'),
(9, 5, '2023-01-19', '18:00:00', 'Нет проблем'),
(10, 1, '2023-01-20', '19:00:00', 'Высокий уровень обслуживания');


UPDATE clients SET date_of_birth = '1985-01-15', gender = 'мужской' WHERE id = 1;
UPDATE clients SET date_of_birth = '1990-05-20', gender = 'женский' WHERE id = 2;
UPDATE clients SET date_of_birth = '1982-03-10', gender = 'мужской' WHERE id = 3;
UPDATE clients SET date_of_birth = '1987-07-25', gender = 'женский' WHERE id = 4;
UPDATE clients SET date_of_birth = '1975-11-30', gender = 'мужской' WHERE id = 5;
UPDATE clients SET date_of_birth = '1989-02-17', gender = 'женский' WHERE id = 6;
UPDATE clients SET date_of_birth = '1980-08-05', gender = 'мужской' WHERE id = 7;
UPDATE clients SET date_of_birth = '1992-12-12', gender = 'женский' WHERE id = 8;
UPDATE clients SET date_of_birth = '1978-04-22', gender = 'мужской' WHERE id = 9;
UPDATE clients SET date_of_birth = '1983-09-16', gender = 'женский' WHERE id = 10;