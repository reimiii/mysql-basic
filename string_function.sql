# https://dev.mysql.com/doc/refman/8.0/en/string-functions.html

select id,
       lower(name) as 'Name Lower',
       upper(name) as 'Name Upper',
       length(name) as 'Name Length'
from products;
