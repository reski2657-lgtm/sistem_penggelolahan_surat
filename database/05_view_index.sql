-- 1. Membuat VIEW untuk Laporan Disposisi Aktif
CREATE OR REPLACE VIEW v_laporan_disposisi AS
SELECT 
    d.id_disposisi,
    sm.nomor_surat,
    sm.perihal,
    d.instruksi,
    d.status_disposisi,
    d.tanggal_disposisi
FROM disposisi d
JOIN surat_masuk sm ON d.id_surat_masuk = sm.id_surat_masuk;

-- Cara memanggil view: SELECT * FROM v_laporan_disposisi;


-- 2. Membuat INDEX untuk mempercepat pencarian surat berdasarkan nomor surat dan tanggal
CREATE INDEX idx_nomor_surat_masuk ON surat_masuk(nomor_surat);
CREATE INDEX idx_tanggal_terima ON surat_masuk(tanggal_terima);
CREATE INDEX idx_nomor_surat_keluar ON surat_keluar(nomor_surat);
