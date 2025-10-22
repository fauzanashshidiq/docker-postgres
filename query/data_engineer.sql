SET ROLE data_engineer;

CREATE TABLE SALAM.dosen (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    nip VARCHAR(20) UNIQUE
);

ALTER TABLE SALAM.dosen
ADD COLUMN prodi VARCHAR(100);

INSERT INTO SALAM.dosen (nama, nip, prodi)
VALUES ('Dosen IF', '123', 'Informatika');

SELECT * FROM SALAM.dosen;

UPDATE SALAM.dosen
SET prodi = 'Teknik Informatika'
WHERE nip = '123';

DROP TABLE SALAM.dosen;

reset role;