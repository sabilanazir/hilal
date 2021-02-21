-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 04:10 PM
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
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `Year` text NOT NULL,
  `EventName` text NOT NULL,
  `HijriDate` text NOT NULL,
  `CurrentDate` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `Year`, `EventName`, `HijriDate`, `CurrentDate`) VALUES
(1, '2021', 'Shab E Miraj', '27 Rajab 1442 AH', '11 March 2021'),
(2, '2021', 'Shab E Barat', '15 Shaban 1442 AH', '28 March 2021'),
(3, '2021', '1st Day of Ramadan', '1 Ramadan 1442 AH', '13 April 2021'),
(4, '2021', 'Laylat Al Qadr', '27 Ramadan 1442 AH', '9 May 2021'),
(5, '2021', 'Eid-Ul-Fitr', '1 Shawwal 1442 AH', '13 May 2021'),
(6, '2021', 'Waqf Al Arafa (Hajj)', '9 Zulhijjah 1442 AH', '19 July 202'),
(7, '2021', 'Eid-ul-Adha', '10 Zulhijjah 1442 AH', '20 July 2021'),
(8, '2021', '1st Muharram', '1 Muharram 1443 AH', '8 August 2021'),
(9, '2021', 'Ashura', '10 Muharram 1443 AH', '18 August 2021'),
(10, '2021', '12 Rabi Ul Awal', '12 Rabi Ul Awal 1442 AH', '19 October 2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
