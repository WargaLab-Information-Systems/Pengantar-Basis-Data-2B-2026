DROP TABLE rekam_medis

CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY,
id_dokter INT,
id_pasien INT,
tanggal_periksa DATE,
diagnosis TEXT,

FOREIGN KEY (id_dokter)
REFERENCES dokter(id_dokter)
ON DELETE CASCADE,

FOREIGN KEY (id_pasien)
REFERENCES pasien(id_pasien)
ON DELETE RESTRICT
);

INSERT INTO rekam_medis
(id_rekam, id_dokter, id_pasien, tanggal_periksa, diagnosis)
VALUES
(3, 1, 1, '2026-01-09', 'gigi goyang');

TRUNCATE TABLE rekam_medis;

TRUNCATE TABLE pasien;