USE perbankan;

SELECT *
FROM rekening;

SELECT no_rekening, kode_cabang, pin, saldo
FROM rekening;

INSERT INTO rekening (no_rekening, kode_cabang, pin, saldo)
			VALUES	 (101, 'BRUS', 1111, 500000);
            
INSERT INTO rekening (no_rekening, kode_cabang, pin, saldo)
			VALUES	 (102, 'BRUS', 2222, 350000),
					 (103, 'BRUS', 3333, 750000),
                     (104, 'BRUM', 4444, 900000),
                     (105, 'BRUM', 5555, 2000000),
                     (106, 'BRUS', 6666, 3000000);