-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2017 at 01:52 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpku`
--

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE `barang` (
  `id_barang` int(10) NOT NULL,
  `nama_barang` text NOT NULL,
  `spesifikasi` text NOT NULL,
  `id_kategori` int(1) NOT NULL,
  `harga` int(10) NOT NULL,
  `steinless` boolean NOT NULL,
  `baru` boolean NOT NULL,
  `promo` boolean NOT NULL,
  `direktori_1` text NOT NULL,
  `direktori_2` text DEFAULT NULL,
  `direktori_3` text DEFAULT NULL,
  `direktori_4` text DEFAULT NULL,
  `direktori_5` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bulan`
--

-- INSERT INTO `barang` (`id_barang`, `nama_barang`, `nama_barang`, `spesifikasi`, `kategori`, `harga`, `steinless`, `baru`, `promo`, `direktori_1`, `direktori_2`, `direktori_3`, `direktori_4`, `direktori_5`) VALUES
-- (1, `nama_barang`, `nama_barang`, `spesifikasi`, `kategori`, `harga`, `steinless`, `baru`, `promo`, `direktori_1`, `direktori_2`, `direktori_3`, `direktori_4`, `direktori_5`);

-- --------------------------------------------------------

-- Table structure for table `jenis_kerusakan`
--

CREATE TABLE `kategori` (
  `id_kategori` int(1) NOT NULL,
  `nama_kategori` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_kerusakan`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'BED'),
(2, 'Trolly'),
(3, 'Retak'),
(4, 'Lain-lain');

-- --------------------------------------------------------

--
CREATE TABLE `user` (
  `id_user` int(3) NOT NULL,
  `nama_user` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `petugas`
--

INSERT INTO `user` (`id_user`, `nama_user`, `password`, `level`) VALUES
(001, 'ADMIN', '12345678', 'admin');
-- --------------------------------------------------------
--
-- Table structure for table `tahun`
--
--
-- Indexes for table `bulan`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `inspeksi`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `jenis_inspeksi`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for table `bulan`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `jenis_inspeksi`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jenis_kerusakan`
--
ALTER TABLE `user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tipe_anggaran`
