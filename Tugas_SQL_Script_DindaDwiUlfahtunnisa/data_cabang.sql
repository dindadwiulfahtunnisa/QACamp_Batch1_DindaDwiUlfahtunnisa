USE perbankan;

/*cabang bank*/
SELECT *
FROM cabang_bank;

SELECT kode_cabang, nama_cabang, alamat_cabang
FROM cabang_bank;

INSERT INTO cabang_bank (kode_cabang, nama_cabang, alamat_cabang)
			VALUES  ('BRUS', 'Bank Rut Unit Surakarta', 'Jl. Selamat Riyadi 18');

INSERT INTO cabang_bank (kode_cabang, nama_cabang, alamat_cabang)
			VALUES  ('BRUM', 'Bank Rut Unit Magelang', 'Jl. P. Tendean 63'),
					('BRUB', 'Bank Rut Unit Boyolali', 'Jl. Ahmad Yani 45'),
                    ('BRUK', 'Bank Rut Unit Klaten', 'Jl. Suparman 23'),
                    ('BRUY', 'Bank Rut Unit Yogyakarta', 'Jl. Anggrek 21'),
                    ('BRUW', 'Bank Rut Unit Wonogiri', 'Jl. Untung Suropati 12');



UPDATE cabang_bank
SET    alamat_cabang = 'Jl. A. Yani No.23'
WHERE  kode_cabang = 'BRUW';

DELETE FROM cabang_bank
WHERE kode_cabang = 'BRUY';
