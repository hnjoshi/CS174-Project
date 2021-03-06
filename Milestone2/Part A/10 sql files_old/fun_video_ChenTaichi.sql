-- phpMyAdmin SQL Dump
-- version 4.2.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2014 at 04:30 PM
-- Server version: 5.6.21-log
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `174project`
--

-- --------------------------------------------------------

--
-- Table structure for table `fun_video`
--

CREATE TABLE IF NOT EXISTS `fun_video` (
`id` int(11) NOT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `videolink` text COLLATE utf8_unicode_ci NOT NULL,
  `videolength` int(6) NOT NULL,
  `highestresolution` enum('144','240','360','480','720','1080') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `language` enum('English','Non-English') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English',
  `viewcount` int(8) NOT NULL,
  `videotype` set('Tutorial','Entertainment','Application','Weapon','Group demo','Others') COLLATE utf8_unicode_ci NOT NULL,
  `iconimage` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fun_video`
--

INSERT INTO `fun_video` (`id`, `title`, `videolink`, `videolength`, `highestresolution`, `description`, `language`, `viewcount`, `videotype`, `iconimage`, `tag`) VALUES
(1, 'Taiji: Tai Chi Kung Fu Fan II (Beauty of the Suns) Xiyangmei ', 'http://www.youtube.com/embed/_dog-aaCCIc', 3, '480', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 94495, 'Application', 'http://i.ytimg.com/vi/_dog-aaCCIc/mqdefault.jpg', 'application, beauty, solo'),
(2, 'COMBAT TAI CHI - Chen Style Taiji Quan Fighting Techniques - 陈式 太极拳 ', 'http://www.youtube.com/embed/0iQKO14s_sc', 4, '1080', 'Alcune tecniche di combattimento Taiji Quan (Tai Chi) stile Chen dimostrate dal Maestro Giuseppe Paterniti e dal suo allievo Manuel Besegato', 'Non-English', 124926, 'Application', 'http://i.ytimg.com/vi/0iQKO14s_sc/mqdefault.jpg', 'application, combat, group'),
(3, 'tai ji quan chen style tino wong', 'http://www.youtube.com/embed/0SWx_iydEug', 5, '240', 'at porta venezia''s park, Milan', 'English', 71674, 'Entertainment', 'http://i.ytimg.com/vi/0SWx_iydEug/mqdefault.jpg', 'demonstration, solo'),
(4, 'Chen Taiji Master Ren Guang Yi - Compact Cannon Fist ll ', 'http://www.youtube.com/embed/0Y_GULVhJmM', 2, '240', 'Taiji short cannon fist form created by Master Ren Guang-Yi for Hugh Jackman in "The Fountain"', 'English', 112679, 'Others', 'http://i.ytimg.com/vi/0Y_GULVhJmM/mqdefault.jpg', 'solo, demonstration'),
(5, 'Sun style Tai Chi 73 Taiji', 'http://www.youtube.com/embed/1xW5WWLtI68', 5, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 99828, 'Application', 'http://i.ytimg.com/vi/1xW5WWLtI68/mqdefault.jpg', 'solo, demonstration, application'),
(6, 'Tai Chi Application for Self-defense fight in Chen taiji 2', 'http://www.youtube.com/embed/2WPQJoqmGPo', 4, '480', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'Non-English', 82758, 'Group demo', 'http://i.ytimg.com/vi/2WPQJoqmGPo/mqdefault.jpg', 'self-defense, group, demo'),
(7, 'Taiji - Chen Style Fan (48 form) 陳式太極扇48式', 'http://www.youtube.com/embed/3xlH0oHtbYs', 3, '240', 'Demonstrated by Master Ma Chunxi 馬春喜, Henan - 2 VCD set in Chinese narration with slow demo of each part. Enquiry: http://www.hongkongtaiji.com', 'English', 84037, 'Application', 'http://i.ytimg.com/vi/3xlH0oHtbYs/mqdefault.jpg', 'solo, application, female'),
(8, 'Taichi in real fight, the best one', 'http://www.youtube.com/embed/5HQnuWY13ac', 22, '360', 'Master chen will tell you how to fight with Taichi, you will enjoy it', 'Non-English', 513176, 'Group demo', 'http://i.ytimg.com/vi/5HQnuWY13ac/mqdefault.jpg', 'group, demonstration, fight, unarmed'),
(9, 'Yang Style Tai Chi Long Form 108 Taiji 1', 'http://www.youtube.com/embed/6tLC9KslCo4', 4, '480', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 91614, 'Application', 'http://i.ytimg.com/vi/6tLC9KslCo4/mqdefault.jpg', 'application, demonstration, solo'),
(10, 'Chen Taijiquan Master Ren GuangYi & Lou Reed - Tai Chi', 'http://www.youtube.com/embed/72yaPmAH3uw', 2, '480', 'http://ymaa.com/publishing/dvd/intern... Master Ren GuangYi has worked tirelessly to bring Chen style Taijiquan (Tai Chi Chuan) to the West ', 'English', 116324, 'Tutorial', 'http://i.ytimg.com/vi/72yaPmAH3uw/mqdefault.jpg', 'demonstration, dvd, master'),
(11, 'Taiji: Traditional Yang Tai Chi Sword', 'http://www.youtube.com/embed/9VYw1WbpmG8', 7, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'Non-English', 137621, 'Weapon', 'http://i.ytimg.com/vi/9VYw1WbpmG8/mqdefault.jpg', 'weapon, sword, solo'),
(12, 'Chen Style Taiji Quan 24 Form 陳式太極拳24式', 'http://www.youtube.com/embed/9w1RPmXKBY0', 8, '240', 'Sifu Edward Mak performing Chen Style Taiji Quan 24 Form, it is a simplified version for the beginners.', 'Non-English', 89421, 'Tutorial', 'http://i.ytimg.com/vi/9w1RPmXKBY0/mqdefault.jpg', 'beginners, tutorial'),
(13, 'Yang Style 48 Form Tai Chi Chuan', 'http://www.youtube.com/embed/AK5XDZN-t74', 8, '240', 'Sifu Amin Wu - www.aminwutaichi.com Original Tai Chi instructional VCD video by Sifu Amin Wu (in Chinese version) available on website', 'English', 428211, 'Others', 'http://i.ytimg.com/vi/AK5XDZN-t74/mqdefault.jpg', 'solo, demonstration, practice'),
(14, 'Taiji - Chen Style 陳氏一路83式(馬虹) 續 part 2', 'http://www.youtube.com/v/ANuuFvHsrJQ', 9, '240', 'Uploaded on 21 Jan 2007http://www.hongkongtaiji.com陳氏一路83式馬虹 (part 2)Chen style 1st way 83 form (Mr. Ma Hong)', 'English', 63475, 'Entertainment', 'http://i.ytimg.com/vi/ANuuFvHsrJQ/mqdefault.jpg', 'demonstration, entertainment'),
(15, 'Chen XiaoWang Tai Chi : Taiji Push Hand and technique KF734c', 'http://www.youtube.com/embed/B8kx7pW_T18', 2, '480', 'Chen XiaoWang Tai Chi : Taiji Push Hand and technique KF734c', 'Non-English', 68973, 'Group demo', 'http://i.ytimg.com/vi/B8kx7pW_T18/mqdefault.jpg', 'group, demonstration'),
(16, 'Chen Tai Chi Sword taiji jian', 'http://www.youtube.com/embed/bvd0IkXZ4lk', 6, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 81997, 'Weapon', 'http://i.ytimg.com/vi/bvd0IkXZ4lk/mqdefault.jpg', 'solo, weapon, demonstration'),
(17, 'Hunyuan Tai Chi 24 Forms (hun yuan taiji)', 'http://www.youtube.com/embed/CgP4ez0epYo', 6, '480', 'Zhang Jiping, an indoor disciple of GM Feng Zhiqiang (the founder of Hunyuan Tai Chi), 7th dan of Chinese Martial Art Rank, and an inheritor ', 'English', 89310, 'Application', 'http://i.ytimg.com/vi/9w1RPmXKBY0/mqdefault.jpg', 'demonstration'),
(18, 'Tai chi for beginners - Yang Style Form Lessons 2', 'http://www.youtube.com/embed/cNWEVeHc54g', 7, '720', 'Learn the basics of Tai chi for beginners from a real tai chi master. Master Wong tai chi available in Ipswich, Suffolk and online offers ', 'English', 79832, 'Tutorial', 'http://i.ytimg.com/vi/cNWEVeHc54g/mqdefault.jpg', 'demonstration, solo, tutorial'),
(19, 'Chen Taiji (Chen Xiaowang)', 'http://www.youtube.com/embed/eJuudvIMZs0', 2, '240', 'Chen Taiji (Chen Xiaowang)', 'Non-English', 63387, 'Tutorial', 'http://i.ytimg.com/vi/eJuudvIMZs0/mqdefault.jpg', 'tutorial, example, demonstration, solo'),
(20, 'Tai chi for beginners - Yang Basic 8 step', 'http://www.youtube.com/embed/EOPHsY0FnlE', 3, '720', 'Learn the basics of Tai chi for beginners from a real tai chi master. Master Wong tai chi available in Ipswich, Suffolk and online offers ', 'English', 125908, 'Tutorial', 'http://i.ytimg.com/vi/EOPHsY0FnlE/mqdefault.jpg', 'demonstration, tutorial, solo'),
(21, 'Chen Tai Chi Push Hand #1(Master Cheng Jincai程进才)', 'http://www.youtube.com/embed/ETeY4zFl6xg', 9, '240', 'The Master teacher - Cheng Jincai is a successor of the 18th generation Grand master Chen Zhaokui in North America. He is Chairman of American Chen Style Tai Chi Federation', 'Non-English', 68106, 'Group demo', 'http://i.ytimg.com/vi/ETeY4zFl6xg/mqdefault.jpg', 'group, demonstration, training'),
(22, 'Taiji - Chen Style', 'http://www.youtube.com/embed/fS0QYq26V2g', 4, '240', 'Ten year old kid performing Chen Style Taiji (陳式太極) in a park', 'English', 480401, 'Tutorial', 'http://i.ytimg.com/vi/fS0QYq26V2g/mqdefault.jpg', 'solo, demonstration, intermediate'),
(23, 'Ma Hong--Applications of Taichi Chen Style(2) 马虹—陈式太极拳拆拳讲劲(二)', 'http://www.youtube.com/embed/FzbxuR89U8E', 43, '240', 'Applications of Taichi Chen Style', 'Non-English', 131097, 'Application', 'http://i.ytimg.com/vi/FzbxuR89U8E/mqdefault.jpg', 'application, solo'),
(24, 'Tai Chi (Chen Style) Part 01 陈氏太极拳-缠丝功【上】陈小旺', 'http://www.youtube.com/embed/GgU3K7uq2_M', 50, '240', 'Tai Chi style part 1', 'Non-English', 91781, 'Tutorial', 'http://i.ytimg.com/vi/GgU3K7uq2_M/mqdefault.jpg', 'tutorial, solo'),
(25, 'Fajin (Fajing) in Chen Tai Chi Cannon Fist and Applications', 'http://www.youtube.com/embed/GuwxgvhbSVM', 8, '240', 'Sifu Wei-Chung Lin (林維中), a disciple of the Yizungyue (易宗岳) School and the Chief Instructor of the Chinese Taoist Martial Arts ', 'English', 126490, 'Application', 'http://i.ytimg.com/vi/GuwxgvhbSVM/mqdefault.jpg', 'demonstration, solo'),
(26, 'Taiji - Chen Style 36 form 陳式太極拳36式', 'http://www.youtube.com/embed/H5iT-jDFEPk', 7, '240', '陳式太極拳36式\r\n闞桂香教授\r\nhttp://www.hongkongtaiji.com', 'Non-English', 73698, 'Tutorial', 'http://i.ytimg.com/vi/H5iT-jDFEPk/mqdefault.jpg', 'demonstration, solo'),
(27, 'Tai chi for beginners - Chen Style 1 Part 1', 'http://www.youtube.com/embed/HC-uJ10OWqw', 6, '720', 'Learn the basics of Tai chi for beginners from a real tai chi master. Master Wong tai chi available in Ipswich, Suffolk and online offers instruction with the best quality music and HD video.', 'English', 145950, 'Tutorial', 'http://i.ytimg.com/vi/HC-uJ10OWqw/mqdefault.jpg', 'demonstration, tutorial, solo'),
(28, 'Tai Chi Push-Hands ( Tui Shou )-- Montreal', 'http://www.youtube.com/embed/hkyq9FljlG8', 6, '240', 'Tai Chi push-hand techniques. Visit \r\ninternalstyle.com for more information. Montreal, canada', 'English', 364129, 'Group demo', 'http://i.ytimg.com/vi/hkyq9FljlG8/mqdefault.jpg', 'group, demonstration, intermediate'),
(29, 'Chen Xiaowang Applications DVD excerpt, Laojia/19ct w/ fajin', 'http://www.youtube.com/embed/Holnh-VEysA', 10, '480', 'Chen Xiaowang Applications DVD excerpt, Laojia/19ct w/ fajin, off "Ancestral Chen-style Taijiquan: Internal strength learning boxing and coiling slightly"', 'Non-English', 103382, 'Application', 'http://i.ytimg.com/vi/Holnh-VEysA/mqdefault.jpg', 'application, group, example'),
(30, 'Taiji: Chen Tai Chi Guan Dao', 'http://www.youtube.com/embed/HuBNTXS1SIY', 1, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 59226, 'Weapon', 'http://i.ytimg.com/vi/HuBNTXS1SIY/mqdefault.jpg', 'weapon, staff, demonstration, solo'),
(31, 'Tai Chi Taiji Self-defense Application Traditional Yang Long Form 2', 'http://www.youtube.com/embed/I_bTr-aPnKY', 4, '480', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 92872, 'Group demo', 'http://i.ytimg.com/vi/I_bTr-aPnKY/mqdefault.jpg', 'group, application, demonstration'),
(32, 'Chen Style Tai Chi Sword US Team Trial', 'http://www.youtube.com/embed/IpdOHVPI2iY', 6, '240', 'Li''s Wushu Academy Student Chen Style Tai Chi Sword US Team Trial', 'English', 104100, 'Others', 'http://i.ytimg.com/vi/IpdOHVPI2iY/mqdefault.jpg', 'team trial, US, group'),
(33, 'Tai Chi Chen Taiji Application - Whirlwind Kick', 'http://www.youtube.com/embed/kCdISgbMnak', 1, '480', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'Non-English', 79971, 'Application', 'http://i.ytimg.com/vi/kCdISgbMnak/mqdefault.jpg', 'application, demonstration, group'),
(34, 'Chen Tai Chi 18 Form | Chen Taiji', 'http://www.youtube.com/embed/KKy4G_ka-xQ', 3, '480', 'http://drpaulinebao.com Traditional Chinese Medical Doctor and International Tai Chi Champion Dr. Pauline Bao Performs Chen Tai Chi 18 ', 'English', 93405, 'Tutorial', 'http://i.ytimg.com/vi/KKy4G_ka-xQ/mqdefault.jpg', 'solo, application, tutorial'),
(35, 'Taiji Sword - Chen Style (Zhang Dongwu)', 'http://www.youtube.com/embed/L_E4Zi1aPj4', 4, '240', '張東武 陳式單劍,單刀\r\nhttp://www.hongkongtaiji.com', 'English', 63565, 'Weapon', 'http://i.ytimg.com/vi/L_E4Zi1aPj4/mqdefault.jpg', 'weapon, sword, style, solo, instructional'),
(36, 'Сhen style Tai Chi - master Zhang Dong Hai - 太极宗师 张东海', 'http://www.youtube.com/embed/lk1solzcBfI', 5, '1080', 'Master Zhang Dong Hai (from Baoding) demonstrates Сhen style Tai Chi Chuan.\r\n', 'Non-English', 70384, 'Entertainment', 'http://i.ytimg.com/vi/lk1solzcBfI/mqdefault.jpg', 'demonstration, entertainment'),
(37, 'Taiji: Sun Style Tai Chi', 'http://www.youtube.com/embed/MQsxy5z-zxE', 5, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 128328, 'Tutorial', 'http://i.ytimg.com/vi/MQsxy5z-zxE/mqdefault.jpg', 'sun style, solo'),
(38, 'Tai Chi Sword Form 32 Yang Taiji Jian', 'http://www.youtube.com/embed/MxhAjv3YneM', 4, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 634706, 'Weapon', 'http://i.ytimg.com/vi/MxhAjv3YneM/mqdefault.jpg', 'demonstration, weapon, solo, intermediate'),
(39, 'San Shou Applications of Chen Style Taijiquan Practical Meth', 'http://www.youtube.com/embed/MZ1OOPdkiPs', 3, '144', 'These are some video clips of how Chen Style Taijiquan Practical Method can be used in real combat. While the clips are not from real combat situations, they are teaching sessions. ', 'Non-English', 99389, 'Group demo', 'http://i.ytimg.com/vi/MZ1OOPdkiPs/mqdefault.jpg', 'group, demonstration, application'),
(40, 'Taiji Broadsword', 'http://www.youtube.com/embed/Q_yzKs-CXrI', 2, '240', 'Taiji Chinese Broadsword (Chen Style) 陳式太極刀 by 10-year old kid.', 'English', 59246, 'Weapon', 'http://i.ytimg.com/vi/Q_yzKs-CXrI/mqdefault.jpg', 'broadsword, weapon, example'),
(41, 'Tai Chi Form 24 Taiji', 'http://www.youtube.com/embed/Q77p16rEX7o', 7, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, broadsword,', 'English', 982148, 'Tutorial', 'http://i.ytimg.com/vi/Q77p16rEX7o/mqdefault.jpg', 'step-by-step, instructional, solo, beginnner'),
(42, 'Wu Tai Chi Taiji', 'http://www.youtube.com/embed/QSqfKRJotW4', 6, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 405443, 'Others', 'http://i.ytimg.com/vi/QSqfKRJotW4/mqdefault.jpg', 'demonstration, solo'),
(43, 'Taiji: Chen Tai Chi Cannon Fist (Pao Chui)', 'http://www.youtube.com/embed/r6I9gf-Clac', 6, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 126448, 'Tutorial', 'http://i.ytimg.com/vi/r6I9gf-Clac/mqdefault.jpg', 'solo, demonstration, tutorial'),
(44, 'Hun Yuan Tai Chi 24 Forms (hunyuan)', 'http://www.youtube.com/embed/SVwXj5ykL_w', 6, '480', 'Zhang Jiping, an indoor disciple of GM Feng Zhiqiang (the founder of Hunyuan Tai Chi), 7th dan of Chinese Martial Art Rank, and an inheritor ', 'English', 68774, 'Tutorial', 'http://i.ytimg.com/vi/SVwXj5ykL_w/mqdefault.jpg', 'solo, training'),
(45, 'Tai Chi Form 42 Taiji', 'http://www.youtube.com/embed/TblrG3WAwqU', 6, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'Non-English', 96060, 'Application', 'http://i.ytimg.com/vi/TblrG3WAwqU/mqdefault.jpg', 'solo, application'),
(46, 'Tai Chi Application for Self-defense Fight in Chen taiji 1', 'http://www.youtube.com/embed/tEbupVWZ6mk', 3, '480', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, broadsword, qigong (Chi gong)', 'Non-English', 737550, 'Application', 'http://i.ytimg.com/vi/tEbupVWZ6mk/mqdefault.jpg', 'fight, demonstration, example'),
(47, 'Grandmaster Chen Xiaowang: Chen Taiji Lao Jia form', 'http://www.youtube.com/embed/UTucZltO4UM', 3, '480', 'On August 24th, 2002, The Tiger Claw Foundation held a Benefit Gala in honor of the 10 Year Anniversary of Kungfu Tai Chi Magazine.', 'English', 76150, 'Others', 'http://i.ytimg.com/vi/UTucZltO4UM/mqdefault.jpg', 'grandmaster, demonstration'),
(48, 'Tai Chi Taiji Warm-up 18 Forms', 'http://www.youtube.com/embed/uZ0Wi-OAB4g', 3, '480', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 79376, 'Application', 'http://i.ytimg.com/vi/uZ0Wi-OAB4g/mqdefault.jpg', 'solo, application, demonstratoin'),
(49, 'Tai Chi (Chen style) -- First Routine Montreal', 'http://www.youtube.com/embed/vMAjEsWaZ1s', 9, '480', 'Chen style Tai Chi.\r\nVisit: internalstyle.com from Montreal, Canada', 'English', 64930, 'Tutorial', 'http://i.ytimg.com/vi/vMAjEsWaZ1s/mqdefault.jpg', 'demonstration, solo'),
(50, 'Chen Man-Ch''ing Short Tai Chi Form', 'http://www.youtube.com/embed/vsDPy7zMrA4', 9, '1080', 'This is a rare video of Chen Man-Ch''ing performing the style of Tai Chi Chuan that we practice in our system. ', 'English', 365886, 'Application', 'http://i.ytimg.com/vi/vsDPy7zMrA4/mqdefault.jpg', 'example, master, demonstration'),
(51, 'Taiji - Chen Style', 'http://www.youtube.com/embed/W6ZwM7Nlgs0', 9, '240', 'by Master Zhu Tiancai 朱天才, Henan\r\nhttp://taiji.thecorner.org', 'Non-English', 83336, 'Application', 'http://i.ytimg.com/vi/W6ZwM7Nlgs0/mqdefault.jpg', 'demo, female, solo'),
(52, 'Chen Style Taiji - Master Aiping Cheng', 'http://www.youtube.com/embed/wDqY-sq6tNg', 3, '480', 'Master Aiping Cheng demonstrating the first half of the Chen 56 Form at Taste of China, 1999.', 'English', 112809, 'Application', 'http://i.ytimg.com/vi/wDqY-sq6tNg/mqdefault.jpg', 'competition, solo'),
(53, 'Tai chi for beginners - Yang style Form Lesson 1', 'http://www.youtube.com/embed/xlHGjYHyjmM', 7, '480', 'Learn the basics of Tai chi for beginners from a real tai chi master. ', 'English', 392043, 'Tutorial', 'http://i.ytimg.com/vi/xlHGjYHyjmM/mqdefault.jpg', 'demonstration, tutorial, example, beginners'),
(54, 'Taiji - Chen Style Kungfu application (Wang Zhanjun)', 'http://www.youtube.com/embed/XSC6Q4pZMYE', 2, '240', '陳式功夫架 實戰示範 (王戰軍)\r\nhttp://www.hongkongtaiji.com', 'Non-English', 72535, 'Group demo', 'http://i.ytimg.com/vi/XSC6Q4pZMYE/mqdefault.jpg', 'group, tutorial, demonstration'),
(55, 'Experiencing Real Kung Fu: Taiji Quan', 'http://www.youtube.com/embed/y872UvKv_XM', 30, '480', 'A kung fu expert (Zhao Jilong), a beginning student (Eric Couillard), and a CCTV reporter (Yan Fei) travel to Chen Jiagou village to see what real Taiji Quan is all about.', 'Non-English', 107813, '', 'http://i.ytimg.com/vi/y872UvKv_XM/mqdefault.jpg', 'instructions, solo, demonstration'),
(56, 'Tai Chi Power Striking Taiji Fajin Training', 'http://www.youtube.com/embed/Yk_mwm5tgCY', 4, '480', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 71737, 'Tutorial', 'http://i.ytimg.com/vi/Yk_mwm5tgCY/mqdefault.jpg', 'solo, demonstration'),
(57, 'Taiji - sword', 'http://www.youtube.com/embed/zdjbPBSWJm4', 3, '240', 'Demonstrated by Master Chen Zhenglei 陳正雷 - 陳式單劍\r\nhttp://www.hongkongtaiji.com', 'Non-English', 79708, '', 'http://i.ytimg.com/vi/zdjbPBSWJm4/mqdefault.jpg', 'sword, demonstration, solo'),
(58, 'Taiji: Chen Tai Chi Broadsword tai chi Dao', 'http://www.youtube.com/embed/zWhr9x5X7cM', 5, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, ', 'English', 77090, 'Weapon', 'http://i.ytimg.com/vi/zWhr9x5X7cM/mqdefault.jpg', 'weapon, demonstration, solo, broadsword'),
(59, 'Chen Style Tai Chi Silk Reeling Qigong with Jose Figueroa', 'http://www.youtube.com/embed/zx8E8RdKwag', 8, '480', 'Chen Style Tai Chi Progressive Silk Reeling\r\nwith Jose Figueroa, DVD ', 'English', 58896, 'Tutorial', 'http://i.ytimg.com/vi/zx8E8RdKwag/mqdefault.jpg', 'example, demonstration, solo'),
(62, 'Tai Chi Sword 42-Form', 'http://www.youtube.com/embed/1PbnflQZ0qU', 4, '360', 'http://drpaulinebao.com Traditional Chinese Medical Doctor and International Tai Chi Champion Dr. Pa', 'English', 62767, 'Tutorial,Application', 'http://i.ytimg.com/vi/1PbnflQZ0qU/mqdefault.jpg', 'Tai Chi Sword'),
(64, '42式太極劍 - 陳思坦', 'http://www.youtube.com/embed/34EvXNx1fhY', 4, '240', '&#38515;&#24605;&#22374;&#65072;\r\n&#19990;&#30028;&#27494;&#34899;&#37670;&#27161;&#36093;&#30007;&#', 'Non-English', 346993, 'Tutorial,Application', 'http://i.ytimg.com/vi/34EvXNx1fhY/default.jpg', 'Sports'),
(66, 'Chen Style Taiji Quan - Fighting Techniques Demonstration - 陈式 太极拳 - Combat Tai Chi', 'http://www.youtube.com/embed/4JZRTuSw1Fc', 4, '1080', 'Il Maestro Giuseppe Paterniti dimostra alcune applicazioni marziali del Taiji Quan stile Chen insiem', 'Non-English', 55086, 'Tutorial,Weapon,Group demo', 'http://i.ytimg.com/vi/4JZRTuSw1Fc/mqdefault.jpg', 'fighting self defense'),
(68, '24式太極拳 - 陳思坦', 'http://www.youtube.com/embed/649hFMpWIUc', 6, '240', '&#38515;&#24605;&#22374;&#65072;\r\n&#19990;&#30028;&#27494;&#34899;&#37670;&#27161;&#36093;&#30007;&#', 'Non-English', 1413798, 'Tutorial,Application', 'http://i.ytimg.com/vi/649hFMpWIUc/default.jpg', 'Taiji master'),
(69, 'Chen Style Taiji Quan 38 form 陳式太極拳38式', 'http://www.youtube.com/embed/6E6XPwRkQ3Q', 5, '240', 'Demonstration of Chen Style Taiji by Sifu Edward Mak in Seminar of Taiji Quan and Northern Mantis Ku', 'Non-English', 50360, 'Others', 'http://i.ytimg.com/vi/6tLC9KslCo4/mqdefault.jpg', 'demonstration'),
(71, 'From BodyWisdom''s Tai Chi for Beginners with Chris Pei - Intro, Warm-up & Part 1 Yang 24 form', 'http://www.youtube.com/embed/7D7qAQ720x8', 1, '360', 'AI CHI FOR BEGINNERS is the perfect Tai Chi exercise video to explore and experience the numerous be', 'English', 420286, 'Tutorial,Application', 'http://i.ytimg.com/vi/7D7qAQ720x8/mqdefault.jpg', 'Intro, Warm-up & Part 1 Yang 24 form'),
(72, 'Taiji - Chen Style old form 1 & 2', 'http://www.youtube.com/embed/8uu7ghVNt4M', 10, '240', 'Demonstration by 3 aged players, Henan\r\nhttp://www.hongkongtaiji.com					', 'Non-English', 156529, 'Tutorial', 'http://i.ytimg.com/vi/8uu7ghVNt4M/mqdefault.jpg', 'old form chen taiji'),
(75, '陳式太極拳56式', 'http://www.youtube.com/embed/aSo_PALSV5w', 7, '240', 'ä¸­åœ‹åœ‹å®¶æ­¦è¡“éšŠå¤ªæ¥µæ‹³æ•™ç·´\r\nä¸–ç•Œå¤ªæ¥µæ‹³å† è»\r\nçŽ‹äºŒå¹³è€å¸«					', 'Non-English', 51249, 'Tutorial', 'http://i.ytimg.com/vi/aSo_PALSV5w/default.jpg', '56 form tai ji'),
(76, 'Versus : Taiji vs Luta', 'http://www.youtube.com/embed/b3Mlao2iHo0', 7, '360', 'Emission GONG, Gi Or No Gi, sur Kombat Sport\r\nProduit et réalisé par Fred Rousseau\r\nTai Chi VS Luta ', 'English', 73831, 'Tutorial,Application', 'http://i.ytimg.com/vi/b3Mlao2iHo0/mqdefault.jpg', 'Versus : Taiji vs Luta'),
(78, 'THe BEST FULL 4 Hours Tai Chi Tutorial for Beginners', 'http://www.youtube.com/embed/C9FkTb-3uaM', 3, '360', 'Step by step , learn Tai chi in a perfect simple way from the beginning :', 'English', 229137, 'Tutorial', 'http://i.ytimg.com/vi/C9FkTb-3uaM/default.jpg', 'Tai Chi Tutorial for Beginners'),
(79, 'Tai Chi 24 Form Style', 'http://www.youtube.com/embed/Cbqk3sd2ckw', 6, '360', 'Performed by San Francisco Fitness Tai Chi Group', 'English', 120000, 'Tutorial,Application', 'http://i.ytimg.com/vi/Cbqk3sd2ckw/default.jpg', 'Tai Chi Group'),
(80, 'Chen Taijiquan - Laojia Yi Lu (part 2)', 'http://www.youtube.com/embed/cUb5JARRUH4', 6, '240', 'Laojia Yi Lu performed by Grandmaster Chen Zhenglei (part 2)					', 'Non-English', 59194, 'Tutorial', 'http://i.ytimg.com/vi/cUb5JARRUH4/default.jpg', 'style chen taiji'),
(82, 'Taiji Chen Style 56 form 陳氏太極56式', 'http://www.youtube.com/embed/eQytjv9QNBc', 7, '480', 'Susan Gu é¡§é’ Full length DVD bundled with Bilingual book (Chinese narration with English form nam', 'Non-English', 164844, 'Tutorial', 'http://i.ytimg.com/vi/eQytjv9QNBc/mqdefault.jpg', '56 form chen taiji'),
(83, 'Yang Tai Chi 24 Form Back View | Taiji 24 Form Posterior View | Nelson, BC', 'http://www.youtube.com/embed/F6rf5KdAKdE', 5, '360', 'International Tai Chi Champion Dr. Pauline Bao Performs Yang Tai Chi 24 Form Back View (Taiji 24 For', 'English', 233897, 'Tutorial,Application', 'http://i.ytimg.com/vi/F6rf5KdAKdE/default.jpg', 'Taiji 24 Form Posterior View | Nelson, BC'),
(84, 'Real Combat Tai Chi Master', 'http://www.youtube.com/embed/Fp_uU-qMDSc', 2, '360', 'Master Wong uses real combat tai chi applications and shows you how it is used for self defence in t', 'English', 106329, 'Tutorial,Application', 'http://i.ytimg.com/vi/Fp_uU-qMDSc/mqdefault.jpg', 'real combat tai chi applications'),
(85, 'The Last Master of Chen Taiji Quan', 'http://www.youtube.com/embed/fQKkvzIoCoc', 8, '720', 'Edited documentary on Chen Village and Grandmaster Chen Xiaowang\r\nhttp://www.chenxiaowang.com					', 'Non-English', 53277, 'Tutorial,Group demo', 'http://i.ytimg.com/vi/fQKkvzIoCoc/mqdefault.jpg', 'last master chen taiji'),
(88, 'Tai Chi Lesson 1', 'http://www.youtube.com/embed/g8l7ddIpnac', 4, '360', 'A group of Tai Chi students in a park', 'English', 454026, 'Tutorial,Application', 'http://i.ytimg.com/vi/g8l7ddIpnac/default.jpg', 'A group of Tai Chi'),
(91, 'Tai Chi Form: 1 - Beginning', 'http://www.youtube.com/embed/gyAN4MC0XBY', 6, '240', 'Angus Clark: It is important from the very beginning of the form to work at developing awareness. Be', 'English', 240441, 'Tutorial,Application', 'http://i.ytimg.com/vi/gyAN4MC0XBY/mqdefault.jpg', 'Beginning'),
(92, '陳式太極拳56式　丁杰', 'http://www.youtube.com/embed/H06sIRyXfYo', 6, '480', 'ç«¶è³½å¥—è·¯56å¼ ä¸å‚‘					', 'Non-English', 84471, 'Tutorial', 'http://i.ytimg.com/vi/H06sIRyXfYo/default.jpg', '56 form'),
(94, 'Tai Chi for Beginners, 8 Lessons with Dr Paul Lam - first lesson below', 'http://www.youtube.com/embed/hIOHGrYCEJ4', 45, '360', 'Begin Your Journey to Better Health with Six Easy Steps\r\nTAI CHI FOR BEGINNERS - 8 Lessons with Dr P', 'English', 1358967, 'Tutorial,Application,Group demo', 'http://i.ytimg.com/vi/hIOHGrYCEJ4/mqdefault.jpg', 'Tai Chi for Beginners, 8 Lessons with Dr Paul Lam'),
(96, 'Wang Zhi Ping - Chen 18', 'http://www.youtube.com/embed/I6IPSNM_gyQ', 4, '240', 'Chen 18 Performed by Wang Zhi Ping. Copyright - Anthony Fidler 2005. See www.southchina-taichi.com', 'English', 130141, 'Tutorial,Application', 'http://i.ytimg.com/vi/I6IPSNM_gyQ/default.jpg', 'Wang Zhi Ping'),
(97, 'Simplified 24 Tai Chi routine', 'http://www.youtube.com/embed/IEJLM29ITMw', 5, '240', 'KungFuMagazine.com in conjunction with TigerClaw.com and the Tiger Claw Foundation will be staging a', 'English', 67000, 'Tutorial,Application', 'http://i.ytimg.com/vi/IEJLM29ITMw/mqdefault.jpg', 'Tai Chi routine'),
(99, '陳式太極拳無敵戰將王戰海', 'http://www.youtube.com/embed/Is41HFoNm18', 8, '480', 'None					', 'Non-English', 54107, 'Group demo,Others', 'http://i.ytimg.com/vi/Is41HFoNm18/mqdefault.jpg', 'chen taiji'),
(100, 'Tai Chi - the 24 Forms', 'http://www.youtube.com/embed/JIZVuFr9SAM', 34, '240', 'The most popular Tai Chi set\r\nTAI CHI - THE 24 FORMS \r\nDR PAUL LAM (service@taichiproductions.com)', 'English', 288324, 'Tutorial,Application', 'http://i.ytimg.com/vi/JIZVuFr9SAM/mqdefault.jpg', 'the 24 Forms'),
(101, 'Chen Taijiquan applications', 'http://www.youtube.com/embed/Jlr0GmPYHCI', 9, '360', 'Chen Taijiquan fighting applications					', 'Non-English', 79361, 'Tutorial,Application,Group demo', 'http://i.ytimg.com/vi/Jlr0GmPYHCI/mqdefault.jpg', 'fighting application'),
(102, 'Taiji - Chen Style pushhand', 'http://www.youtube.com/embed/KDXRjXEhLGY', 7, '240', 'http://www.hongkongtaiji.com					', 'Non-English', 55439, 'Tutorial,Group demo', 'http://i.ytimg.com/vi/KDXRjXEhLGY/mqdefault.jpg', 'push hands'),
(105, '陈氏太极拳56式竞赛套路 （马畅）', 'http://www.youtube.com/embed/L3Am0s-eksw', 6, '240', 'None					', 'Non-English', 87971, 'Tutorial', 'http://i.ytimg.com/vi/L3Am0s-eksw/mqdefault.jpg', '56 form'),
(106, '陈氏太极拳56式1.flv', 'http://www.youtube.com/embed/lhTqt-9RH5w', 68, '360', 'é™ˆæ°å¤ªæžæ‹³56å¼					', 'Non-English', 56791, 'Tutorial', 'http://i.ytimg.com/vi/lhTqt-9RH5w/mqdefault.jpg', '56 form'),
(107, 'Chen Taijiquan demo from Chen Xiaowang''s son, Chen Pengfei', 'http://www.youtube.com/embed/ljNEAYEt5m4', 4, '360', 'demo from 2000 Chenjiagou tournament in Jiaozuo					', 'Non-English', 228490, 'Others', 'http://i.ytimg.com/vi/ljNEAYEt5m4/mqdefault.jpg', 'demonstration'),
(110, '陳氏太極拳 - 陳小旺 VS 亞洲大力士 - 龍武', 'http://www.youtube.com/embed/nAIDi5Nip64', 30, '360', 'é™³å°æ—º VS äºžæ´²å¤§åŠ›å£«\r\nè½‰è¼‰è‡ªç¶²è·¯					', 'Non-English', 570865, 'Tutorial,Application,Group demo', 'http://i.ytimg.com/vi/nAIDi5Nip64/mqdefault.jpg', 'fighting application'),
(111, 'Chen Tai Chi Documentary (1of2)', 'http://www.youtube.com/embed/o1bOxfFVxfc', 10, '240', 'A Documentary on Chen Taichi.					', 'Non-English', 53107, 'Tutorial,Group demo,Others', 'http://i.ytimg.com/vi/o1bOxfFVxfc/mqdefault.jpg', 'documentary'),
(112, '陳式太極拳56式兢赛套路', 'http://www.youtube.com/embed/O82pVwYA1kI', 5, '240', 'é™³å¼å¤ªæ¥µæ‹³56å¼å…¢èµ›å¥—è·¯\r\n\r\nçŽ‹è¥¿å®‰å¤§å¸«å°å¾’å¼Ÿå¸¸è»’ç‘‹ç¤ºç¯„				', 'Non-English', 98988, 'Tutorial', 'http://i.ytimg.com/vi/O82pVwYA1kI/default.jpg', '56 form chen taiji'),
(113, '陳式太極拳', 'http://www.youtube.com/embed/oc9X6gHq5UA', 9, '240', 'çŽ‹è¥¿å®‰ä¹‹å°å¾’å¼Ÿå¸¸è»’å‰					', 'Non-English', 50598, 'Entertainment,Group demo,Others', 'http://i.ytimg.com/vi/oc9X6gHq5UA/default.jpg', 'chen taiji'),
(114, 'Tai Chi HowTo: Quick & Easy Way to Treat Knee Pain or Stiffness - from www.InternalGardens.com', 'http://www.youtube.com/embed/p3ChZziyU6Q', 7, '360', 'From the last video about the deadliest tai chi knee exercise (www.youtube.com/watch?v=7PKX0E52erc),', 'English', 135540, 'Tutorial,Application', 'http://i.ytimg.com/vi/p3ChZziyU6Q/mqdefault.jpg', 'www.InternalGardens.com'),
(115, 'Daily Tai Chi - join in this 8-minute exercise', 'http://www.youtube.com/embed/PNtWqDxwwMg', 9, '240', 'aiChiHealthProducts.org and VibrantHealthHappiness.com present an 8-minute "Easy Tai Chi" to do dail', 'English', 167157, 'Tutorial,Application', 'http://i.ytimg.com/vi/PNtWqDxwwMg/mqdefault.jpg', 'Excercise'),
(116, '陳家十八式太極拳', 'http://www.youtube.com/embed/QCy-ZXdDgws', 4, '240', 'é™³å®¶åå…«å¼å¤ªæ¥µæ‹³					', 'Non-English', 53900, 'Tutorial', 'http://i.ytimg.com/vi/QCy-ZXdDgws/mqdefault.jpg', '18 form chen style'),
(117, '陳式太極拳　老架二路　陳小旺', 'http://www.youtube.com/embed/QDAOeOXuXBA', 3, '480', 'è‡ªé¸å¥—è·¯ã€€Chen Xiaowang Chen style Old frame					', 'Non-English', 89573, 'Others', 'http://i.ytimg.com/vi/QDAOeOXuXBA/default.jpg', 'demonstration'),
(118, 'Chen Style Tai Chi The essential point of boxing(Eng sub)', 'http://www.youtube.com/embed/QncpnFdLjZ4', 1, '360', 'Starring: Tiancai,Zhu\r\nZhu Tiancai Fist Digest is a unique skill of Chen-Style Taijiquan adopted by ', 'Non-English', 252333, 'Tutorial,Application', 'http://i.ytimg.com/vi/QncpnFdLjZ4/mqdefault.jpg', ' The essential point of boxing'),
(119, 'The Kung Fu Tai Chi Day Simplified 24 Routine.', 'http://www.youtube.com/embed/qV6PjN55Lb4', 7, '240', 'Sifu Zou Yunjian demonstrates the Simplified 24 Tai Chi routine to its official melody.\r\nJoin our Gr', 'English', 191900, 'Tutorial,Application', 'http://i.ytimg.com/vi/qV6PjN55Lb4/mqdefault.jpg', 'The Kung Fu Tai Chi'),
(121, 'Tai chi for beginners - Chen Style 1 Part 6', 'http://www.youtube.com/embed/RQ5BQpyd5U4', 7, '360', 'Learn the basics of Tai chi for beginners from a real tai chi master. Master Wong tai chi available ', 'English', 166680, 'Tutorial,Application', 'http://i.ytimg.com/vi/RQ5BQpyd5U4/default.jpg', 'Tai chi for beginners '),
(122, 'Young Woman Tai Chi Demonstration', 'http://www.youtube.com/embed/rVdE69D29bI', 8, '360', 'This video clip is from a garage sale video tape that is 15 or 20 years old. The video has Chinese c', 'English', 532618, 'Tutorial,Application', 'http://i.ytimg.com/vi/rVdE69D29bI/mqdefault.jpg', 'Tai Chi Demonstration'),
(123, 'Chen Taijiquan - Laojia Yi Lu (part 1)', 'http://www.youtube.com/embed/saPQ6wf4eCw', 8, '240', 'Laojia Yi Lu performed by Grandmaster Chen Zhenglei (part 1)					', 'Non-English', 162621, 'Tutorial', 'http://i.ytimg.com/vi/saPQ6wf4eCw/mqdefault.jpg', 'style chen taiji'),
(124, '陈氏太极分步教学1-2 Chen Xiao Wang TaiJi * Chen''s Style 1-2', 'http://www.youtube.com/embed/Se_0LSF5FqI', 4, '240', 'Chen Xiao Wang TaiJi * Chen''s Style,\r\nThis is a step By step teach Video 1-2					', 'Non-English', 50839, 'Tutorial', 'http://i.ytimg.com/vi/Se_0LSF5FqI/mqdefault.jpg', 'beginner'),
(125, 'Tai chi for beginners - Chen style 2 Lesson 1', 'http://www.youtube.com/embed/sjzfA4dYMfg', 8, '360', 'Learn the basics of Tai chi for beginners from a real tai chi master.', 'English', 226232, 'Tutorial', 'http://i.ytimg.com/vi/sjzfA4dYMfg/mqdefault.jpg', 'Master Wong tai chi'),
(126, '定步缠丝功-陈氏太极拳基本功法.flv', 'http://www.youtube.com/embed/SKnasPHi6cI', 11, '240', 'For Learning And Educational Purpose - No Copyright Infringement Intended. Will Remove This Video Up', 'Non-English', 55581, 'Tutorial', 'http://i.ytimg.com/vi/SKnasPHi6cI/mqdefault.jpg', 'chen taiji'),
(127, 'Tai Chi for Arthritis - A Free Lesson with Introduction', 'http://www.youtube.com/embed/tAOuEpa01j4', 49, '240', 'Discover the health benefits and enjoyment with this program! It is recommended by Centers of Diseas', 'English', 113175, 'Tutorial,Application', 'http://i.ytimg.com/vi/tAOuEpa01j4/mqdefault.jpg', 'Tai Chi for Arthritis '),
(128, 'Tai Chi 24-form', 'http://www.youtube.com/embed/TBvF6r6DOvc', 4, '240', 'It''s a great martial art style. You should try it.', 'Non-English', 6003846, 'Tutorial,Application', 'http://i.ytimg.com/vi/TBvF6r6DOvc/default.jpg', 'Tai Chi 24-form...'),
(130, 'Tai chi for beginners - Chen style 1 Part 3', 'http://www.youtube.com/embed/tEIzsXax_us', 8, '360', 'Learn the basics of Tai chi for beginners from a real tai chi master. Master Wong tai chi available ', 'English', 25623, 'Tutorial,Application', 'http://i.ytimg.com/vi/tEIzsXax_us/default.jpg', 'Chen style 1 Part 3'),
(131, 'Chen Style Tai Chi with Master Zhang Gwang Ping', 'http://www.youtube.com/embed/tJvEpi2sxoo', 4, '240', 'Zhang Gwang Ping teaches tai chi in Beijing. Here she performs the Chen Style 48(?) competition form', 'Non-English', 198097, 'Tutorial', 'http://i.ytimg.com/vi/tJvEpi2sxoo/mqdefault.jpg', 'chen tai chi'),
(132, 'Difference between tai chi and wing chun', 'http://www.youtube.com/embed/TmCwc6z4SCw', 8, '240', 'Question asked by Jonathan Bluestein who is an author of the book "Research of Martial arts"', 'English', 59120, 'Tutorial', 'http://i.ytimg.com/vi/TmCwc6z4SCw/mqdefault.jpg', 'Wing chun and Tai chi'),
(133, 'Tai Chi Chuan - Chen Style Full Form', 'http://www.youtube.com/embed/U_yctN4uTQM', 5, '720', 'Learn the moves from the movie tai chi zero! Master Wong offers training for beginners in Ipswich, S', 'Non-English', 53479, 'Tutorial', 'http://i.ytimg.com/vi/U_yctN4uTQM/mqdefault.jpg', 'full form chen taiji'),
(134, 'Feng Zhiqiang Chen Taiji 馮自強 陳式太極拳', 'http://www.youtube.com/embed/u3A_0zCbYNM', 8, '360', 'Chen style taiji form executed by master Feng Zhijiang 1986					', 'Non-English', 52292, 'Tutorial', 'http://i.ytimg.com/vi/u3A_0zCbYNM/mqdefault.jpg', 'chen taiji'),
(135, 'Taiji - Chen Style New 1st form (Wang Xian)', 'http://www.youtube.com/embed/uJfp3-2pM_M', 10, '240', 'http://www.hongkongtaiji.com					', 'English', 53450, 'Tutorial', 'http://i.ytimg.com/vi/uJfp3-2pM_M/mqdefault.jpg', 'First form chen taiji'),
(138, 'Chen Taichi Fajin basics explained', 'http://www.youtube.com/embed/vvCgWjDhHH4', 29, '720', 'Taichi instructor ''Shawn'' (Baek Sang-heon/ë°±ìƒí—Œ) (so not John, but Shawn) explains the basic pri', 'English', 58863, 'Tutorial,Group demo', 'http://i.ytimg.com/vi/vvCgWjDhHH4/mqdefault.jpg', 'chen taiji'),
(140, 'TAI CHI CHEN APPLICATIONS', 'http://www.youtube.com/embed/WBA7LsumNGs', 8, '240', 'Master Jerry Cook with Sifu Tim Gaskell present tai chi chen applications.', 'English', 63765, 'Tutorial,Application', 'http://i.ytimg.com/vi/WBA7LsumNGs/default.jpg', 'Application'),
(142, 'Taiji - Chen Style', 'http://www.youtube.com/embed/x0tc8IGYpfU', 10, '240', 'Demonstration by Master Chen Xiaowang\r\nwww.hongkongtaiji.com					', 'Non-English', 281750, 'Tutorial', 'http://i.ytimg.com/vi/x0tc8IGYpfU/mqdefault.jpg', 'chen taiji'),
(143, 'tai chi push hands', 'http://www.youtube.com/embed/XALpOmuQR88', 5, '240', 'five kinds of chen style tai chi chuan push hands.practised by wuyingfeng(red) chenxili(white)					', 'English', 312869, 'Tutorial,Group demo', 'http://i.ytimg.com/vi/XALpOmuQR88/mqdefault.jpg', 'push hands'),
(144, 'Chen Style Tai Chi Demonstration - Chen Zheng Lei', 'http://www.youtube.com/embed/XBnPzdTPFyM', 5, '240', 'This is a mixed form Chen Style Taijiquan performed by Grandmaster Chen Zheng Lei,\r\n2005 in China, Z', 'Non-English', 54373, 'Others', 'http://i.ytimg.com/vi/XBnPzdTPFyM/mqdefault.jpg', 'demonstration'),
(147, 'Tai Chi Stile Chen - Forma Antica', 'http://www.youtube.com/embed/xw0f6hZXhC8', 3, '480', 'Primo parte della Forma Chen 83 movimenti eseguita dal MÂ° Geoge Xu a Montese					', 'Non-English', 62345, 'Tutorial', 'http://i.ytimg.com/vi/xw0f6hZXhC8/mqdefault.jpg', 'chen style'),
(148, '陳式太極拳　老架一路　1　王西安', 'http://www.youtube.com/embed/y9s42tTImY0', 6, '480', 'Wang Xian Chen style Old frame					', 'Non-English', 80887, 'Tutorial', 'http://i.ytimg.com/vi/y9s42tTImY0/default.jpg', 'old form chen taiji'),
(149, '陈氏56式太极拳（Chen style tai chi 56 form）', 'http://www.youtube.com/embed/YVgja2MPa1U', 6, '240', 'Master David Bao, Hua Ying Wushu & Tai Chi Academy\r\nwww.davidbao.com', 'Non-English', 50000, 'Tutorial,Application', 'http://i.ytimg.com/vi/YVgja2MPa1U/mqdefault.jpg', 'Chen style tai chi 56 form&#65289;'),
(152, 'Tai chi for beginners - Chi Chen Style 1 Part 7', 'http://www.youtube.com/embed/zy6vfQNk2EI', 8, '240', 'Learn the basics of Tai chi for beginners from a real tai chi master. Master Wong tai chi available ', 'English', 150992, 'Tutorial,Application', 'http://i.ytimg.com/vi/zy6vfQNk2EI/mqdefault.jpg', 'Tai chi for beginners '),
(153, 'Tai Chi 24 form - slow version', 'http://www.youtube.com/embed/5gDsXbMTBd8', 9, '360', 'Standard YouTube License', 'Non-English', 130407, 'Tutorial,Application', 'http://i.ytimg.com/vi/H9OWQMGRSlw/default.jpg', ' slow version'),
(154, 'ttttti', 'http://www.youtube.com/v/urllllllll', 4, '360', 'dessssssssss', 'Non-English', 6666666, 'Application', 'lllll', 'tag');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uID` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `type` enum('User','Admin') NOT NULL DEFAULT 'User',
  `fvideos` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uID`, `password`, `name`, `email`, `type`, `fvideos`) VALUES
('admin1', 'secret123', 'adminuser', 'admin@fun.com', 'Admin', ''),
('agrawal', 'testing123', 'saurav', 'sauravagrawal21@gmail.com', 'User', ''),
('secretman', 'secret123', 'myname', 'secret@123.com', 'User', ''),
('test1', 'test1', 'testman1', 'test@test.com', 'User', 'http://www.youtube.com/embed/2WPQJoqmGPo|http://i.ytimg.com/vi/2WPQJoqmGPo/mqdefault.jpg$$http://www.youtube.com/embed/eJuudvIMZs0|http://i.ytimg.com/vi/eJuudvIMZs0/mqdefault.jpg$$http://www.youtube.com/embed/GgU3K7uq2_M|http://i.ytimg.com/vi/GgU3K7uq2_M/mqdefault.jpg'),
('test2', 'test2', 'test2', 'test.com', 'User', ''),
('test3', 'test3', 'testman3', 'testman@test.com', 'User', ''),
('test5', 'test5', 'test5', 'test3@asdf.com', 'User', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fun_video`
--
ALTER TABLE `fun_video`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`uID`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fun_video`
--
ALTER TABLE `fun_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=155;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
