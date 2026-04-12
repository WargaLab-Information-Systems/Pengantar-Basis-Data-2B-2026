UPDATE pasien
SET no_telp = 081234567
WHERE id_pasien = 1

UPDATE dokter
SET spesialisasi = 'dokter kulit'
WHERE id_dokter = 2

DELETE FROM rekam_medis
WHERE id_rekam = 2

SELECT * FROM rekam_medis;

DROP TABLE rekam_medis;