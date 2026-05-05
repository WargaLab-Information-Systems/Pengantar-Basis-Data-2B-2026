INSERT INTO dokter
(id_dokter, nama_dokter, spesialisasi)
VALUES 
(1, 'dr. sultan', 'dokter gigi'),
(2, 'dr. ririn', 'dokter hewan');

SELECT * FROM dokter;

INSERT INTO pasien
(id_pasien, nama_pasien, tanggal_lahir, no_telp)
VALUES
(1, 'derren', '2026-06-23', 081234567),
(2, 'saad', '2026-09-01', 083444411);

SELECT * FROM pasien;

INSERT INTO rekam_medis
(id_rekam, id_dokter, id_pasien, tanggal_periksa, diagnosis)
VALUES
(1, 1, 1, '2026-01-09', 'gigi lubang satu'),
(2, 2, 2, '2026-01-21', 'hewan peliharaannya kembung');

SELECT * FROM rekam_medis;

INSERT INTO rekam_medis
(id_rekam, id_dokter, id_pasien, tanggal_periksa, diagnosis)
VALUES
(5, 3, 1, '2026-01-01', 'lupa makan')