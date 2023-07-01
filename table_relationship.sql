create table wishlist
(
    id          int         not null,
    product_id  varchar(10) not null,
    description text,
    primary key (id),
    constraint fk_wishlist_product foreign key (product_id) references products (id)
) engine = innodb;

alter table wishlist
    drop constraint fk_wishlist_product;

alter table wishlist
    modify id int not null auto_increment;

alter table wishlist
    add constraint fk_wishlist_product
        foreign key (product_id) references products (id);

alter table wishlist
    add constraint fk_wishlist_product
        foreign key (product_id) references products (id)
            on delete cascade on update cascade;

desc wishlist;

show create table wishlist;

insert into wishlist (product_id, description)
values ('P0001', 'Ini Makanan');

insert into wishlist (product_id, description)
values ('SALAH', 'Ini Makanan');

delete
from products
where id = 'PXXXX';

insert into products (id, name, category, description, price, quantity)
values ('PXXXX', 'Saika', 'Makanan', 'Good Girls', 999999, 1);

select *
from products
order by id desc;

insert into wishlist (product_id, description)
values ('PXXXX', 'Ini Femboy');

select *
from wishlist;