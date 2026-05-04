CREATE TABLE pelanggan_setia (
    nomor_identitas INT PRIMARY KEY,
    nama VARCHAR(100)
);

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);