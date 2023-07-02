create table categories
(
    id   varchar(10)  not null,
    name varchar(100) not null,
    primary key (id)
) engine = innodb;

alter table products
    drop column category;

alter table products
    add column category_id varchar(10) after description;

alter table products
    add constraint fk_product_category
        foreign key (category_id)
            references categories (id);

desc products;

show create table products;

insert into categories (id, name)
values ('C0001', 'Anime'),
       ('C0002', 'Manga'),
       ('C0003', 'Novel');

select *
from categories;

select *
from products
order by price asc;

update products
set category_id = 'C0003'
where price >= 5000
  and price <= 14000;

select p.id, p.name, c.name
from products as p
         join categories as c on (c.id = p.category_id)
where c.id = 'C0001';



