create table product(
    id serial PRIMARY key,
    product_title_id int,
    manufacturer_id int,
    price money,
    comment text
)