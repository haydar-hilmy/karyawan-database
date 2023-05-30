-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 05:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id_departemen` int(11) NOT NULL,
  `nama_departemen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id_departemen`, `nama_departemen`) VALUES
(1, 'Pengembangan Perangkat Lunak'),
(2, 'Infrastruktur IT'),
(3, 'Layanan Pelanggan'),
(4, 'Keamanan Informasi'),
(5, 'Manajemen Proyek'),
(6, 'Analisis Data'),
(7, 'Sumber Daya Manusia'),
(8, 'Pemasaran');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `salary` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `id_departemen`, `nama_jabatan`, `salary`) VALUES
(1, 1, 'Software Development Manager', 8000000),
(2, 1, 'System Analyst', 6500000),
(3, 1, 'Software Developer', 5000000),
(4, 1, 'Software Designer', 4500000),
(5, 2, 'IT Infrastructure Manager', 9000000),
(6, 2, 'Network Administrator', 3500000),
(7, 2, 'Hardware Technician', 3300000),
(8, 3, 'Customer Service Manager', 7600000),
(9, 3, 'Technical Support Specialist', 4000000),
(10, 4, 'Information Security Manager', 5500000),
(11, 4, 'Network Security Specialist', 4000000),
(12, 4, 'System Security Administrator', 3700000),
(13, 5, 'Project Manager', 10000000),
(14, 5, 'Business Analyst', 9300000),
(15, 5, 'Project Team Lead', 8230000),
(16, 6, 'Data Analytics Manager', 7800000),
(17, 6, 'Data Analyst', 7600000),
(18, 7, 'Human Resources Manager', 6400000),
(19, 7, 'Recruitment and Selection Specialist', 5900000),
(20, 8, 'Marketing Manager', 7700000),
(21, 8, 'Digital Marketing Specialist', 6700000);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tanggal_diterima` date NOT NULL,
  `id_jabatan` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `alamat`, `tanggal_diterima`, `id_jabatan`) VALUES
(1, 'Steve Jobs', 'California', '2023-05-30', '4'),
(2, 'John Lennon', 'Texas', '2023-05-30', '1'),
(3, 'Asep Stefanus', 'Jakarta', '2023-05-30', '10'),
(4, 'Opang', 'Banten', '2023-05-30', '19'),
(5, 'Mark Zuckerbeg', 'Ohio', '2023-05-30', '2'),
(6, 'Haydar Hilmy Alhakim', 'Kaliwungu', '2023-05-30', '3'),
(7, 'Ainur Rahma Miftakhul Rizqi', 'Weleri', '2023-05-30', '16'),
(8, 'Joseph Stalin', 'Berlin', '2023-05-30', '5'),
(9, 'Hitler', 'Mosqow', '2023-05-30', '6'),
(10, 'Tim Berners Lee', 'California', '2023-05-30', '7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id_departemen`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id_departemen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
