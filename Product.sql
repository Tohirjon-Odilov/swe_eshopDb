create table product_title(
    id bigserial not null primary key,
    title varchar(255),
    product_category_id bigint not null
);