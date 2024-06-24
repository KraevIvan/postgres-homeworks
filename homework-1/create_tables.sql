-- SQL-команды для создания таблиц
CREATE TABLE CUSTOMERS_DATA
(
    customer_id char(5) PRIMARY KEY,
    company_name varchar(100) NOT NULL,
    contact_name varchar(100)
);

CREATE TABLE EMPLOYEES_DATA
(
    employee_id int PRIMARY KEY,
    first_name varchar(100),
    last_name varchar(100),
	title varchar(100),
	birth_date date,
	notes text
);

CREATE TABLE ORDERS_DATA
(
    orger_id int PRIMARY KEY,
    customer_id char(5) REFERENCES CUSTOMERS_DATA(customer_id),
    employee_id int REFERENCES EMPLOYEES_data(employee_id),
	order_date date,
	ship_city varchar(100)
);
