CREATE TABLE umpan_balik (
    id_komentar INT AUTO_INCREMENT PRIMARY KEY,
    isi_komentar TEXT
);

/* FOKUS LOGIKA NO. 4:
1. Logika Pemilihan TEXT:
   TEXT dipilih karena komentar pengguna panjangnya tidak menentu. Secara teknis, tipe TEXT 
   disimpan di luar tabel utama (off-page storage). Hal ini menjaga tabel utama tetap ramping 
   sehingga proses scan data lain (seperti ID atau Tanggal) tetap cepat tanpa terbebani 
   besarnya ukuran teks komentar.

2. Kapan Menggunakan CHAR?
   Gunakan CHAR ketika panjang data SELALU TETAP (fixed-length).
   Contoh Kasus: Kode negara (ID, US, SG) yang selalu 2 karakter, atau kode Jenis Kelamin (L/P).
   Penjelasannya: CHAR lebih efisien dan cepat karena database tidak perlu menghitung 
   panjang karakter setiap kali data dibaca, posisi memorinya sudah dipesan secara statis.
*/