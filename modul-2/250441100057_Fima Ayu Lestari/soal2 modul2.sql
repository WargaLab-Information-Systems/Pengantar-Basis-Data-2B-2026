INSERT INTO dokter VALUES
(1, 'Dr. Andi', 'Umum');
(2, 'Dr. Sinta', 'Gigi');

SELECT * FROM dokter;

INSERT INTO pasien VALUES
(1, 'Budi', '2000-05-10', '081234567890'),
(2, 'Sari', '1998-03-15', '082345678901');

SELECT * FROM pasien;

INSERT INTO rekam_medis VALUES
(1, 1, 1, '2025-04-01', 'Demam'),
(2, 2, 2, '2025-04-02', 'Sakit Gigi');

INSERT INTO rekam_medis VALUES
(3, 1, 99, '2025-04-03', 'Flu');

SELECT * FROM rekam_medis;
