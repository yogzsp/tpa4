-- 1 pelanggan membeli 3 barang yang berbeda.
insert into cart values(null,1,3,2,"COD","sukses",14000000),
(null,1,2,2,"COD","sukses",10000),
(null,1,9,2,"COD","sukses",10000);

-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.
select b.nama_barang as "Nama Barang",count(c.id_barang) as total_penjualan from barang b right join cart c on b.id_barang = c.id_barang group by c.id_barang order by total_penjualan desc limit 3;

-- Melihat Kategori barang yang paling banyak barangnya.
select kategori,count(kategori) as total_barang from barang group by kategori order by total_barang desc;

-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.
select tanggal,avg(total_harga) as "rata-rata transaksi" from cart where tanggal=date(now());