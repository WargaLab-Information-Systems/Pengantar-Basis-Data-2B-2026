CREATE TABLE koleksi_langka (
id_buku BIGINT PRIMARY KEY,
judul VARCHAR(250),
tahun_terbit YEAR,
estimasi_harga DECIMAL (19,4)
);

DESCRIBE koleksi_langka;