create schema SALAM;

create table SALAM.mahasiswas (
    id SERIAL primary key,
    nim VARCHAR(10) unique,
    nama VARCHAR(100) not null,
    jurusan VARCHAR(100) not null,
    angkatan INT not null check (angkatan < 2026)
);

INSERT INTO SALAM.mahasiswas (nim, nama, jurusan, angkatan)
VALUES ('1237050051', 'Fauzan Ash', 'Informatika', 2023);

select * from salam.mahasiswas;

-- Error: duplicate nim
INSERT INTO SALAM.mahasiswas (nim, nama, jurusan, angkatan)
VALUES ('1237050051', 'Muhammad Fauzan', 'Informatika', 2023);

-- Error: angkatan > 2025
INSERT INTO SALAM.mahasiswas (nim, nama, jurusan, angkatan)
VALUES ('1237030001', 'Fauzan Ashshidiq', 'Fisika', 2026);

-- Fitur tambahan (view: angkatan & jumlah mahasiswa berdasarkan angkatan)
CREATE VIEW SALAM.vw_mahasiswa_angkatan AS
SELECT angkatan, COUNT(*) AS jumlah_mahasiswa
FROM SALAM.mahasiswas
GROUP BY angkatan;

INSERT INTO SALAM.mahasiswas (nim, nama, jurusan, angkatan)
VALUES
    ('1237050052', 'Ahmad Rafi', 'Informatika', 2023),
    ('1237030054', 'Siti Nurlaila', 'Fisika', 2022),
    ('1237040055', 'Andi Setiawan', 'Teknik Elektro', 2023),
    ('1237020057', 'Budi Santoso', 'Matematika', 2021),
    ('1237050058', 'Nadia Aulia', 'Informatika', 2022);

SELECT * FROM SALAM.vw_mahasiswa_angkatan;