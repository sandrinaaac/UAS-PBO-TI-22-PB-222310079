-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 18 Jan 2024 pada 05.07
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey_smartcity_semarang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daf_aplikasi`
--

CREATE TABLE `daf_aplikasi` (
  `id_apk` varchar(10) NOT NULL,
  `nama_apk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `daf_aplikasi`
--

INSERT INTO `daf_aplikasi` (`id_apk`, `nama_apk`) VALUES
('a001', 'Web smartcity.semarangkota(Smart City)'),
('a002', 'Lapor Hendi (Smart Governance)'),
('a003', 'Tanggap Darurat (Smart Governance)'),
('a004', 'I-Jus Melon (Smart Governance)'),
('a005', 'E-Kinerja (Smart Governance)'),
('a006', 'Register online Dispendukcapil (Smart Governance)'),
('a007', 'JAGA (Smart Living)'),
('a008', 'Kartu Semarang (Smart Living)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban`
--

CREATE TABLE `jawaban` (
  `id_jawaban` int NOT NULL,
  `kategori_jawaban` varchar(15) NOT NULL,
  `skor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jawaban`
--

INSERT INTO `jawaban` (`id_jawaban`, `kategori_jawaban`, `skor`) VALUES
(301, 'sangat puas', 10),
(302, 'puas', 8),
(303, 'cukup puas', 6),
(304, 'kurang puas', 4),
(305, 'tidak puas', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama_lengkap`, `alamat`) VALUES
('327101615', 'Risma Handayani', ' Jl. Taman Seteran Barat No 1 SMG Nomor telepon 024 3552594.15 Kelurahan'),
('327101651', 'Nurul Fikry Solakhudin', 'Jl. Taman Sompok 11 SMG Nomor Telp 024 8449641.10 Kelurahan'),
('327101679', 'Sandrina Chaerunnisa', 'Jl. Barito No. 5 SMG Nomor telepon 024 8451868.10 Kelurahan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan_db`
--

CREATE TABLE `pertanyaan_db` (
  `id_pertanyaan` int NOT NULL,
  `pertanyaan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `pertanyaan_db`
--

INSERT INTO `pertanyaan_db` (`id_pertanyaan`, `pertanyaan`) VALUES
(201, 'Apakah aplikasi ini telah membantu anda dalam kebutuhan sehari-hari?'),
(202, 'Apakah anda puas dengan kemudahan penggunaan aplikasi ini?'),
(203, 'Apakah anda puas dengan keakuratan informasi yang disajikan oleh aplikasi ini?'),
(204, 'Apakah anda puas dengan layanan kinerja aplikasi ini?'),
(205, 'Bagaimana tanggapan anda terhadap efektivitas aplikasi ini dalam memberikan kemudahan?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `survey`
--

CREATE TABLE `survey` (
  `id_survey` int NOT NULL,
  `NIK` int NOT NULL,
  `id_apk` int NOT NULL,
  `id_pertanyaan` int NOT NULL,
  `id_jawaban` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daf_aplikasi`
--
ALTER TABLE `daf_aplikasi`
  ADD PRIMARY KEY (`id_apk`);

--
-- Indeks untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pertanyaan_db`
--
ALTER TABLE `pertanyaan_db`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indeks untuk tabel `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id_survey`),
  ADD UNIQUE KEY `NIK` (`NIK`),
  ADD UNIQUE KEY `id_apk` (`id_apk`),
  ADD UNIQUE KEY `id_pertanyaan` (`id_pertanyaan`),
  ADD UNIQUE KEY `id_jawaban` (`id_jawaban`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `survey`
--
ALTER TABLE `survey`
  MODIFY `id_survey` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
