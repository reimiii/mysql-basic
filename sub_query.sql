select avg(price)
from products;

select *
from products
where price > (select avg(price) from products);

select max(price)
from products;

update products
set category_id = null
where id = 'PXXXX';

select max(cpp.price)
from (select price
      from categories
               join products on (products.category_id = categories.id)) as cpp;