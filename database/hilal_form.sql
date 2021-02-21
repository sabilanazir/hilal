-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 04:27 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginregister`
--

-- --------------------------------------------------------

--
-- Table structure for table `hilal_form`
--

CREATE TABLE `hilal_form` (
  `id` int(11) NOT NULL,
  `BaitulHilal` text NOT NULL,
  `TIjtimak` text NOT NULL,
  `WaktuIjtimak` text NOT NULL,
  `Longitud` text NOT NULL,
  `Latitud` text NOT NULL,
  `TMasihi` text NOT NULL,
  `THijrah` text NOT NULL,
  `WMatahariTerbenam` text NOT NULL,
  `WHilalTerbenam` text NOT NULL,
  `MasaTerbaik` text NOT NULL,
  `Altitud` text NOT NULL,
  `Elongasi` text NOT NULL,
  `UmurHilal` text NOT NULL,
  `LagTime` text NOT NULL,
  `BezaAltitud` text NOT NULL,
  `AzimutMatahari` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hilal_form`
--

INSERT INTO `hilal_form` (`id`, `BaitulHilal`, `TIjtimak`, `WaktuIjtimak`, `Longitud`, `Latitud`, `TMasihi`, `THijrah`, `WMatahariTerbenam`, `WHilalTerbenam`, `MasaTerbaik`, `Altitud`, `Elongasi`, `UmurHilal`, `LagTime`, `BezaAltitud`, `AzimutMatahari`) VALUES
(1, 'Pulau Sayak, Kuala Muda, Kedah', '05/04/2000\r\n', '06:00', '100.3351° Timur', '5.6571° Utara', '06/04/2000', '1 Muharam 1421H\r\n', '19:30', '07:00', '21:00', '90°', '180°', '14d', '01:00', '90°', '295°'),
(2, 'Teluk Kemang Observatory', '03/06/2000\r\n', '07:00', '101.8545° Timur', '2.4451° Utara', '04/06/2000', '1 Rabiulawal 1421h', '19:20', '06:50', '20:30', '90°', '180°', '14d', '01:15', '90°', '250°');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hilal_form`
--
ALTER TABLE `hilal_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hilal_form`
--
ALTER TABLE `hilal_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
