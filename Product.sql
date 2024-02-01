create table product
(
    id serial PRIMARY key,
    product_title_id int,
    manufacturer_id int,
    price money,
    comment text
);

CREATE TABLE order_details
(
    id SERIAL,
    customer_order_id INTEGER ,
    product_id INTEGER ,
    price INTEGER ,
    price_with_discount INTEGER,
    product_amount INTEGER
);

CREATE TABLE product_category
(
    id serial primary key,
    name varchar(255)
);

CREATE TABLE manufacturer
(
    id serial primary key,
    name varchar(255)
);

create table product_title
(
    id serial primary key,
    title varchar(255),
    product_category_id int
);

create table person_contact
(
    id bigserial primary key,
    person_id bigint,
    contact_type_id bigint,
    contact_value varchar(255)
);

create table contact_type
(
    id serial primary key,
    name varchar(255)
);

CREATE TABLE customer_order
(
    id serial PRIMARY KEY,
    operation_time timestamp,
    supermarket_id INTEGER,
    customer_id INTEGER
);

CREATE TABLE city
(
    id serial PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE PERSON
(
    id serial primary key,
    name varchar(255),
    surname varchar(255),
    birth_date date
);

CREATE TABLE street
(
    id serial PRIMARY KEY,
    name VARCHAR(255),
    city_id int
);

create table customer
(
    person_id serial primary key,
    card_number varchar(255),
    discount int
);

CREATE TABLE supermarket
(
    id serial PRIMARY KEY,
    name VARCHAR(255),
    street_id int,
    house_number int
);

ALTER TABLE 
"product" ADD CONSTRAINT "products_manufacturer_id_foreign" FOREIGN KEY ("manufacturer_id") REFERENCES "manufacturer"("id");
ALTER TABLE 
"product" ADD CONSTRAINT "products_product_title_id_foreign" FOREIGN KEY ("product_title_id") REFERENCES "product_title"("id");
ALTER TABLE 
"product_title" ADD CONSTRAINT "product_title_product_category_id_foreign" FOREIGN KEY ("product_category_id") REFERENCES "product_category"("id");
ALTER TABLE 
"order_details" ADD CONSTRAINT "order_details_product_id_foreign" FOREIGN KEY ("product_id") REFERENCES "product"("id");
ALTER TABLE 
"order_details" ADD CONSTRAINT "order_details_customer_order_id_foreign" FOREIGN KEY ("customer_order_id") REFERENCES "customer_order"("id");
ALTER TABLE 
"customer_order" ADD CONSTRAINT "customer_order_supermarket_id_foreign" FOREIGN KEY ("supermarket_id") REFERENCES "supermarket"("id");
ALTER TABLE 
"customer_order" ADD CONSTRAINT "customer_order_customer_id_foreign" FOREIGN KEY ("customer_id") REFERENCES "customer"("id");
ALTER TABLE 
"supermarket" ADD CONSTRAINT "supermarket_street_id_foreign" FOREIGN KEY ("street_id") REFERENCES "street"("id");
ALTER TABLE 
"street" ADD CONSTRAINT "street_city_id_foreign" FOREIGN KEY ("city_id") REFERENCES "city"("id");
ALTER TABLE 
"customer_order" ADD CONSTRAINT "customer_order_supermarket_id_foreign" FOREIGN KEY ("supermarket_id") REFERENCES "supermarket"("id");
ALTER TABLE 
"customer" ADD CONSTRAINT "customer_person_id_foreign" FOREIGN KEY ("person_id") REFERENCES "person"("id");
ALTER TABLE 
"person_contact" ADD CONSTRAINT "person_contact_person_id_foreign" FOREIGN KEY ("person_id") REFERENCES "person"("id");
ALTER TABLE 
"person_contact" ADD CONSTRAINT "person_contact_contact_type_id_foreign" FOREIGN KEY ("contact_type_id") REFERENCES "contact_type"("id");
