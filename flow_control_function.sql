# https://dev.mysql.com/doc/refman/8.0/en/flow-control-functions.html

select id,
       category,
       case category
           when 'Makanan' then 'Enak'
           when 'Minuman' then 'Segar'
           else 'Apa itu?'
           end as 'Category'
from products
order by id;

select id,
       price,
       if(price <= 15000, 'Murah-',
          if(price <= 20000, 'Mahal+', 'Mahal banget')) as 'Mahal?'
from products
order by price;


select id, name, ifnull(description, 'Not Found')
from products;

