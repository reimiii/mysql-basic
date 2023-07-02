select *
from categories;

insert into categories (id, name)
values ('C0004', 'Dakimakura'),
       ('C0005', 'Figure'),
       ('C0006', 'Action');

insert into products(id, name, price, quantity)
values ('X0001', 'X P', 10000, 100),
       ('X0002', 'X X', 25000, 100),
       ('X0003', 'X V', 17000, 100);

select *
from products;

select *
from categories
         inner join products on (products.category_id = categories.id);

select *
from categories
         join products on (products.category_id = categories.id);

select *
from categories
         left join products on (products.category_id = categories.id);

select *
from categories
         right join products on (products.category_id = categories.id);

select *
from categories cross join products;