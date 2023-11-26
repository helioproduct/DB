-- Table creation for "Категории номеров"
CREATE TABLE room_categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    base_price NUMERIC(10, 2)
);

-- Table creation for "Номера"
CREATE TABLE rooms (
    id SERIAL PRIMARY KEY,
    category_id INT,
    number VARCHAR(10),
    is_occupied BOOLEAN DEFAULT FALSE,
    max_guests INT,
    FOREIGN KEY (category_id) REFERENCES room_categories(id)
);

-- Table creation for "Клиенты"
CREATE TABLE clients (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(255) UNIQUE
);

-- Table creation for "Персонал"
CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    position VARCHAR(255),
    phone VARCHAR(20)
);

-- Table creation for "Бронирования"
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    client_id INT,
    room_id INT,
    staff_id INT,
    check_in_date DATE,
    check_out_date DATE,
    is_extended BOOLEAN DEFAULT FALSE,
    total_price NUMERIC(10, 2),
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (room_id) REFERENCES rooms(id),
    FOREIGN KEY (staff_id) REFERENCES staff(id)
);

-- Table creation for "Услуги"
CREATE TABLE services (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    price NUMERIC(10, 2)
);

-- Table creation for "Клиент-Услуга"
CREATE TABLE client_services (
    client_id INT,
    service_id INT,
    date_of_service DATE,
    time_of_service TIME,
    comment VARCHAR(255),
    FOREIGN KEY (client_id) REFERENCES clients(id),
    FOREIGN KEY (service_id) REFERENCES services(id)
);


ALTER TABLE clients
ADD COLUMN date_of_birth DATE,
ADD COLUMN gender VARCHAR(10);


