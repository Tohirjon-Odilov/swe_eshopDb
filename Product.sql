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
ALTER TABLE order_details ADD PRIMARY KEY(id);

CREATE TABLE product_category(
    id serial primary key,name varchar(255));

CREATE TABLE manufacturer(
    id serial primary key,name varchar(255));

create table product_title(
    id bigserial not null primary key,
    title varchar(255),
    product_category_id bigint not null
);
