-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 04:46 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `moon_phases`
--
ALTER TABLE `moon_phases`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `moon_phases`
--
ALTER TABLE `moon_phases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
