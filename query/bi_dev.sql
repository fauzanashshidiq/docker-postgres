SET ROLE bi_dev;

SELECT * FROM SALAM.mahasiswas;

-- Error: role bi_dev hanya bisa read/select
INSERT INTO SALAM.mahasiswas (nim, nama, jurusan, angkatan)
VALUES ('1237050001', 'Rukmana', 'Kimia', 2020);

-- Error: role bi_dev hanya bisa read/select
update SALAM.mahasiswas set nama = 'Fauzan Ashshidiq' where nim = '1237050051';

-- Error: role bi_dev hanya bisa read/select
DELETE FROM SALAM.mahasiswas WHERE nim = '1237050051';

reset role;