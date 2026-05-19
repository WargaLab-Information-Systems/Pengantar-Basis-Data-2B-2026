SELECT nama_mahasiswa, id_mata_kuliah
FROM mahasiswa AS m
left JOIN krs AS k 
ON m.id_mahasiswa = k.id_mahasiswa;