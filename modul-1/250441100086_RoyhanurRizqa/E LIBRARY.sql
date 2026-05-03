CREATE DATABASE e_library

CREATE TABLE koleksi_langka (
    id_buku BIGINT PRIMARY KEY,
    judul VARCHAR(250),
    tahun_terbit YEAR,
    estimasi_harga DECIMAL(20,2)
);

DESC koleksi_langka;



CREATE DATABASE toko;

CREATE TABLE pelanggan_setia(
nomor_identitas INT
);

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);

DESC pelanggan_setia;


CREATE DATABASE penjualan;

CREATE TABLE transaksi_harian (
id_transaksi INT ,
total_harga INT
);

TRUNCATE TABLE transaksi_harian;
DROP TABLE transaksi_harian;

SELECT*FROM transaksi_harian
DESC transaksi_harian;

INSERT INTO transaksi_harian VALUES(4,5000)


CREATE DATABASE db_berita

CREATE TABLE umpan_balik (
    id_komentar INT ,
    isi_komentar TEXT
);

DESC umpan_balik;
