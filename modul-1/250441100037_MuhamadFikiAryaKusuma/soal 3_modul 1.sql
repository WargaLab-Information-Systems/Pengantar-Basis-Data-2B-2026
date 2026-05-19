CREATE TABLE transaksi_harian (
    id_transaksi INT,
    keterangan VARCHAR(100)
);

TRUNCATE TABLE transaksi_harian;

DROP TABLE transaksi_harian;

/* Penjelasan Logika NO. 3:
1. Nasib Struktur & Memori:
   - TRUNCATE: Menghapus isi data dan mengosongkan memori penyimpanan data, tetapi 
     STRUKTUR tabel tetap ada di database.
   - DROP: Menghapus data SEKALIGUS menghapus struktur tabel dari sistem secara permanen.

2. Mana yang Langsung Bisa Diisi?
   TRUNCATE adalah perintah yang memungkinkan kita langsung memasukkan data baru (INSERT) 
   tanpa membuat ulang tabel. Logikanya, TRUNCATE hanya "mengosongkan ruangan", sedangkan 
   DROP "merobohkan bangunannya".
*/