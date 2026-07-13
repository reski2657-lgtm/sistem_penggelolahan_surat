-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2026 at 07:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: db_pengolahsurat
--
CREATE DATABASE IF NOT EXISTS db_pengolahsurat DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE db_pengolahsurat;

--
-- Dumping data for table kategori_surat
--

INSERT INTO kategori_surat (id_kategori, kode_kategori, nama_kategori) VALUES
(1, 'SRT-01', 'Dinas'),
(2, 'SRT-02', 'Undangan');

--
-- Dumping data for table pengguna
--

INSERT INTO pengguna (id_pengguna, username, password, nama_lengkap, jabatan) VALUES
(1, 'admin', 'admin123', 'Administrator', 'Kepala Tata Usaha'),
(2, 'admin_tu', 'password123', 'Siti Aminah, A.Md.', 'Staf Tata Usaha'),
(3, 'kepala_tu', 'kepala2026', 'Hendra Wijaya, S.Kom.', 'Kepala Tata Usaha'),
(4, 'pimpinan', 'bosutama', 'Dr. Ir. Ahmad Subagja, M.T.', 'Kepala Instansi'),
(5, 'kabid_arsip', 'arsipjaya', 'Rian Herdian, S.Sos.', 'Kepala Bidang Kearsipan'),
(6, 'staf_umum', 'umum123', 'Dewi Lestari', 'Staf Urusan Umum');

--
-- Dumping data for table surat_masuk
--

INSERT INTO surat_masuk (id_surat_masuk, no_surat, asal_surat, perihal, tanggal_surat, tanggal_terima, id_kategori) VALUES
(7, '29873762783', 'hongkong', 'kangen', '7888-12-09', '0000-00-00', 1),
(8, '738182881', 'singapura', 'kangen berat', '2028-08-07', '2028-01-08', 2),
(9, '3736767576135', 'indonesia', 'butuh dana ', '2030-02-09', '2030-01-10', 2),
(10, '62651654214', 'malangke', 'bayar hutang', '2007-07-08', '2007-08-09', 1),
(11, '38786386', 'cina', 'butuh dana cepat', '2089-06-05', '2089-09-08', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
