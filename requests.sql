--Вывод номеров, которые были заняты 2023-01-12
SELECT number 
FROM rooms INNER JOIN bookings USING (id)
WHERE check_in_date <= '2023-01-12' AND check_out_date > '2023-01-13';

-- Вывод имени и фамилии тех гостей, которые заплатили за номер > 350
SELECT first_name, last_name                                                                          
FROM clients INNER JOIN bookings USING (id)                                                                   
WHERE total_price > 350;

-- Вывод названия, описания и базовой цены номеров, id которых находится в диапазоне между 4 и 9;
SELECT name, description, base_price                                                                       
FROM room_categories INNER JOIN rooms USING (id)                                                                   
WHERE id BETWEEN 4 AND 9;

-- Вывод названия, описания и базовой цены номеров, id которых мкньше 3 и больше 9;
SELECT name, description, base_price                                                                       
FROM room_categories INNER JOIN rooms USING (id)                                                                   
WHERE id < 3
UNION 
SELECT name, description, base_price                                                                       
FROM room_categories INNER JOIN rooms USING (id) 
WHERE id > 9;

-- Вывод таблицы staff, отсортированной по фамилии сотрудников
SELECT * FROM staff
ORDER BY last_name;

-- Вывод фамилий тех клиентов, чьи фамилии отличяются от фамилий сотрудников
SELECT last_name
FROM clients
EXCEPT
SELECT last_name
FROM staff;

-- Вывод имен и фамилий тех сотрудников, чей номер заканчивается на 90
SELECT first_name, last_name
FROM staff
WHERE phone LIKE '%90'; 

-- Замена пола с мужского на женский для клиента с id 1
UPDATE clients SET gender = 'женский' WHERE id =1;

-- Вывод фамилий тех сотрудников, чьи фамилии совпадают с фамилией хотя бы одного гостя
SELECT first_name, last_name, phone
FROM clients 
WHERE EXISTS
	(SELECT last_name
		FROM staff
		WHERE clients.last_name=staff.last_name
	);

-- Вывод суммы, потраченной каждым клиентом за все разы пребывания в отеле. Результат отсортирован по убыванию суммы
SELECT client_id, SUM(total_price) AS overall_price
FROM bookings
GROUP BY client_id
ORDER BY overall_price DESC;

--Вывод названия услуг, на которые оставлял отзыв гость с максисальным возрастом
SELECT name FROM services
JOIN client_services C ON services.id = C.service_id 
WHERE C.client_id = (SELECT id FROM clients WHERE date_of_birth = (SELECT min(date_of_birth) FROM clients));

--Вывод имен и фамилей гостей, которые жили в номерах люкс
SELECT DISTINCT first_name, last_name FROM clients
JOIN bookings b ON clients.id = b.client_id
JOIN rooms r ON r.id=b.room_id
WHERE category_id = 3;





