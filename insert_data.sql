create table products
(
    id          varchar(10)  not null,
    name        varchar(100) not null,
    description text,
    price       int unsigned not null,
    quantity    int unsigned not null default 0,
    created_at  timestamp    not null default current_timestamp
) engine = innodb;

show tables;

describe products;

insert into products(id, name, price, quantity)
values ('P0001', 'Mie Ayam Original', 15000, 100);

insert into products(id, name, description, price, quantity)
values ('P0002', 'Mie Ayam Bakso', 'Mie Ayam Original + Bakso', 20000, 50);

insert into products(id, name, price, quantity)
values ('P0003', 'Mie Ayam Ceker', 10000, 100),
       ('P0004', 'Mie Ayam Special', 25000, 100),
       ('P0005', 'Mie Ayam Yamin', 17000, 100);

insert into products(id, name, description, price, quantity)
values ('P0006', 'Product Name 6', 'Product Description 6', 15000, 50),
       ('P0007', 'Product Name 7', 'Product Description 7', 18000, 75),
       ('P0008', 'Product Name 8', 'Product Description 8', 22000, 90),
       ('P0009', 'Product Name 9', 'Product Description 9', 14000, 80),
       ('P0010', 'Product Name 10', 'Product Description 10', 19000, 70),
       ('P0011', 'Product Name 11', 'Product Description 11', 16000, 60),
       ('P0012', 'Product Name 12', 'Product Description 12', 23000, 50),
       ('P0013', 'Product Name 13', 'Product Description 13', 12000, 40),
       ('P0014', 'Product Name 14', 'Product Description 14', 25000, 30),
       ('P0015', 'Product Name 15', 'Product Description 15', 20000, 20),
       ('P0016', 'Product Name 16', 'Product Description 16', 17000, 10),
       ('P0017', 'Product Name 17', 'Product Description 17', 15000, 50),
       ('P0018', 'Product Name 18', 'Product Description 18', 19000, 75),
       ('P0019', 'Product Name 19', 'Product Description 19', 14000, 90),
       ('P0020', 'Product Name 20', 'Product Description 20', 22000, 80),
       ('P0021', 'Product Name 21', 'Product Description 21', 16000, 70),
       ('P0022', 'Product Name 22', 'Product Description 22', 23000, 60),
       ('P0023', 'Product Name 23', 'Product Description 23', 12000, 50),
       ('P0024', 'Product Name 24', 'Product Description 24', 25000, 40),
       ('P0025', 'Product Name 25', 'Product Description 25', 20000, 30),
       ('P0026', 'Product Name 26', 'Product Description 26', 17000, 20),
       ('P0027', 'Product Name 27', 'Product Description 27', 15000, 10),
       ('P0028', 'Product Name 28', 'Product Description 28', 18000, 50),
       ('P0029', 'Product Name 29', 'Product Description 29', 21000, 75),
       ('P0030', 'Product Name 30', 'Product Description 30', 13000, 90),
       ('P0031', 'Product Name 31', 'Product Description 31', 24000, 80),
       ('P0032', 'Product Name 32', 'Product Description 32', 10000, 70),
       ('P0033', 'Product Name 33', 'Product Description 33', 19000, 60),
       ('P0034', 'Product Name 34', 'Product Description 34', 22000, 50),
       ('P0035', 'Product Name 35', 'Product Description 35', 14000, 40),
       ('P0036', 'Product Name 36', 'Product Description 36', 25000, 30),
       ('P0037', 'Product Name 37', 'Product Description 37', 20000, 20),
       ('P0038', 'Product Name 38', 'Product Description 38', 17000, 10),
       ('P0039', 'Product Name 39', 'Product Description 39', 15000, 50),
       ('P0040', 'Product Name 40', 'Product Description 40', 18000, 75),
       ('P0041', 'Product Name 41', 'Product Description 41', 21000, 90),
       ('P0042', 'Product Name 42', 'Product Description 42', 13000, 80),
       ('P0043', 'Product Name 43', 'Product Description 43', 24000, 70),
       ('P0044', 'Product Name 44', 'Product Description 44', 10000, 60),
       ('P0045', 'Product Name 45', 'Product Description 45', 19000, 50),
       ('P0046', 'Product Name 46', 'Product Description 46', 22000, 40),
       ('P0047', 'Product Name 47', 'Product Description 47', 14000, 30),
       ('P0048', 'Product Name 48', 'Product Description 48', 25000, 20),
       ('P0049', 'Product Name 49', 'Product Description 49', 20000, 10),
       ('P0050', 'Product Name 50', 'Product Description 50', 17000, 50);

select *
from products;