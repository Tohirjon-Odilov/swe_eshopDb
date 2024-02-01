create table product(
    id serial PRIMARY key,
    product_title_id int,
    manufacturer_id int,
    price money,
    comment text
)

CREATE TABLE order_details(
   id SERIAL,
   customer_order_id INTEGER ,
   product_id INTEGER ,
   price INTEGER ,
   price_with_discount INTEGER,
   product_amount INTEGER 
);

CREATE TABLE product_category(
    id serial primary key,name varchar(255));

CREATE TABLE manufacturer(
    id serial primary key,name varchar(255));

create table product_title(
    id serial not null primary key,
    title varchar(255),
    product_category_id int not null
);

create table person_contact(
    id bigserial primary key,
    person_id bigint,
    contact_type_id bigint,
    contact_value varchar(255)
);

create table contact_type(
    id serial primary key,
    name varchar(255)
);

CREATE TABLE customer_order (
    id serial PRIMARY KEY,
    operation_time timestamp,
    supermarket_id INTEGER,
    customer_id INTEGER
);

CREATE TABLE city (
    id serial PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE PERSON(
    id serial primary key,name varchar(255),
	surname varchar(255),birth_date date);

CREATE TABLE street(
    id serial PRIMARY KEY(id) ,
    name VARCHAR(255),
    city_id int  
);

CREATE TABLE supermarket(
    id serial primary key,
    name varchar(255),
    street_id int,
    house_number int);

