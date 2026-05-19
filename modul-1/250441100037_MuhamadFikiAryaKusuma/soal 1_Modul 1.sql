CREATE TABLE koleksi_langka (
    id_buku BIGINT PRIMARY KEY,
    judul VARCHAR(250),
    tahun_terbit YEAR,
    estimasi_harga DECIMAL(19, 4)
);

/*Penjelasan Logika:
1. Mengapa BIGINT? 
   Dalam sistem skala besar, jumlah data bisa melebihi 2,1 miliar baris (batas maksimal INT). 
   BIGINT menyediakan ruang hingga 9 kuintiliun baris, sehingga mencegah error "out of range" 
   di masa depan saat koleksi buku terus bertambah.

2. Konsekuensi Tanpa PRIMARY KEY:
   Jika id_buku tidak menjadi PRIMARY KEY, maka sistem akan mengizinkan adanya ID yang sama 
   (duplikasi). Hal ini merusak integritas data karena kita tidak bisa mengidentifikasi satu 
   buku secara spesifik. Secara performa, database juga akan melambat karena tidak memiliki 
   indeks unik untuk mempercepat pencarian.
*/