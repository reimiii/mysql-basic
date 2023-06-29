create table customers
(
    id         int          not null auto_increment,
    email      varchar(100) not null,
    first_name varchar(100) not null,
    last_name  varchar(100),
    primary key (id),
    unique key email_unique (email)
) engine = innodb;

alter table customers
    drop constraint email_unique;

alter table customers
    add constraint email_unique unique (email);

insert into customers (email, first_name, last_name)
values ('me@mail.com', 'Mee', 'AAM');

insert into customers (email, first_name, last_name)
values ('aam@mail.com', 'Mee', 'AAM');

select *
from customers;

desc customers;

# products

insert into products (id, name, category, description, price, quantity)
values ('P0051', 'Product Baru', 'Makanan', 'Ini Product Baru', 1000, 7);

alter table products
add constraint price_check check ( price >= 5000 );

update products
set price = 5000
where id = 'P0051';

insert into products (id, name, category, description, price, quantity)
values ('P0052', 'Product Baru', 'Makanan', 'Ini Product Baru', 1000, 7);

update products
set price = 500
where id = 'P0051';

alter table products
drop constraint price_check;

select *
from products order by id desc;

desc products;
show create table products;