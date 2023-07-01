select *
from wishlist
         join products on (products.id = wishlist.product_id);

select *
from wishlist as w
         join products as p on (w.product_id = p.id);

select w.id          as wishlish_id,
       w.description as wislish_desc,
       p.id          as product_id,
       p.name        as product_name
from wishlist as w
         join products as p on (w.product_id = p.id);

desc customers;

alter table wishlist
    drop column customer_id;

alter table wishlist
    add column customer_id int not null after product_id;

alter table wishlist
    add constraint fk_wishlist_customer
        foreign key (customer_id) references customers (id);

desc wishlist;

select *
from wishlist;

select *
from customers;

update wishlist
set wishlist.customer_id = 1
where wishlist.customer_id = 0;

select c.email, p.id, p.name, w.description
from wishlist as w
         join products as p on (p.id = w.product_id)
         join customers as c on (c.id = w.customer_id);