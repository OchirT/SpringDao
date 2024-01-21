<!--CREATE SCHEMA netology;-->

CREATE TABLE CUSTOMERS (
    id serial PRIMARY KEY ,
    name varchar,
    surname varchar,
    age int,
    phone_number varchar
);


insert into CUSTOMERS(name, surname, age, phone_number)
values ('IVAN','Ivanov',18,'79333333333');


CREATE TABLE ORDERS (
    id serial PRIMARY KEY,
    date varchar,
    customer_id int,
    FOREIGN KEY (customer_id) REFERENCES customers (id),
    product_name varchar,
    amount int
);

insert into ORDERS(date, customer_id, product_name, amount)
    VALUES ('18.07.2023',1,'apple',50)