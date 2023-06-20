# https://dev.mysql.com/doc/refman/8.0/en/aggregate-functions.html

select count(id) as 'Total Product'
from products;

select max(price) as 'Product termahal'
from products;

select min(price) as 'Product termurah'
from products;

select avg(price) as 'Rata-Rata'
from products;

select sum(quantity) as 'Stock'
from products;