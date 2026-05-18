SELECT sks,
    COUNT(*) AS Total_MK,
    SUM(sks) AS Total_SKS
FROM mata_kuliah
GROUP BY sks
HAVING COUNT(*) > 1;
