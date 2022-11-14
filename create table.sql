create table user(
id_user int(11) not null auto_increment,
nama varchar(50) not null,
email varchar(50) not null,
password varchar(50) not null,
jenis_akun enum("penjual","pembeli"),
primary key(id_user)
);

create table barang(
id_barang int(11) not null auto_increment,
id_user int(11) not null,
nama_barang varchar(100) not null,
kategori varchar(100) not null,
stock int(15),
harga int(50),
primary key(id_barang),
foreign key(id_user) references user(id_user)
);


create table cart(
id_cart int(11) not null auto_increment,
id_user int(11) not null,
id_barang int(11) not null,
jumlah int(15) not null,
metode_bayar enum("COD","Virtual Account","alfamart","e-wallet") not null,
status enum("proses","sukses") not null,
total_harga int(100) not null,
tanggal date,
primary key(id_cart),
foreign key(id_user) references user(id_user),
foreign key(id_barang) references barang(id_barang)
);