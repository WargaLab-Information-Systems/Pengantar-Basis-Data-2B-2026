USE toko_sql;

CREATE TABLE transaksi_harian (
no_transaksi BIGINT PRIMARY KEY,
nama_barang VARCHAR (120),
jumlah_barang INT
);

INSERT INTO transaksi_harian (no_transaksi, nama_barang, jumlah_barang)
VALUE (01,'buku',5)

SELECT * FROM transaksi_harian;

DROP TABLE transaksi_harian;