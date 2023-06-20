create table admin
(
    id         int          not null auto_increment,
    first_name varchar(100) not null,
    last_name  varchar(100) not null,
    primary key (id)
) engine = innodb;

describe admin;

insert into admin(first_name, last_name)
values ('Hilmi', 'AM'),
       ('franxx', 'code'),
       ('Zero', 'Two');

delete from admin where id = 3;

insert into admin(first_name, last_name)
values ('PPL', 'JXX');

select * from admin order by id;

select last_insert_id();
