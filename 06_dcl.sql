-- 1. Membuat user baru untuk staf admin surat
CREATE USER 'admin_surat'@'localhost' IDENTIFIED BY 'PasswordRahasia123*';

-- 2. Memberikan hak akses penuh (CRUD) hanya pada tabel surat dan disposisi
GRANT SELECT, INSERT, UPDATE, DELETE ON database_surat.surat_masuk TO 'admin_surat'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON database_surat.surat_keluar TO 'admin_surat'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON database_surat.disposisi TO 'admin_surat'@'localhost';

-- 3. Memberikan hak akses baca saja (Read-Only) pada tabel pengguna/pegawai
GRANT SELECT ON database_surat.pengguna TO 'admin_surat'@'localhost';

-- 4. Menerapkan perubahan hak akses
FLUSH PRIVILEGES;
