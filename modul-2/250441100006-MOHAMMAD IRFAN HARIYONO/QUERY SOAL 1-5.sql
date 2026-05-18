CREATE DATABASE klinik_sehat_bersama;
USE klinik_sehat_bersama;

CREATE TABLE dokter (
id_dokter INT PRIMARY KEY,
nama_dokter VARCHAR (100),
spesialisasi VARCHAR (100)
);

CREATE TABLE pasien (
id_pasien INT PRIMARY KEY,
nama_pasien VARCHAR (100),
tanggal_lahir DATE,
no_telepon VARCHAR (12)
);

CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,

FOREIGN KEY (id_pasien)
REFERENCES pasien (id_pasien)
ON DELETE RESTRICT,
FOREIGN KEY (id_dokter)
REFERENCES dokter (id_dokter)
ON DELETE RESTRICT
);

INSERT INTO dokter VALUES
(1, 'Dr.Irfan', 'Umum'),
(2, 'Dr.Rina', 'Anak');
INSERT INTO pasien VALUES
(101, 'Sari', '1995-05-10', '081234567892'),
(102, 'Rudi', '2012-10-20', '082134567893');
INSERT INTO rekam_medis VALUES
(1, 101, 1, '2025-10-01', 'Flu Berat'),
(2, 102, 2, '2025-11-02', 'Batuk');

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(3, 101, 99, '2025-10-04', 'Pusing');

UPDATE pasien
SET no_telepon = '082311456765'
WHERE id_pasien = 101;

UPDATE dokter
SET spesialisasi = 'Penyakit Dalam'
WHERE id_dokter = 2;

DELETE FROM rekam_medis
WHERE id_rekam = 1;

DROP TABLE rekam_medis;

CREATE TABLE rekam_medis (
id_rekam INT PRIMARY KEY,
id_pasien INT,
id_dokter INT,
tanggal_periksa DATE,
diagnosis TEXT,

FOREIGN KEY (id_pasien)
REFERENCES pasien (id_pasien)
ON DELETE RESTRICT,
FOREIGN KEY (id_dokter)
REFERENCES dokter (id_dokter)
ON DELETE CASCADE
);

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis)
VALUES 
(10, 101, 2, '2023-12-01', 'Demam Ringan'),
(11, 102, 2, '2023-12-05', 'Kontrol Rutin');

DELETE FROM dokter
WHERE id_dokter = 2;

SELECT * FROM rekam_medis;

DROP TABLE IF EXISTS rekam_medis;

CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien)
    REFERENCES pasien(id_pasien) 
    ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter)
    REFERENCES dokter(id_dokter)
    ON DELETE RESTRICT
);

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis)
VALUES 
(30, 101, 1, '2024-05-01', 'Gejala Typus'),
(31, 102, 1, '2024-05-02', 'Alergi Makanan');

TRUNCATE TABLE rekam_medis;

TRUNCATE TABLE pasien;