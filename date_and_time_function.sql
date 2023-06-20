# https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html

select id,
       created_at,
       extract(year from created_at)  as Year,
       extract(month from created_at) as Month
from products;

select id, year(created_at), month(created_at)
from products;