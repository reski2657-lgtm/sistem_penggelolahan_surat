-- Memulai transaksi
START TRANSACTION;

-- Langkah 1: Memasukkan data surat masuk baru
INSERT INTO surat_masuk (nomor_surat, asal_surat, perihal, tanggal_surat, tanggal_terima, id_pengguna) 
VALUES ('005/SRT-Msk/VII/2026', 'Dinas Pendidikan', 'Undangan Rapat Koordinasi', '2026-07-10', '2026-07-13', 1);

-- Mengambil ID terakhir yang baru saja dimasukkan untuk digunakan di tabel disposisi
SET @last_surat_id = LAST_INSERT_ID();

-- Langkah 2: Membuat lembar disposisi awal untuk surat tersebut
INSERT INTO disposisi (id_surat_masuk, instruksi, status_disposisi, tanggal_disposisi) 
VALUES (@last_surat_id, 'Harap dihadiri dan diwakilkan jika berhalangan', 'Pending', '2026-07-13');

-- Jika semua langkah di atas berhasil tanpa error, simpan permanen ke database
COMMIT;

-- Keterangan Opsional: 
-- Jika di tengah jalan ada error/kendala run-time, gunakan: ROLLBACK;
