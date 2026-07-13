-- 1. Menampilkan semua surat masuk beserta nama pegawai yang menerima/menginputnya
SELECT 
    sm.id_surat_masuk, 
    sm.nomor_surat, 
    sm.perihal, 
    sm.tanggal_terima, 
    p.nama_lengkap AS diinput_oleh
FROM surat_masuk sm
INNER JOIN pengguna p ON sm.id_pengguna = p.id_pengguna;

-- 2. Menampilkan statistik jumlah surat masuk berdasarkan kategori/jenis surat
SELECT 
    kategori_surat, 
    COUNT(*) AS total_surat 
FROM surat_masuk 
GROUP BY kategori_surat;

-- 3. Subquery: Menampilkan surat masuk yang belum pernah didisposisikan sama sekali
SELECT * FROM surat_masuk 
WHERE id_surat_masuk NOT IN (SELECT DISTINCT id_surat_masuk FROM disposisi);
