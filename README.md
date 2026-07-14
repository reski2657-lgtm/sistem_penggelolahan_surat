# Sistem Informasi Pengelolaan Surat Berbasis Web

## Deskripsi

Sistem Informasi Pengelolaan Surat adalah aplikasi berbasis web yang dirancang untuk membantu proses administrasi surat secara digital. Sistem ini memudahkan pengguna dalam membuat, mengelola, menyimpan, mencari, dan mencetak surat sehingga proses administrasi menjadi lebih efektif, efisien, dan terstruktur.

Aplikasi ini dikembangkan sebagai proyek mata kuliah **Pemrograman Web dan Sistem Database** Program Studi Informatika, Fakultas Ilmu Komputer, Universitas Mega Buana Palopo.

---

## Tujuan

- Mempermudah proses pembuatan surat.
- Menyimpan data surat secara aman di dalam database.
- Mempermudah pencarian arsip surat.
- Mengurangi kesalahan administrasi.
- Menghasilkan laporan surat secara otomatis.

---

## Fitur Utama

- Login Admin
- Manajemen Data Pengguna
- Manajemen Jenis Surat
- Manajemen Surat Masuk
- Manajemen Surat Keluar
- CRUD (Create, Read, Update, Delete)
- Pencarian Data Surat
- Cetak Surat
- Laporan Data Surat

---

## Teknologi yang Digunakan

- PHP
- MySQL / MariaDB
- HTML5
- CSS3
- JavaScript
- Bootstrap
- XAMPP
- Visual Studio Code

---

## Kebutuhan Sistem

### Hardware

- Processor Intel Core i3 atau setara
- RAM Minimal 4 GB
- SSD/HDD Minimal 128 GB

### Software

- Windows 10/11
- XAMPP
- PHP
- MySQL
- Visual Studio Code
- Google Chrome / Mozilla Firefox

---

## Struktur Database

Database terdiri dari beberapa tabel utama:

### users
Menyimpan data pengguna sistem.

- id_user
- nama
- username
- password
- level

### jenis_surat

- id_jenis
- nama_jenis
- keterangan

### surat_keluar

- id_surat
- nomor_surat
- tanggal_surat
- perihal
- tujuan
- isi_surat
- id_jenis

### surat_masuk

- id_surat_masuk
- nomor_surat
- tanggal_terima
- pengirim
- perihal
- keterangan

---

## Cara Menjalankan Program

1. Install XAMPP.
2. Aktifkan Apache dan MySQL.
3. Salin folder project ke:

```
htdocs/
```

4. Import database melalui phpMyAdmin.
5. Jalankan browser dan buka:

```
http://localhost/nama_project
```

6. Login menggunakan akun admin.

---

## Alur Sistem

1. Admin Login
2. Mengelola Data Pengguna
3. Mengelola Jenis Surat
4. Mengelola Surat Masuk
5. Mengelola Surat Keluar
6. Melakukan Pencarian Surat
7. Mencetak Surat
8. Mencetak Laporan

---

## Metode Pengembangan

Metode pengembangan sistem menggunakan **Waterfall** yang terdiri dari:

- Analisis Kebutuhan
- Perancangan Sistem
- Implementasi
- Pengujian
- Pemeliharaan

---

## Kelebihan Sistem

- Berbasis Web
- Mudah digunakan
- Database terintegrasi
- Mendukung CRUD
- Pencarian cepat
- Cetak surat
- Cetak laporan
- Data tersimpan secara aman

---

## Pengembangan Selanjutnya

- Multi User
- Hak Akses Pengguna
- Nomor Surat Otomatis
- Export PDF
- Tanda Tangan Digital
- Dashboard Statistik
- Backup Database
- Filter Data Surat
- Akses melalui Internet

---

## Tim Pengembang

Kelompok V

- Elsa (IK2511008)
- Muhammad Fathir (IK2511019)
- Reski Adrian (IK2511067)
- Sitti Anizya Azila Baso (IK2511038)

Program Studi Informatika

Fakultas Ilmu Komputer

Universitas Mega Buana Palopo

Tahun Ajaran 2025–2026

---

## Lisensi

Project ini dibuat untuk keperluan akademik sebagai tugas mata kuliah **Pemrograman Web dan Sistem Database**.
