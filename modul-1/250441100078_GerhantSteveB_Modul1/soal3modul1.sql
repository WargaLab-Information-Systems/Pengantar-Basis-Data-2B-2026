CREATE TABLE transaksi_harian(
barang VARCHAR (200),
harga BIGINT
)

INSERT INTO transaksi_harian
(barang, harga)
VALUES
('oreo', 4000),
('nipismadu', 3000)

TRUNCATE transaksi_harian

DROP transaksi_harian