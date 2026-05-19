SELECT AVG(tabel_temp.nilai_angka) AS rata_rata_nilai
FROM (
    SELECT nilai_angka
    FROM nilai
    WHERE kode_mk IN ('MK01', 'MK02')
) AS tabel_temp;