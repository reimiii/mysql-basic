create table sellers
(
    id    int          not null auto_increment,
    name  varchar(100) not null,
    name2 varchar(100),
    name3 varchar(100),
    email varchar(100) not null,
    primary key (id),
    unique key (email),
    index name_index (name),
    index name2_index (name2),
    index name3_index (name3),
    index name1_name2_name3_index (name, name2, name3)
) engine = innodb;

drop table sellers;

desc sellers;

show create table sellers;

select *
from sellers
where name = 'X';

select *
from sellers
where name = 'X'
  and name2 = 'X';

select *
from sellers
where name = 'X'
  and name2 = 'X'
  and name3 = 'Z';

alter table sellers
    drop index name_index;