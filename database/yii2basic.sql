-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 02:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2basic`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `satuan`, `id_jenis`, `id_supplier`, `harga`, `stok`) VALUES
(2, 'A001', 'Pensil', 'pcs', 1, 1, 5000, 600),
(3, 'B002', 'Novel', 'pcs', 2, 2, 20000, 15),
(4, 'C001', 'Parfum', 'pcs', 6, 5, 100000, 10),
(5, 'D003', 'Bola Voli', 'pcs', 4, 3, 89000, 5),
(6, 'E041', 'Mukena', 'pcs', 5, 6, 180000, 9),
(7, 'F001', 'Buku Basis Data', 'pcs', 3, 6, 75000, 17),
(8, 'A001', 'Pensil', 'pcs', 1, 1, 5000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Russia', 146519759),
('US', 'United States', 322976000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `nama_jenis`, `keterangan`) VALUES
(1, 'Alat Tulis', 'Ada'),
(2, 'Bacaan', 'Ada'),
(3, 'Buku Pelajaran', 'Ada'),
(4, 'Alat Olahraga', 'Ada'),
(5, 'Alat Shalat', 'Ada'),
(6, 'Alat Kecantikan', 'Limited'),
(9, 'Buku Bacaan', 'Limited');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jekel` char(1) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jekel`, `id_prodi`, `email`, `alamat`, `tgl_lahir`) VALUES
(1, '1911082020', 'Aster Happy Lestari', 'P', 3, 'aster@gmail.com', 'Padang', '2021-06-03'),
(2, '1911083030', 'Aisyah', 'P', 1, 'AisyahBelimbing@gmail.com', 'Yogyakarta', '0000-00-00'),
(3, '1911083031', 'Yogi', 'L', 2, 'gi@gmail.com', 'Padang', '0000-00-00'),
(5, '1911083033', 'Ica Denis', 'L', 2, 'icaaja@gmail.com', 'Pariaman', '0000-00-00'),
(6, '1911083034', 'Rendy Pratama', 'L', 2, 'ren@gmail.com', 'Jakarta', '0000-00-00'),
(7, '1911081003', 'Rif', 'L', 3, 'nyet@gmail.com', 'Pasaman', '0000-00-00'),
(8, '1911083333', 'Ciku', 'P', 2, 'cikuciku@gmail.com', 'Bandung', '0000-00-00'),
(9, '1911083036', 'Anggraeni', 'P', 3, 'rae@gmail.com', 'Air Bangis', '0000-00-00'),
(10, '1911081111', 'Cindy', 'P', 1, 'cyn@gmail.com', 'Bukittinggi', '0000-00-00'),
(11, '1908112020', 'Ayrina', 'P', 3, 'ryna2@gmail.com', 'Padang', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `prodi`, `keterangan`) VALUES
(1, 'Manajemen Informatika', 'D3'),
(2, 'Teknik Komputer', 'D3'),
(3, 'Teknologi Rekayasa Perangkat Lunak', 'D4');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `notelp`, `email`, `alamat`) VALUES
(1, 'Aster', '082312345678', 'aster@gmail.com', 'Jl. Belimbing No 6, Padang'),
(2, 'Aisyah', '083123456789', 'rae@gmail.com', 'Jl. Mega No 123, Yogyakarta'),
(3, 'Adela', '081234567984', 'deljombs@gmail.com', 'Jl. Khatib Sulaiman No 1, Padang'),
(4, 'Denisa', '082198371903', 'ica@gmail.com', 'Jl. Jend Sudirman No 76, Jakarta'),
(5, 'Rif', '081239584231', 'rifrif@gmail.com', 'Jl. Tuanku Tambusai No 21, Pekanbaru'),
(6, 'Iqra Anggraeni', '081223847893', 'aiiqra@gmail.com', 'Jl. Biaro No 3, Bukittinggi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jenis` (`id_jenis`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_jenis_2` (`id_jenis`),
  ADD KEY `id_supplier_2` (`id_supplier`),
  ADD KEY `id_supplier_3` (`id_supplier`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
