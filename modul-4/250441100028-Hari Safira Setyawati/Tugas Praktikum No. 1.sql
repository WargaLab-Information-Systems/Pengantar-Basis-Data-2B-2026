SELECT nama_mk, sks, nama_dosen
FROM mata_kuliah AS mk
JOIN dosen AS d
ON mk.id_dosen = d.id_dosen
WHERE d.bidang_keahlian IN ('Pemrograman', 'Basis Data');