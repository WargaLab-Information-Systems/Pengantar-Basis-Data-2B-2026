CREATE TABLE pelanggan_setia (
nomor_identitas INT
);

ALTER TABLE pelanggan_setia 
MODIFY COLUMN nomor_identitas VARCHAR(20);

/* Penjelasan Logika NO. 2:
1. Risiko Perubahan Tipe Data:
   Saat mengubah INT ke VARCHAR, risiko kehilangan data fisik rendah karena angka bisa 
   otomatis terbaca sebagai teks. Namun, risikonya Dengan VARCHAR, kolom identitas berisiko kemasukan data "kotor" seperti spasi yang tidak sengaja, karakter aneh, atau teks kosong (" "), yang sebelumnya dicegah secara otomatis oleh tipe data INT.

2. Mengapa Tidak DROP TABLE?
   Dalam dunia nyata, tabel berisi data pelanggan yang sudah terkumpul bertahun-tahun. 
   Melakukan DROP berarti menghapus seluruh aset data perusahaan. ALTER TABLE digunakan 
   agar struktur bisa berevolusi (mendukung paspor internasional/alfanumerik) tanpa 
   menghilangkan data yang sudah ada.
*/
 