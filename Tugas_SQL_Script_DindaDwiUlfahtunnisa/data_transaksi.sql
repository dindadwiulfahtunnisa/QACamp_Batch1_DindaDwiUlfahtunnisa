USE perbankan;

SELECT *
FROM transaksi;

SELECT no_transaksi, no_rekening, id_nasabah, jenis_transaksi, tanggal, jumlah
FROM transaksi;

INSERT INTO transaksi (no_rekening, id_nasabah, jenis_transaksi, tanggal, jumlah)
			VALUES 	  (105, 3, 'debit', '2009-11-10', 50000);

DELETE FROM transaksi
WHERE id_nasabah = 3;

TRUNCATE TABLE transaksi;

INSERT INTO transaksi (no_rekening, id_nasabah, jenis_transaksi, tanggal, jumlah)
			VALUES 	  (103, 2, 'debit', '2009-11-10', 40000),
					  (101, 5, 'kredit', '2009-11-12', 20000),
                      (106, 4, 'debit', '2009-11-13', 50000),
                      (101, 5, 'kredit', '2009-11-13', 30000),
                      (104, 1, 'kredit', '2009-11-15', 200000),
                      (102, 6, 'kredit', '2009-11-15', 150000),
                      (102, 6, 'debit', '2009-11-16', 20000),
                      (105, 3, 'kredit', '2009-11-18', 50000),
                      (106, 4, 'debit', '2009-11-19', 100000),
                      (103, 2, 'debit', '2009-11-19', 100000),
                      (104, 1, 'debit', '2009-11-19', 50000);

SELECT nasabah.nama_nasabah,
	   nasabah.alamat_nasabah,
       transaksi.jenis_transaksi,
       transaksi.jumlah
FROM nasabah, transaksi
WHERE nasabah.id_nasabah = transaksi.id_nasabah AND
	  jenis_transaksi = 'kredit'
ORDER BY nama_nasabah ASC;
					
SELECT nasabah.nama_nasabah,
	   nasabah.alamat_nasabah,
       transaksi.jenis_transaksi,
       transaksi.jumlah
FROM nasabah
INNER JOIN transaksi ON nasabah.id_nasabah = transaksi.id_nasabah
WHERE jenis_transaksi = 'kredit'
ORDER BY nama_nasabah DESC;

SELECT transaksi.tanggal,
	   nasabah.nama_nasabah,
       transaksi.jenis_transaksi,
       transaksi.jumlah
FROM nasabah, transaksi
WHERE nasabah.id_nasabah = transaksi.id_nasabah AND
	  tanggal BETWEEN '2009-11-15' AND '2009-11-20'
ORDER BY tanggal, nama_nasabah ASC;
