-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2014 at 02:21 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cs174`
--

-- --------------------------------------------------------

--
-- Table structure for table `fun_video_all`
--

CREATE TABLE IF NOT EXISTS `fun_video_all` (
`id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `videolink` text COLLATE utf8_unicode_ci NOT NULL,
  `videolength` int(6) NOT NULL,
  `highestresolution` enum('144','240','360','480','720','1080') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(3000) COLLATE utf8_unicode_ci NOT NULL,
  `language` enum('English','Non-English') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English',
  `viewcount` int(8) NOT NULL,
  `videotype` set('Tutorial','Entertainment','Application','Weapon','Group demo','Others') COLLATE utf8_unicode_ci NOT NULL,
  `iconimage` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` text COLLATE utf8_unicode_ci NOT NULL,
  `category` enum('Yang Taichi','Chen Taichi','Sun Taichi','Wu Taichi','QiGong','Shaolin','Tae kwon do','Wing Chun','Aikido','Judo','KungFu Movie') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fun_video_all`
--
ALTER TABLE `fun_video_all`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fun_video_all`
--
ALTER TABLE `fun_video_all`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;