CREATE TABLE IF NOT EXISTS customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(255),
    payment_info VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS car (
    car_id SERIAL PRIMARY KEY,
    car_serial_number VARCHAR(255),
    make VARCHAR(255),
    car_year INTEGER,
    model VARCHAR(255),
    type_car VARCHAR(255),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE IF NOT EXISTS staff (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    staff_role INTEGER
);

CREATE TABLE IF NOT EXISTS sale (
    sale_id SERIAL PRIMARY KEY,
    car_id INTEGER,
    staff_id INTEGER,
    total_price VARCHAR(255),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (car_id) REFERENCES car(car_id)
);



CREATE TABLE IF NOT EXISTS service (
    service_id SERIAL PRIMARY KEY,
    service_description VARCHAR(255),
    issue_id INTEGER,
    
);