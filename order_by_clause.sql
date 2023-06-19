select id, name, category
from products
order by category;

select id, name, category, price
from products
order by category asc, price desc;