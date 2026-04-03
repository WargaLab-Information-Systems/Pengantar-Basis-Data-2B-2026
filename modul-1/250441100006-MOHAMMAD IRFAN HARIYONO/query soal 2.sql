CREATE DATABASE toko_sql;
USE toko_sql;

CREATE TABLE pelanggan_setia(
nomor_identitas INT PRIMARY KEY
);

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR (20)

DESCRIBE pelanggan_setia;