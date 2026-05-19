SELECT nama_barang,stok,
case
	when stok = 0 AND kategori = 'Aksesoris' THEN 'Urgent - Restock Segera'
	when stok < 10 AND (kategori = 'Laptop' or kategori = 'Smartphone') then'High Priority'
	when stok BETWEEN 10 AND 50 then 'Medium'
ELSE 'Aman'
END AS prioritas_restock
FROM inventaris_gudang_pusat
ORDER BY stok ASC;

