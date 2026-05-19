SELECT 
MIN(sks) AS sks_minimal,
MAX(sks) AS sks_maksimal,
AVG(sks) AS sks_rata_rata,
count(kode_mk) AS Total_Mata_Kuliah
FROM mata_kuliah;