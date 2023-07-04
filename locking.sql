# auto
start transaction;

select *
from guestbooks;

update guestbooks
set title = 'Di Ubah user 0'
where id = 1;

commit;


# manual
start transaction;

select *
from products;

select *
from products
where id = 'P0001' for
update;

update products
set quantity = quantity - 10
where id = 'P0001';

commit;

# deadlock
start transaction;

select *
from products
where id = 'P0001' for
update;

select *
from products
where id = 'P0002' for
update;

# lock table read

lock tables products read;

update products
set quantity = 100
where id = 'P0001';

unlock tables;

# lock table write

lock tables products write;

update products
set quantity = 100
where id = 'P0001';

unlock tables ;


# lock instance

lock INSTANCE for BACKUP;
