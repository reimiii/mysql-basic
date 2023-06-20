select 10, 10, 10 * 10 as hasil;

select id,
       name,
       price,
       price div 1000 as 'Price in K'
from products;

# https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html

select id, cos(price), sin(price), tan(price)
from products;

select id,
       name,
       price
from products
where price div 1000 > 15;
