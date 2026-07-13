-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2026 at 07:43 PM
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

-- --------------------------------------------------------

--
-- Table structure for table disposisi
--

CREATE TABLE disposisi (
  id_disposisi int(11) NOT NULL,
  id_surat_masuk int(11) DEFAULT NULL,
  id_pengguna int(11) DEFAULT NULL,
  catatan text DEFAULT NULL,
  status_disposisi varchar(30) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table kategori_surat
--

CREATE TABLE kategori_surat (
  id_kategori int(11) NOT NULL,
  kode_kategori varchar(10) NOT NULL,
  nama_kategori varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table pengguna
--

CREATE TABLE pengguna (
  id_pengguna int(11) NOT NULL,
  username varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  nama_lengkap varchar(100) NOT NULL,
  jabatan varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table surat_keluar
--

CREATE TABLE surat_keluar (
  id_surat_keluar int(11) NOT NULL,
  no_surat varchar(50) NOT NULL,
  tujuan_surat varchar(100) NOT NULL,
  perihal text NOT NULL,
  tanggal_surat date NOT NULL,
  id_kategori int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table surat_masuk
--

CREATE TABLE surat_masuk (
  id_surat_masuk int(11) NOT NULL,
  no_surat varchar(50) NOT NULL,
  asal_surat varchar(100) NOT NULL,
  perihal text NOT NULL,
  tanggal_surat date NOT NULL,
  tanggal_terima date NOT NULL,
  id_kategori int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table disposisi
--
ALTER TABLE disposisi
  ADD PRIMARY KEY (id_disposisi),
  ADD KEY id_surat_masuk (id_surat_masuk),
  ADD KEY id_pengguna (id_pengguna);

--
-- Indexes for table kategori_surat
--
ALTER TABLE kategori_surat
  ADD PRIMARY KEY (id_kategori),
  ADD UNIQUE KEY kode_kategori (kode_kategori);

--
-- Indexes for table pengguna
--
ALTER TABLE pengguna
  ADD PRIMARY KEY (id_pengguna),
  ADD UNIQUE KEY username (username);

--
-- Indexes for table surat_keluar
--
ALTER TABLE surat_keluar
  ADD PRIMARY KEY (id_surat_keluar),
  ADD UNIQUE KEY no_surat (no_surat),
  ADD KEY id_kategori (id_kategori);

--
-- Indexes for table surat_masuk
--
ALTER TABLE surat_masuk
  ADD PRIMARY KEY (id_surat_masuk),
  ADD UNIQUE KEY no_surat (no_surat),
  ADD KEY id_kategori (id_kategori),
  ADD KEY idx_no_surat_masuk (no_surat);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table disposisi
--
ALTER TABLE disposisi
  MODIFY id_disposisi int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table kategori_surat
--
ALTER TABLE kategori_surat
  MODIFY id_kategori int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table pengguna
--
ALTER TABLE pengguna
  MODIFY id_pengguna int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table surat_keluar
--
ALTER TABLE surat_keluar
  MODIFY id_surat_keluar int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table surat_masuk
--
ALTER TABLE surat_masuk
  MODIFY id_surat_masuk int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table disposisi
--
ALTER TABLE disposisi
  ADD CONSTRAINT disposisi_ibfk_1 FOREIGN KEY (id_surat_masuk) REFERENCES surat_masuk (id_surat_masuk) ON DELETE CASCADE,
  ADD CONSTRAINT disposisi_ibfk_2 FOREIGN KEY (id_pengguna) REFERENCES pengguna (id_pengguna) ON DELETE CASCADE;

--
-- Constraints for table surat_keluar
--
ALTER TABLE surat_keluar
  ADD CONSTRAINT surat_keluar_ibfk_1 FOREIGN KEY (id_kategori) REFERENCES kategori_surat (id_kategori) ON DELETE SET NULL;

--
-- Constraints for table surat_masuk
--
ALTER TABLE surat_masuk
  ADD CONSTRAINT surat_masuk_ibfk_1 FOREIGN KEY (id_kategori) REFERENCES kategori_surat (id_kategori) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
