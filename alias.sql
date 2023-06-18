select id       as kode,
       name     as nama,
       category as kategory,
       price    as harga,
       quantity as 'stok barang'
from products;

select p.id       as kode,
       p.name     as nama,
       p.category as kategory,
       p.price    as harga,
       p.quantity as "stok barang"
from products as p;