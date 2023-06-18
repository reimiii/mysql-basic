select *
from products
where quantity > 50;

select *
from products
where quantity >= 50;

select *
from products
where category != 'Makanan';

select *
from products
where category <> 'Minuman';

select *
from products
where quantity > 50
  and price > 20000;

select *
from products
where category = 'Makanan'
  and price < 20000;

select *
from products
where quantity > 90
   or price > 20000;

select *
from products
where (category = 'Makanan' or quantity > 50)
  and price > 20000;

select *
from products
where name like 'mie';


select *
from products
where name like '%mie';


select *
from products
where name like 'mie%';

select *
from products
where name like '%mie%';

select *
from products
where name like 'product%';

select *
from products
where name like '%name%';

select *
from products
where name like '%na%';

select *
from products
where description is null;

select *
from products
where description is not null;

select *
from products
where price between 10000 and 20000;

select *
from products
where price >= 10000
  and price <= 20000;

select *
from products
where price not between 10000 and 15000;

select *
from products
where price > 10000
  and price > 15000;

select *
from products
where category in ('Makanan', 'Minuman');

select *
from products
where category = 'Makanan'
   or category = 'Minuman';

select *
from products
where category not in ('Makanan', 'Minuman');


select *
from products
where category != 'Makanan'
  and category != 'Minuman';


