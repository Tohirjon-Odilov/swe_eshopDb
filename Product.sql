CREATE TABLE product_category(
    id serial primary key,name varchar(255));

CREATE TABLE manufacturer(
    id serial primary key,name varchar(255));

create table product_title(
    id bigserial not null primary key,
    title varchar(255),
    product_category_id bigint not null
);
