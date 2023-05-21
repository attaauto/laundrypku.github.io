-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2023 at 09:28 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id_about` int(11) NOT NULL,
  `judul_about` varchar(50) NOT NULL,
  `deskripsi_about` text NOT NULL,
  `gambar_about` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id_about`, `judul_about`, `deskripsi_about`, `gambar_about`) VALUES
(2, 'Laundry Online', 'Selamat datang di laundry online', 'images_(1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `konsumen`
--

CREATE TABLE `konsumen` (
  `kode_konsumen` varchar(12) NOT NULL,
  `nama_konsumen` varchar(50) NOT NULL,
  `alamat_konsumen` text NOT NULL,
  `no_telp` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konsumen`
--

INSERT INTO `konsumen` (`kode_konsumen`, `nama_konsumen`, `alamat_konsumen`, `no_telp`) VALUES
('K001', 'Abu Hurairoh', 'panam', '082214282584'),
('K003', 'Afdol', 'panam', '081312345678'),
('K004', 'Firdaus', 'arengka', '1234567890'),
('K005', 'anas', 'panam', '0812908765544');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `kode_paket` varchar(20) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `harga_paket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`kode_paket`, `nama_paket`, `harga_paket`) VALUES
('P001', 'Cuci Basah', '3000'),
('P002', 'Cuci Kering', '5000'),
('P003', 'Cuci + Strika', '6000'),
('P004', 'Cuci + Strika + Pewangi', '7000');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `judul_slider` varchar(50) NOT NULL,
  `deskripsi_slider` text NOT NULL,
  `status_slider` varchar(20) NOT NULL,
  `gambar_slider` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `judul_slider`, `deskripsi_slider`, `status_slider`, `gambar_slider`) VALUES
(1, 'slider 1', 'edit slider 1', 'Aktif', 'download_(1).jpg'),
(2, 'edit slider', 'edit slider 2', 'Tidak Aktif', 'download_(2).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` varchar(20) NOT NULL,
  `kode_konsumen` varchar(12) NOT NULL,
  `kode_paket` varchar(12) NOT NULL,
  `tgl_masuk` datetime NOT NULL,
  `tgl_ambil` datetime NOT NULL,
  `berat` int(10) NOT NULL,
  `grand_total` int(12) NOT NULL,
  `bayar` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `kode_konsumen`, `kode_paket`, `tgl_masuk`, `tgl_ambil`, `berat`, `grand_total`, `bayar`, `status`) VALUES
('TR20230517001', 'K001', 'P001', '2023-05-17 01:44:11', '2023-05-17 06:19:34', 4, 12000, 'Lunas', 'Selesai'),
('TR20230517002', 'K003', 'P002', '2023-05-17 01:48:49', '2023-05-17 00:00:00', 5, 25000, 'Lunas', 'Selesai'),
('TR20230517004', 'K004', 'P002', '2023-05-17 06:12:17', '2023-05-17 07:04:07', 6, 30000, 'Lunas', 'Selesai'),
('TR20230517005', 'K005', 'P003', '2023-05-17 06:19:18', '2023-05-17 07:04:12', 2, 12000, 'Lunas', 'Selesai'),
('TR20230517006', 'K001', 'P002', '2023-05-17 11:03:39', '2023-05-17 07:15:50', 5, 25000, 'Lunas', 'Selesai'),
('TR20230518007', 'K003', 'P002', '2023-05-18 12:05:13', '2023-05-17 07:08:57', 3, 15000, 'Lunas', 'Selesai'),
('TR20230518008', 'K004', 'P003', '2023-05-18 01:56:36', '2023-05-18 09:02:59', 4, 24000, 'Lunas', 'Selesai'),
('TR20230518009', 'K004', 'P001', '2023-05-19 01:50:35', '2023-05-20 11:14:12', 4, 12000, 'Lunas', 'Selesai'),
('TR20230520010', 'K001', 'P004', '2023-05-20 11:13:03', '0000-00-00 00:00:00', 5, 35000, 'Lunas', 'Baru');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'hatta', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indexes for table `konsumen`
--
ALTER TABLE `konsumen`
  ADD PRIMARY KEY (`kode_konsumen`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`kode_paket`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
