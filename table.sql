show engines;

show tables;

create table barang
(
    id     int          not null,
    nama   varchar(100) not null,
    harga  int          not null default 0,
    jumlah int          not null default 0
) engine = innodb;

describe barang;
desc barang;

show create table barang;

alter table barang
    add column deskripsi text;

alter table barang
    add column salah text;

alter table barang
    drop column salah;

desc barang;

alter table barang
    modify nama varchar(200) after id;

alter table barang
    modify nama varchar(200) first;

alter table barang
    modify deskripsi varchar(200) after nama;

desc barang;

alter table barang
    modify id int not null;

alter table barang
    modify nama varchar(200) not null;

alter table barang
    modify harga int not null default 0;

alter table barang
    modify jumlah int not null default 0;

desc barang;

alter table barang
    drop waktu_dibuat;

alter table barang
    add waktu_dibuat timestamp not null default CURRENT_TIMESTAMP;

insert into barang (id, nama)
VALUES (1, 'Lemon');

select *
from barang;

truncate barang;

show tables;

drop table barang;