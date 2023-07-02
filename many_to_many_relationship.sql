create table orders
(
    id         int      not null auto_increment,
    total      int      not null,
    order_date datetime not null default current_timestamp,
    primary key (id)
) engine = innodb;

create table orders_detail
(
    product_id varchar(10) not null,
    order_id   int         not null,
    price      int         not null,
    quantity   int         not null,
    primary key (product_id, order_id)
) engine = innodb;

alter table orders_detail
    add constraint fk_orders_detail_product
        foreign key (product_id) references products (id);

alter table orders_detail
    add constraint fk_orders_detail_orders
        foreign key (order_id) references orders (id);


show tables;
desc orders;
desc orders_detail;
show create table orders_detail;


insert into orders (total)
values (5000);

insert into orders_detail (product_id, order_id, price, quantity)
values ('P0001', 1, 25000, 1),
       ('P0002', 1, 25000, 1);

insert into orders_detail (product_id, order_id, price, quantity)
values ('P0003', 2, 25000, 1),
       ('P0004', 2, 25000, 1);

insert into orders_detail (product_id, order_id, price, quantity)
values ('P0005', 3, 25000, 1),
       ('P0006', 3, 25000, 1);

select *
from orders;

select *
from orders_detail;

select o.id, p.id, p.name, od.price, od.quantity
from orders as o
         join orders_detail as od on (o.id = od.order_id)
         join products p on (p.id = od.product_id);

