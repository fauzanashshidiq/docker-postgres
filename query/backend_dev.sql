SET ROLE backend_dev;

SELECT * FROM SALAM.mahasiswas;

INSERT INTO SALAM.mahasiswas (nim, nama, jurusan, angkatan)
VALUES ('1237050001', 'Rukmana', 'Kimia', 2020);

update SALAM.mahasiswas set nama = 'Rukmana Ramadhan' where nim = '1237050001';

DELETE FROM SALAM.mahasiswas WHERE nim = '1237050001';

-- Error: role backend_dev hanya crud, tidak bisa membuat tabel
CREATE TABLE SALAM.dosen (
	id SERIAL primary key,
    nip VARCHAR(10) unique,
    nama VARCHAR(100) not null
);

reset role;