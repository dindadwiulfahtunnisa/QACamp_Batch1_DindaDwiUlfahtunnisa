USE perbankan;

/*nasabah*/
SELECT *
FROM nasabah;

SELECT id_nasabah, nama_nasabah, alamat_nasabah
FROM nasabah;

INSERT INTO nasabah (id_nasabah, nama_nasabah, alamat_nasabah)
			VALUES  (1, 'Sutopo', 'Jl. Jendral Sudirman 12');

INSERT INTO nasabah (id_nasabah, nama_nasabah, alamat_nasabah)
			VALUES  (2, 'Maryati', 'Jl. MT. Haryono 31'),
					(3, 'Suparman', 'Jl. Hasanudin 81'),
                    (4, 'Kartika Padmasari', 'Jl. Manggis 15'),
                    (5, 'Budi Eko Prayogo', 'Jl. Kantil 30'),
                    (6, 'Satria Eka Jaya', 'Jl. Slamet Riyadi 45'),
                    (7, 'Indri Hapsari', 'Jl. Sutoyo 5'),
                    (8, 'Sari Murti', 'Jl. Pangandaran 11'),
                    (9, 'Canka Lokananta', 'Jl. Tidar 86'),
                    (10, 'Budi Murtono', 'Jl. Merak 22');
                    
UPDATE nasabah
SET    alamat_nasabah = 'Jl. Slamet Riyadi No.34'
WHERE  nama_nasabah = 'Indri Hapsari';

DELETE FROM nasabah
WHERE nama_nasabah = 'sari Murti';

INSERT INTO nasabah (id_nasabah, nama_nasabah, alamat_nasabah)
			VALUES  (8, 'Sari Murti', 'Jl. Pangandaran 11');

UPDATE nasabah
SET    alamat_nasabah = 'Jl. Slamet Riyadi No.34',
	   modified_date = NOW(),
       modified_by = 'Super Admin'
WHERE  nama_nasabah = 'Indri Hapsari';

DELETE FROM nasabah
WHERE nama_nasabah = 'sari Murti';