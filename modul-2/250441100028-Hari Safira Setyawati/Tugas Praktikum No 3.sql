UPDATE pasien
SET no_telepon = '08135792468'
WHERE id_pasien = 1;

UPDATE dokter
SET spesialisasi = 'Umum'
WHERE id_dokter = 2;

DELETE FROM rekam_medis
WHERE id_rekam = 1;

SELECT * FROM rekam_medis;

UPDATE dokter
SET spesialis = 'mata'
WHERE id_dokter = 1;

DELETE FROM rekam_medis
WHERE id_rekam = 1;