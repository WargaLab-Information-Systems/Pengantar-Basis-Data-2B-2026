CREATE TABLE pelanggan_setia(
nomor_identitas INT
);
DESCRIBE pelanggan_setia;

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);
DESCRIBE pelanggan_setia;