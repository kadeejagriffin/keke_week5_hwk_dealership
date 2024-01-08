CREATE TABLE IF NOT EXISTS salesperson (
	salesperson_id SERIAL PRIMARY KEY,
	sales_id INTEGER NOT NULL UNIQUE, 
	sales_name VARCHAR(25)
);

CREATE TABLE IF NOT EXISTS customer (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	address VARCHAR,
	phone_number VARCHAR
);

CREATE TABLE IF NOT EXISTS car(
	car_id SERIAL PRIMARY KEY,
	serial_number INTEGER NOT NULL UNIQUE,
	make VARCHAR(25),
	model VARCHAR(25),
	car_year VARCHAR(25),
	new_or_used VARCHAR(25)
);

CREATE TABLE IF NOT EXISTS invoice(
	invoice_number SERIAL PRIMARY KEY,
	service_date DATE,
	total_price INTEGER, 
	customer_id INTEGER,
	sales_id INTEGER,
	serial_number INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (sales_id) REFERENCES salesperson(sales_id),
	FOREIGN KEY (serial_number) REFERENCES car(serial_number)
);

CREATE TABLE IF NOT EXISTS service_ticket(
	ticket_number SERIAL PRIMARY KEY,
	service_date DATE,
	total_cost VARCHAR,
	customer_id INTEGER,
	car_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (car_id) REFERENCES car(car_id)
	
);

CREATE TABLE IF NOT EXISTS mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	mechanic_name VARCHAR(25),
	start_date DATE
);

CREATE TABLE IF NOT EXISTS service_history(
	history_id SERIAL PRIMARY KEY,
	service_details VARCHAR,
	car_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES car(car_id)
);

CREATE TABLE IF NOT EXISTS car_mechanic(
	car_id INTEGER,
	mechanic_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES car(car_id),
	FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
); 


SELECT * 
FROM customer;

SELECT *
FROM salesperson;









