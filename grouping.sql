select count(id) as 'Total Product',
       category
from products
group by category;

select max(price) as 'Product termahal',
       category
from products
group by category;

select min(price) as 'Product termurah',
       category
from products
group by category;

select avg(price) as 'Rata-Rata',
       category
from products
group by category;

select sum(quantity) as 'Stock',
       category
from products
group by category;

select count(id) as total,
       category
from products
group by category
having total > 10;