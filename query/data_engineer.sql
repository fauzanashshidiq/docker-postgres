SET ROLE data_engineer;

CREATE TABLE SALAM.dosens (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    nip VARCHAR(20) UNIQUE
);

ALTER TABLE SALAM.dosens
ADD COLUMN prodi VARCHAR(100);

INSERT INTO SALAM.dosens (nama, nip, prodi)
VALUES ('Dosen IF', '123', 'Informatika');

SELECT * FROM SALAM.dosens;

UPDATE SALAM.dosens
SET prodi = 'Teknik Informatika'
WHERE nip = '123';

DROP TABLE SALAM.dosens;

reset role;