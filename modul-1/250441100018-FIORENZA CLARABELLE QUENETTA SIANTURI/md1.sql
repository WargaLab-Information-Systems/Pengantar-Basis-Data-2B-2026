CREATE DATABASE elibrary;
USE elibrary;

CREATE TABLE koleksi_langka (
    id_buku BIGINT PRIMARY KEY,
    judul VARCHAR(250),
    tahun_terbit YEAR,
    estimasi_harga DECIMAL(15,2)
);
DESCRIBE koleksi_langka

CREATE TABLE pelanggan_setia (
    nomor_identitas INT
);

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);
DESCRIBE pelanggan_setia

CREATE TABLE transaksi_harian (
    id INT,
    total DECIMAL(10,2)
);

TRUNCATE TABLE transaksi_harian;
DESCRIBE transaksi_harian

DROP TABLE transaksi_harian;

CREATE TABLE umpan_balik (
    id INT PRIMARY KEY,
    isi_komentar TEXT
);
DESCRIBE umpan_balik