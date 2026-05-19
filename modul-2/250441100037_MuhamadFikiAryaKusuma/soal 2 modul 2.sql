INSERT INTO dokter
VALUES 
(1,'Arya','umum'),
(2,'Akbar','anak');

INSERT INTO pasien 
VALUES
(101, 'Ani', '1995-05-10', '0812345'),
(102, 'Budi', '1990-11-20', '0812999');

INSERT INTO rekam_medis 
VALUES
(1, 101, 1, '2023-10-01', 'Flu'), 
(2, 102, 2, '2023-10-02', 'Batuk');

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis)
VALUES (3, 101, 99, '2023-10-03', 'Demam');