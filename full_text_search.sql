alter table products
    add fulltext products_fulltext (name, description);

show create table products;

select *
from products
where name like '%ayam%'
   or description like '%a%';

select *
from products
where match(name, description)
            against('ayam' in natural language mode);

select *
from products
where match(name, description)
            against('+ayam -bakso' in boolean mode);

select *
from products
where match(name, description)
            against('bakso' with query expansion);