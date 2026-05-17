CREATE DATABASE db_perpustakan;
USE db_perpustakaan;
CREATE TABLE koleksi_langka (
id_buku BIGINT PRIMARY KEY,
judul VARCHAR(250),
tahun_terbit YEAR,
estimasi_harga DECIMAL(15,2)
);