CREATE TABLE CUSTOMERS (
    id serial PRIMARY KEY ,
    name varchar,
    surname varchar,
    age int,
    phone_number varchar
);


insert into CUSTOMERS(name, surname, age, phone_number)
values ('IVAN','Ivanov',18,'79333333333');


CREATE TABLE Orders (
    id serial PRIMARY KEY,
    date date,
    customer_id int,
    FOREIGN KEY (customer_id) REFERENCES customers (id),
    product_name varchar,
    amount numeric
);

insert into Orders(date, customer_id, product_name, amount)
VALUES ('2023-07-18', 1, 'apple', 50);