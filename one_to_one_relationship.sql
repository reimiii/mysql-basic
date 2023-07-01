create table wallet
(
    id          int not null auto_increment,
    customer_id int not null,
    balance     int not null default 0,
    primary key (id),
    unique key one_customer_only (customer_id),
    foreign key fk_wallet_customer (customer_id) references customers (id)
) engine = innodb;

desc wallet;

select *
from customers;

insert into wallet(customer_id, balance)
values (1, 20000),
       (3, 50000);

select *
from wallet;

select w.balance, c.email
from wallet as w
         join customers as c on (c.id = w.customer_id);