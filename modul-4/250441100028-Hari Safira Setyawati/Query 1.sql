CREATE DATABASE modul4;

CREATE TABLE dosen (
    id_dosen INT PRIMARY KEY,
    nama_dosen VARCHAR(100) NOT NULL,
    bidang_keahlian VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id_mahasiswa INT PRIMARY KEY,
    nama_mahasiswa VARCHAR(100) NOT NULL,
    program_studi VARCHAR(100) NOT NULL,
    angkatan INT NOT NULL
);

CREATE TABLE mata_kuliah (
    id_mata_kuliah VARCHAR(10) PRIMARY KEY,
    nama_mk VARCHAR(100) NOT NULL,
    sks INT NOT NULL,
    id_dosen INT NOT NULL,
    CONSTRAINT fk_mk_dosen
        FOREIGN KEY (id_dosen) REFERENCES dosen(id_dosen)
);

CREATE TABLE krs (
    id_krs INT PRIMARY KEY,
    id_mahasiswa INT NOT NULL,
    id_mata_kuliah VARCHAR(10) NOT NULL,
    semester_ambil INT NOT NULL,
    CONSTRAINT fk_krs_mahasiswa
        FOREIGN KEY (id_mahasiswa) REFERENCES mahasiswa(id_mahasiswa),
    CONSTRAINT fk_krs_mk
        FOREIGN KEY (id_mata_kuliah) REFERENCES mata_kuliah(id_mata_kuliah)
);