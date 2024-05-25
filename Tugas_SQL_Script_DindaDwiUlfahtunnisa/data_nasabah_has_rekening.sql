USE perbankan;

SELECT *
FROM nasabah_has_rekening;

SELECT id_nasabah, no_rekening
FROM nasabah_has_rekening;

INSERT INTO nasabah_has_rekening (id_nasabah, no_rekening)
			VALUES  (1, 104);

INSERT INTO nasabah_has_rekening (id_nasabah, no_rekening)
			VALUES  (2, 103),
					(3, 105),
                    (4, 106),
                    (5, 101),
                    (6, 102);
                    
