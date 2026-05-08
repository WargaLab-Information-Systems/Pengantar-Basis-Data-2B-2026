SELECT angkatan, COUNT(*) AS Total_mahasiswa
FROM mahasiswa 
GROUP BY angkatan
HAVING COUNT(*) > 1
ORDER BY Total_mahasiswa DESC;