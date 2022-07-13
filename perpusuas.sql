-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 05:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusuas`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `buku_id` int(11) NOT NULL,
  `nama_buku` varchar(30) NOT NULL,
  `halaman` int(11) NOT NULL,
  `poin` int(11) NOT NULL,
  `penulis_id` int(11) NOT NULL,
  `tipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`buku_id`, `nama_buku`, `halaman`, `poin`, `penulis_id`, `tipe_id`) VALUES
(22, 'TIK', 80, 10, 4232, 109),
(23, 'SI', 81, 12, 2131, 110),
(24, 'Indo', 82, 13, 2871, 109),
(25, 'Sunda', 83, 14, 2111, 110),
(26, 'Inggris', 84, 15, 2471, 109),
(27, 'IPS', 85, 16, 4812, 110),
(28, 'IPS', 86, 17, 8172, 109),
(29, 'MI', 87, 18, 78127, 110);

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `penulis_id` int(11) NOT NULL,
  `nama_penulis` varchar(50) NOT NULL,
  `surname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`penulis_id`, `nama_penulis`, `surname`) VALUES
(2111, 'Woke', 'woke'),
(2131, 'Naruto', 'naruto'),
(2471, 'Ana', 'ana'),
(2871, 'Nanda', 'nanda'),
(4232, 'Wilson', 'wilson'),
(4812, 'Ani', 'ani'),
(8172, 'Andi', 'andi'),
(78127, 'Aki', 'aki');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `pinjam_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `buku_id` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`pinjam_id`, `siswa_id`, `buku_id`, `tgl_pinjam`, `tgl_kembali`) VALUES
(50, 1, 22, '2020-07-17', '2022-07-18'),
(51, 2, 23, '2020-07-18', '2022-07-19'),
(52, 3, 24, '2020-07-19', '2022-07-20'),
(53, 4, 25, '2020-07-20', '2022-07-21'),
(54, 5, 26, '2020-07-21', '2022-07-21'),
(55, 6, 27, '2020-07-22', '2022-07-23'),
(56, 6, 28, '2020-07-23', '2022-07-24'),
(57, 6, 29, '2020-07-24', '2022-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `siswa_id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(5) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `point` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`siswa_id`, `nama`, `surname`, `tgl_lahir`, `jenis_kelamin`, `kelas`, `point`) VALUES
(1, 'Rudi', 'rudi', '1999-05-01', 'L', 'IPA', 12345),
(2, 'Rido', 'rido', '1999-08-20', 'L', 'IPA', 123412),
(3, 'Rada', 'rada', '1999-02-10', 'P', 'IPS', 218781),
(4, 'Rana', 'rana', '1999-07-02', 'P', 'IPS', 92891),
(5, 'Radi', 'radi', '1999-08-01', 'L', 'IPA', 82711),
(6, 'Rama', 'rama', '1999-02-01', 'L', 'IPS', 287381);

-- --------------------------------------------------------

--
-- Table structure for table `tipe`
--

CREATE TABLE `tipe` (
  `tipe_id` int(11) NOT NULL,
  `nama_tipe` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipe`
--

INSERT INTO `tipe` (`tipe_id`, `nama_tipe`) VALUES
(109, 'Pendidikan'),
(110, 'Ilmu Pasti');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`buku_id`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`penulis_id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`pinjam_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tipe`
--
ALTER TABLE `tipe`
  ADD PRIMARY KEY (`tipe_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `buku_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `penulis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78128;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `pinjam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `siswa_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tipe`
--
ALTER TABLE `tipe`
  MODIFY `tipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
