--Create Customer Entry Procedure
CREATE OR REPLACE PROCEDURE addCustomerProcedure
    (
        _first_name varchar(255),
        _last_name varchar(255),
        _email VARCHAR(255),
        _phone VARCHAR(255),
        _payment_info VARCHAR(255)
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO customer (
        first_name,
        last_name,
        email,
        phone,
        payment_info
    ) VALUES (
        _first_name,
        _last_name,
        _email,
        _phone,
        _payment_info
    );
END;
$$

CALL addCustomerProcedure ('Sample', 'Samply', 'sample@sample.com', '777-777-7777', 'Visa');

SELECT *
FROM customer;

--Create Car Entry Procedure
CREATE OR REPLACE PROCEDURE addCarProcedure
    (
        _car_serial_number varchar(255),
        _make varchar(255),
        _car_year INTEGER,
        _model VARCHAR(255),
        _type_car VARCHAR(255),
        _customer_id INTEGER
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO car (
        car_serial_number,
        make,
        car_year,
        model,
        type_car,
        customer_id
    ) VALUES (
        _car_serial_number,
        _make,
        _car_year,
        _model,
        _type_car,
        _customer_id
    );
END;
$$

CALL addCarProcedure ('6484VNYFJ74FE', 'Honda', 2020, 'Accord', 'Sedan', 1);


--Create Staff Entry Procedure
CREATE OR REPLACE PROCEDURE addStaffProcedure 
    (
        _first_name VARCHAR(255),
        _last_name VARCHAR(255),
        _staff_role INTEGER
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO staff (
        first_name,
        last_name,
        staff_role
    ) VALUES (
        _first_name,
        _last_name,
        _staff_role
    );
END;
$$

CALL addStaffProcedure ('Jim', 'Bob', 1);


--Create Sale Entry Procedure
CREATE OR REPLACE PROCEDURE addSaleProcedure 
    (
        _car_id INTEGER,
        _staff_id INTEGER,
        _total_price VARCHAR(255)
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO sale (
        car_id,
        staff_id,
        total_price
    ) VALUES (
        _car_id,
        _staff_id,
        _total_price
    );
END;
$$

CALL addSaleProcedure (1, 1, '$25,000');


--Create Service Entry Procedure
CREATE OR REPLACE PROCEDURE addServiceProcedure 
    (
        _service_description VARCHAR(255),
        _issue_id INTEGER,
        _issue_id_cost VARCHAR,
        _customer_id INTEGER,
        _car_id INTEGER
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO service (
        service_description,
        issue_id,
        issue_id_cost,
        customer_id,
        car_id
    ) VALUES (
        _service_description,
        _issue_id,
        _issue_id_cost,
        _customer_id,
        _car_id
    );
END;
$$

CALL addServiceProcedure ('oil change', 1, '$89.99', 1, 1);


--Create Staff_Service Entry Procedure
CREATE OR REPLACE PROCEDURE addStaff_ServiceProcedure 
    (
        _staff_id INTEGER,
        _service_id INTEGER
    )
LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO staff_service (
        staff_id,
        service_id
    ) VALUES (
        _staff_id,
        _service_id
    );
END;
$$

CALL addStaff_ServiceProcedure (1, 1);
