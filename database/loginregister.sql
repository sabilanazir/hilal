-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 04:53 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `moon_phases`
--

CREATE TABLE `moon_phases` (
  `id` int(11) NOT NULL,
  `Year` text NOT NULL,
  `Lunation` text NOT NULL,
  `New_Moon_D` text NOT NULL,
  `New_Moon_T` text NOT NULL,
  `New_Moon_Pic` text NOT NULL,
  `Full_Quarter_D` text NOT NULL,
  `Full_Quarter_T` text NOT NULL,
  `Full_Quarter_Pic` text NOT NULL,
  `Full_Moon_D` text NOT NULL,
  `Full_Moon_T` text NOT NULL,
  `Full_Moon_Pic` text NOT NULL,
  `Third_Quarter_D` text NOT NULL,
  `Third_Quarter_T` text NOT NULL,
  `Third_Quarter_Pic` text NOT NULL,
  `Duration` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moon_phases`
--

INSERT INTO `moon_phases` (`id`, `Year`, `Lunation`, `New_Moon_D`, `New_Moon_T`, `New_Moon_Pic`, `Full_Quarter_D`, `Full_Quarter_T`, `Full_Quarter_Pic`, `Full_Moon_D`, `Full_Moon_T`, `Full_Moon_Pic`, `Third_Quarter_D`, `Third_Quarter_T`, `Third_Quarter_Pic`, `Duration`) VALUES
(1, '2021', '1213', '13 January', '1:00 PM', 'http://192.168.1.13/LoginRegister/newmoon.png', '21 January', '5:01 AM', 'https://lh3.googleusercontent.com/proxy/1qlXecSH_g2e4gnKzZO9dGHiY8WAV7s0Lch3eyLhc2OKD9wC5g6XTaIvE4cTOWadBSJCOuE25WR-6fCWCtO7vmbnXg', '29 January', '3:16 AM', 'http://moonsuncalendar.com/img/m512/180.png\r\n', '5 February', '1:37 AM', 'http://moonsuncalendar.com/img/m512/270.png', '29d 14h 06m'),
(2, '2021', '1214', '12 February', '3:05 AM', 'https://cdn.imgbin.com/15/5/21/imgbin-earth-new-moon-lunar-phase-full-moon-moon-phase-9LvQqrzAyX407ivYYGCGfFggB.jpg', '20 February', '2:47 AM', 'https://lh3.googleusercontent.com/proxy/1qlXecSH_g2e4gnKzZO9dGHiY8WAV7s0Lch3eyLhc2OKD9wC5g6XTaIvE4cTOWadBSJCOuE25WR-6fCWCtO7vmbnXg', '27 February', '4:17 PM', 'http://moonsuncalendar.com/img/m512/180.png', '6 March', '9:30 AM', 'http://moonsuncalendar.com/img/m512/270.png', '29d 15h 15m'),
(3, '2021', '1215', '13 March', '6:21 PM', 'http://192.168.1.13/LoginRegister/newmoon.png', '21 March', '10:40 PM', 'https://lh3.googleusercontent.com/proxy/1qlXecSH_g2e4gnKzZO9dGHiY8WAV7s0Lch3eyLhc2OKD9wC5g6XTaIvE4cTOWadBSJCOuE25WR-6fCWCtO7vmbnXg', '29 March', '2:48 AM', 'http://moonsuncalendar.com/img/m512/180.png', '4 April', '6:02 PM', 'http://moonsuncalendar.com/img/m512/270.png', '29d 16h 10m'),
(4, '2021', '1216', '12 April', '10:30 AM', 'http://192.168.1.13/LoginRegister/newmoon.png', '20 April', '2:58 PM', 'https://lh3.googleusercontent.com/proxy/1qlXecSH_g2e4gnKzZO9dGHiY8WAV7s0Lch3eyLhc2OKD9wC5g6XTaIvE4cTOWadBSJCOuE25WR-6fCWCtO7vmbnXg', '27 April', '11:31 AM', 'http://moonsuncalendar.com/img/m512/180.png', '4 May', '3:50 AM', 'http://moonsuncalendar.com/img/m512/270.png', '29d 16h 29m'),
(5, '2021', '1217', '12 May', '2:59 AM', 'https://cdn.imgbin.com/15/5/21/imgbin-earth-new-moon-lunar-phase-full-moon-moon-phase-9LvQqrzAyX407ivYYGCGfFggB.jpg', '20 May', '3:12 AM', 'https://lh3.googleusercontent.com/proxy/1qlXecSH_g2e4gnKzZO9dGHiY8WAV7s0Lch3eyLhc2OKD9wC5g6XTaIvE4cTOWadBSJCOuE25WR-6fCWCtO7vmbnXg', '26 May', '7:13 PM', 'http://moonsuncalendar.com/img/m512/180.png', '2 June', '3:24 PM', 'http://moonsuncalendar.com/img/m512/270.png', '29d 15h 53m'),
(6, '2021', '1218', '10 June', '6:52 PM', 'https://cdn.imgbin.com/15/5/21/imgbin-earth-new-moon-lunar-phase-full-moon-moon-phase-9LvQqrzAyX407ivYYGCGfFggB.jpg', '18 June', '11:54 AM', 'https://lh3.googleusercontent.com/proxy/1qlXecSH_g2e4gnKzZO9dGHiY8WAV7s0Lch3eyLhc2OKD9wC5g6XTaIvE4cTOWadBSJCOuE25WR-6fCWCtO7vmbnXg', '25 June', '2:39 Am', 'http://moonsuncalendar.com/img/m512/180.png', '2 July', '5:10 AM', 'http://moonsuncalendar.com/img/m512/270.png', '29d 14h 24m'),
(7, '2021', '1219', '10 July', '9:16 AM', 'https://cdn.imgbin.com/15/5/21/imgbin-earth-new-moon-lunar-phase-full-moon-moon-phase-9LvQqrzAyX407ivYYGCGfFggB.jpg', '17 July', '6:10 PM', 'https://lh3.googleusercontent.com/proxy/1qlXecSH_g2e4gnKzZO9dGHiY8WAV7s0Lch3eyLhc2OKD9wC5g6XTaIvE4cTOWadBSJCOuE25WR-6fCWCtO7vmbnXg', '24 July', '10:36 AM', 'http://moonsuncalendar.com/img/m512/180.png', '31 July', '9:15 PM', 'http://moonsuncalendar.com/img/m512/270.png', '29d 12h 34m'),
(8, '2021', '1220', '8 August', '9:50 PM', 'https://cdn.imgbin.com/15/5/21/imgbin-earth-new-moon-lunar-phase-full-moon-moon-phase-9LvQqrzAyX407ivYYGCGfFggB.jpg', '15 August', '11:19 PM', '0', '22 August', '8:01 PM', '', '30 August', '3:13 PM', '', '29d 11h 02m'),
(9, '2021', '1221', '7 September', '8:51 AM ', 'https://cdn.imgbin.com/15/5/21/imgbin-earth-new-moon-lunar-phase-full-moon-moon-phase-9LvQqrzAyX407ivYYGCGfFggB.jpg', '14 September', '4:39 AM', '0', '21 September', '7:54 AM', '', '29 September', '9:57 AM', '', '29d 10h 14m'),
(10, '2021', '1222', '6 October', '7:05 PM', 'https://cdn.imgbin.com/15/5/21/imgbin-earth-new-moon-lunar-phase-full-moon-moon-phase-9LvQqrzAyX407ivYYGCGfFggB.jpg', '13 October', '11:25 AM', '0', '20 October', '10:56 PM', '', '29 October', '9:57 AM', '', '29d 10h 09m'),
(11, '2021', '1223', '5 November', '5:14 AM', 'https://cdn.imgbin.com/15/5/21/imgbin-earth-new-moon-lunar-phase-full-moon-moon-phase-9LvQqrzAyX407ivYYGCGfFggB.jpg', '11 November', '8:45 PM', '0', '19 November', '4:57 PM', '', '27 November', '8:27 PM', '', '29d 10h 28m'),
(12, '2021', '1224', '4 December', '3:43 PM', 'https://cdn.imgbin.com/15/5/21/imgbin-earth-new-moon-lunar-phase-full-moon-moon-phase-9LvQqrzAyX407ivYYGCGfFggB.jpg', '11 December', '9:35 AM', '0', '19 December', '12:35 PM', '', '27 December', '10:23 AM', '', '29d 10h 51m');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `email`) VALUES
(1, 'aina salsabila', 'sabila98', 'boom1234', 'aina@gmail.com'),
(2, 'piqah nizam', 'piqaaa', 'piqaaa', 'piqah@mail.com'),
(4, 'fatin adilah', 'adilah.f', 'fatin', 'fatin@mail.com'),
(5, 'nur izzati', 'ijat', 'ijat1234', 'ijat@mail.com'),
(6, 'zarina saad', 'zrnsd', '123456', 'zrn@mail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hilal_form`
--
ALTER TABLE `hilal_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moon_phases`
--
ALTER TABLE `moon_phases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hilal_form`
--
ALTER TABLE `hilal_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `moon_phases`
--
ALTER TABLE `moon_phases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
