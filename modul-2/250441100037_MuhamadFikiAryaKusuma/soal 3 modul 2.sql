UPDATE pasien SET no_telepon = '0855555'
WHERE id_pasien = 101;

UPDATE dokter SET spesialisasi = 'gigi'
WHERE id_dokter = 1;

DELETE FROM rekam_medis 
WHERE id_rekam = 2;