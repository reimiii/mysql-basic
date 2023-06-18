alter table products
    add column category enum ('Makanan', 'Minuman', 'Lain-Lain')
        after name;

describe products;

update products
set category = 'Makanan'
where id = 'P0001';

update products
set category    = 'Makanan',
    description = 'Orginila'
where id = 'P0001';

update products
set price = price + 500
where id = 'P0001';

select *
from products;