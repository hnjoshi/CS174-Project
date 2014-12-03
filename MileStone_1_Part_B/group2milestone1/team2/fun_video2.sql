-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2014 at 05:48 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

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
-- Table structure for table `fun_video`
--

CREATE TABLE IF NOT EXISTS `fun_video` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `videolink` text COLLATE utf16_unicode_ci NOT NULL,
  `videolength` int(6) NOT NULL,
  `highestresolution` enum('144','240','360','480','720','1080') COLLATE utf16_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf16_unicode_ci NOT NULL,
  `language` enum('English','Non-English') COLLATE utf16_unicode_ci NOT NULL DEFAULT 'English',
  `viewcount` int(8) NOT NULL,
  `videotype` set('Tutorial','Entertainment','Application','Weapon','Group demo','Others') COLLATE utf16_unicode_ci NOT NULL,
  `iconimage` text COLLATE utf16_unicode_ci NOT NULL,
  `tag` text COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `fun_video`
--

INSERT INTO `fun_video` (`id`, `title`, `videolink`, `videolength`, `highestresolution`, `description`, `language`, `viewcount`, `videotype`, `iconimage`, `tag`) VALUES
(1, 'Sun Style Tai Chi Chuan Applications', 'https://www.youtube.com/watch?v=kanrCDUjhhI', 2, '240', 'This video will reveal these "hidden" self-defense techniques within Sun style to you. ', 'English', 193291, 'Tutorial,Application', 'http://i.ytimg.com/vi/kanrCDUjhhI/mqdefault.jpg', 'Martial Arts, Sun Style, Tai Chi Chuan, WLE.com, Tutorial, Tai Chi introduction'),
(2, 'Meditation: Taiji Meditation for Self-Healing', 'http://www.youtube.com/watch?v=-lba30NLsMM', 2, '480', 'Detailed instructions on Taiji/TaiChi Meditation for self healing. ', 'English', 54870, 'Tutorial,Others', 'http://i.ytimg.com/vi/-lba30NLsMM/mqdefault.jpg', 'Master Jesse Tsao, Meditation, taichitsao, qigong, Chi gong, Traditional Chinese Medicine, TCM, Tai Chi, www.taichihealthways.com'),
(3, 'Sun style Tai Chi 73 Taiji', 'http://www.youtube.com/watch?v=1xW5WWLtI68', 6, '240', 'Example of TaiChi Sun Style and lesson does not start until 2:46 with postures into the video.   ', 'English', 99810, 'Tutorial', 'http://i.ytimg.com/vi/1xW5WWLtI68/mqdefault.jpg', 'Sun Style, tai chi, Tutorials, instructions, martial arts'),
(5, 'Sun Jiayun (1913-2003)', 'http://www.youtube.com/watch?v=2pu4Wic-YJ4', 3, '240', 'Sun Jiayun, the daughter of Sun Lutang, performing Sun Style Tai Chi. Old and historical.', 'Non-English', 124212, 'Others', 'http://i.ytimg.com/vi/2pu4Wic-YJ4/mqdefault.jpg', 'DPGDPG, Sun JiaYun, Chinese, Historical Tai Chi, Sun Lutang, Sun Style, Tai Chi, Female, Demonstration'),
(6, 'Tai Chi Taiji Application for Self-defense Part1', 'http://www.youtube.com/watch?v=3vKLmTNYr_E', 3, '480', 'Instructions on how to use Tai Chi as a form of self defense. Part 1. Starts at 1:16. ', 'English', 154558, 'Tutorial', 'http://i.ytimg.com/vi/3vKLmTNYr_E/mqdefault.jpg', 'Master Jess Tsao, taichitsao, Form 24,  Application, Beginner, taichihealthways, Tai Chi, Taiji, Self defense, Martial Arts, Instructional, Educational'),
(7, 'YMAA Taiji Applications (Yang taijiquan) tai chi f', 'http://www.youtube.com/watch?v=6NagW6BImF8', 4, '360', 'Shows practical martial applications for each of the 37-postures of traditional Taiji.', 'English', 451003, 'Tutorial,Application', 'http://i.ytimg.com/vi/6NagW6BImF8/mqdefault.jpg', 'Taijiquan, YMAA, Fighting, self defense, educational, Tai Chi Chuan, Yang Ban-Hou, Tutorial, Educational, Chinese martial arts, Grand Ultimate Fist'),
(8, 'Yang Style Tai Chi Long Form 108 Taiji 1', 'http://www.youtube.com/watch?v=6tLC9KslCo4', 4, '480', 'Demonstration of the Traditional Yang Style. Tutorial Starts at 1:16 and shows the different moves.', 'English', 91958, 'Tutorial', 'https://i.ytimg.com/vi/6tLC9KslCo4/mqdefault.jpg', 'Yang, traditional style, Tai Chi, Martial Arts, taichitsao, taichihealthways, tutorial, instructions, instructional, education'),
(9, 'Meditation: Tai Chi Meditation for self-healing', 'http://www.youtube.com/watch?v=7ccIyN1ltrQ', 4, '480', 'Example and Tutorial of Tai Chi Meditation and healing. Master Jesse Tsao teaches the techniques.', 'English', 78171, 'Tutorial', 'http://i.ytimg.com/vi/7ccIyN1ltrQ/mqdefault.jpg', 'taichitsao, jesse tsao, meditation, relaxation, healing, tutorial, lesson, educational, taichi, taichihealthways, tutorial'),
(10, 'Tai Chi Fundamental For Taiji Beginners', 'http://www.youtube.com/watch?v=7WA4V5RE8As', 6, '240', 'Basic introduction of Tai Chi to help beginners understand the philosophies and benefits of Tai Chi.', 'English', 360006, 'Application,Others', 'http://i.ytimg.com/vi/7WA4V5RE8As/mqdefault.jpg', 'Master Jess Tsao, Fundamental, Beginner, taichihealthways, taichitsao, introduction, instructional, lesson, basic overview'),
(12, 'Wudang style Tai Chi Chuan', 'http://www.youtube.com/watch?v=aIwv-XLG58A', 5, '240', 'Belgian TV-special about the ancient Chinese art of tai chi chuan. All aspects of this martial.', 'Non-English', 82002, 'Group demo', 'http://i.ytimg.com/vi/aIwv-XLG58A/mqdefault.jpg', 'chineseboxingclub, demonstration, tai chi chuan, Geert Van Loo, belgian, weapons, martial arts, biography, documentary, educational'),
(13, 'Yang Style 48 Form Tai Chi Chuan', 'http://www.youtube.com/watch?v=AK5XDZN-t74', 8, '240', 'Demonstration video on Tai Chi by Sifu Amin Wu.', 'Non-English', 428135, 'Application', 'https://i.ytimg.com/vi/AK5XDZN-t74/mqdefault.jpg', 'demonstration, SifuAminWu, Tai Chi, martial arts, educational, chinese, example, Sifu Amin'),
(15, 'The 4 hours Tai Chi Tutorial for Beginners', 'http://www.youtube.com/watch?v=C9FkTb-3uaM', 351, '240', 'Christopher Pei shows a comprehensive and complete 4 hour film on Tai Chi techniques.', 'English', 232041, 'Tutorial', 'http://i.ytimg.com/vi/C9FkTb-3uaM/mqdefault.jpg', 'Christopher Pei, Beginner, Tai Chi, Martial Arts, Instructional, Long Video, ROBABEKIATV, Step by step, complete'),
(16, 'Tai Chi Fan', 'http://www.youtube.com/watch?v=D5RzZC0aB6I', 4, '240', 'A Group Choreographed Performance of Tai Chi using Fans. The sound is horribly distorted. ', 'Non-English', 646652, 'Group demo', 'http://i.ytimg.com/vi/D5RzZC0aB6I/mqdefault.jpg', 'Fans, Tai Chi, Demonstration, Martial Arts, VictorStone, Performance, Choreography'),
(17, 'Wu Tai Chi Chuan Pushhands Seminar', 'http://www.youtube.com/watch?v=DUmaFgzD2nk', 10, '360', 'Clip about the Wu Tai Chi Chuan Pushhands Seminar in Willich/Germany Summer 2008 with Ma Jiangbao.', 'English', 100339, '', 'http://i.ytimg.com/vi/DUmaFgzD2nk/mqdefault.jpg', 'pushhands, tai chi, demonstration, instructional, martial arts, rekcideob, group, seminar, germany'),
(18, 'Yang Style Tai Chi Applications Fighting Technique', 'http://www.youtube.com/watch?v=ecjnoijaOyg', 8, '480', 'Demonstration in Chinese on the many different fighting techniques of Tai Chi.', 'Non-English', 63145, 'Application', 'http://i.ytimg.com/vi/ecjnoijaOyg/mqdefault.jpg', 'Tai Chi, Moves, Techniques, Chinese, OKungfu Jong Jeon, Educational, Instructional, Yang Style'),
(20, 'Tai Chi 42 Forms Part 1 to 4 - Total Demo ', 'http://www.youtube.com/watch?v=FolGW8GcJFc', 7, '240', 'Silent Demonstration of 42 Forms Tai Chi by Miss Ng Ah Mui. Part 1 of 4.', 'Non-English', 440365, 'Others', 'http://i.ytimg.com/vi/FolGW8GcJFc/mqdefault.jpg', 'Demonstration, Ng Ah Mui, Chinese, 42 Forms, Tai Chi, hockkeah, Martial Arts, Silent'),
(21, 'Jonas Brothers Tai Chi', 'http://www.youtube.com/watch?v=h3GLEcwSvD4', 1, '360', 'Total Mockery and demonstration of Tai Chi starring the Jonas Brothers with Jack', 'English', 3336260, 'Entertainment', 'http://i.ytimg.com/vi/h3GLEcwSvD4/mqdefault.jpg', 'Jonas Brothers, Funny, Joke, Satire, Tai Chi, Entertainment, Humor, Jack'),
(23, 'Man of Tai Chi - Official Trailer (2013)', 'http://www.youtube.com/watch?v=HIKQCZDYfEI', 2, '720', 'Trailer to Man of Tai Chi" which marks Keanu Reeves directorial debut. He also stars in the film.', 'English', 4087078, 'Entertainment', 'http://i.ytimg.com/vi/HIKQCZDYfEI/mqdefault.jpg', 'Film, Hollywood, Keanu Reeves, FilmTrailerZone, Trailer, Movie, Entertainment, Fiction, Tai Chi, Actor'),
(24, 'Tai Chi for Beginners, 8 Lessons with Dr Paul Lam', 'http://www.youtube.com/watch?v=hIOHGrYCEJ4', 44, '720', 'Dr Paul Lam explains background tutorial of Tai Chi. He presents an overview of the subject matter.', 'English', 1368587, 'Tutorial', 'http://i.ytimg.com/vi/hIOHGrYCEJ4/mqdefault.jpg', 'Paul Lam, Doctor, Tai Chi for Beginners, Journey to Better Health, Lessons, Tutorials, High resolution, steps, Qigong, Martial Arts'),
(25, 'Yang Style 24 Tai Chi Chuan', 'http://www.youtube.com/watch?v=hou57TxCvCo', 6, '240', 'Original Tai Chi instructional video by Sifu Amin Wu (in Chinese) www.aminwutaichi.com', 'English', 214820, 'Tutorial', 'http://i.ytimg.com/vi/hou57TxCvCo/mqdefault.jpg', 'Sifu Amin Yang tutorial tai chi martial art chuan 24 demonstration www.aminwutaichi.com SifuAminWu'),
(26, 'Taiji: Chen Tai Chi Guan Dao', 'http://www.youtube.com/watch?v=HuBNTXS1SIY', 1, '240', 'Master Jesse Tsao demonstrates moves of Tai Chi Chen Style with a weapon.', 'English', 59266, 'Weapon', 'http://i.ytimg.com/vi/HuBNTXS1SIY/mqdefault.jpg', 'Chen Style, Jesse Tsao, taichitsao, Tai Chi, Staff, Demonstration, Guan Do, Martial Arts, taichihealthways'),
(27, 'Tai Chi Taiji Self-defense Application Traditional', 'http://www.youtube.com/watch?v=I_bTr-aPnKY', 4, '480', 'Part 2 of Self Defense Application of Traditional Tai Chi by Jesse Tsao in long form.', 'English', 92817, 'Tutorial,Application', 'http://i.ytimg.com/vi/I_bTr-aPnKY/mqdefault.jpg', 'Demonstration, Jesse Tsao, taichitsao, Tai Chi, Self Defense, Martial Arts, Lessons'),
(28, 'Tai Chi for Energy - Free 1st Lesson from Dr Lam', 'http://www.youtube.com/watch?v=i4eX13rNG6o', 50, '720', 'First Lesson of Tai Chi by Dr. Paul Lam. An instructional video of basic steps of Tai Chi.', 'English', 121249, 'Tutorial', 'http://i.ytimg.com/vi/i4eX13rNG6o/mqdefault.jpg', 'Paul Lam, Tai Chi, Lessons, 8 Lessons, Tai Chi Beginners, Martial Arts, Tutorial, Lessons, Instructional'),
(29, 'The Tao of Tai Chi', 'http://www.youtube.com/watch?v=JPTyXQarsKw', 7, '240', 'Entertaining Short Film on Tai Chi as a Self Defense style with english subtitles', 'English', 122791, 'Entertainment,Application', 'https://lh5.ggpht.com/vfUKOs4HxppRFuVxQRtwD7Cnn_Y3CFj_cWqRxkumew6OaoAEmV8pRNRPeAxxLtCAZFUoVRo=s151', 'Tao, Tai Chi, Entertainment, Movie, Fighting, Martial Arts, Demonstration, Chinese, Subtitles'),
(30, 'Sun Style Tai Chi Chuan Applications', 'http://www.youtube.com/watch?v=kanrCDUjhhI', 2, '240', 'Demonstration and Instructions of Sun Style Tai Chi Chuan.', 'English', 193251, 'Application', 'http://i.ytimg.com/vi/kanrCDUjhhI/mqdefault.jpg', 'Demonstration, Instruction, Tai Chi Chuan, Sun Style, Fighting, wle.com'),
(31, 'Tai Chi Kung Fu Fan', 'http://www.youtube.com/watch?v=Lb1yiEZ_xmE', 4, '480', 'Dr Pauline Bao demonstrates moves of Tai Chi Kung Fu with Fan.', 'English', 130465, 'Others', 'http://i.ytimg.com/vi/Lb1yiEZ_xmE/mqdefault.jpg', 'Paulino Bao, Fan, Tai Chi, Yang Chen, drpaulinebao.com, demonstration, demo, forms'),
(32, 'Tai Chi Chuan and Combat SanshouTechniques', 'http://www.youtube.com/watch?v=Mk68WsIoAGg', 3, '240', 'Instructional Video on techniques of Combat Sanshou and Tai Chi Chuan by Wim Demeere ', 'English', 225136, 'Tutorial', 'http://i.ytimg.com/vi/Mk68WsIoAGg/mqdefault.jpg', 'Wim Demeere, Tai Chi Chuan, Sanshou, Fighting, Combat, Self Defense, Lesson, Instructional, Instructions'),
(33, 'Taiji: Sun Style Tai Chi', 'http://www.youtube.com/watch?v=MQsxy5z-zxE', 6, '240', 'Jesse Tsao demonstrates and teaches Sun Style Tai Chi. Instructions start at 2:30. ', 'English', 128310, 'Tutorial', 'http://i.ytimg.com/vi/MQsxy5z-zxE/mqdefault.jpg', 'Jesse Tsao, taichitsao, taichihealthways.com, taichihealthways, Instructional, Techniques, Lessons, Tai Chi, Martial Arts'),
(34, 'Tai Chi Sword Form 32 Yang Taiji Jian', 'http://www.youtube.com/watch?v=MxhAjv3YneM', 5, '240', 'Master Jesse Tsao demonstrates and teaches moves of Tai Chi with a sword. Instructions at 2:16.', 'English', 634688, 'Tutorial,Weapon', 'http://i.ytimg.com/vi/MxhAjv3YneM/mqdefault.jpg', 'Tai Chi, Demonstration, Tutorial, Weapon, Sword, Jesse Tsao, taichitsao, Tai Chi, Lesson, Martial Arts, taichihealthways'),
(35, 'Tai Chi For Beginner', 'http://www.youtube.com/watch?v=nNWPk6tYoUM&list=UUwPaMEomSAE522FHtGpafcw', 5, '480', 'Dr. Paul Lam gives a very brief instructional introduction to Tai Chi. ', 'English', 1844979, 'Tutorial,Application', 'http://i.ytimg.com/vi/nNWPk6tYoUM/default.jpg', 'Beginner,Paul Lam, Tutorials, Instructions, Tai Chi, taichiproductions, Martial Arts, '),
(36, 'Tai Chi Application in Traditional Yang Long Form', 'http://www.youtube.com/watch?v=nuvLWEsw_hw', 4, '480', 'Master Jesse Tsao teaches demonstrates Long Form Tai Chi as self defense. Tutorial starts at 1:37.', 'English', 114118, 'Tutorial,Application', 'http://i.ytimg.com/vi/nuvLWEsw_hw/mqdefault.jpg', 'Jesse Tsao, taichitsao, Tai Chi, Self Defense, Martial Arts, Fighting, Long Form, Yang'),
(38, 'Tai Chi Chuan 24 Steps Beginners Lesson 1', 'http://www.youtube.com/watch?v=P5hvODK2zW4', 9, '480', 'A Tai Chi Lesson with 24 steps for the beginner Tai Chi student.', 'English', 2513714, 'Tutorial', 'http://i.ytimg.com/vi/P5hvODK2zW4/mqdefault.jpg', 'Tai Chi Lesson, Commercial, Lesson, Instructional, Demonstration,  Tai Chi, Martial Arts'),
(39, 'Taiji - Sun Style (Sun Jianyun)', 'http://www.youtube.com/watch?v=P62j_rWGjaA', 8, '240', 'Tai Chi Demonstration on the movements of Sun Jia Yun or Sun Jian Yun (1913-2003)', 'Non-English', 101728, 'Application,Others', 'http://i.ytimg.com/vi/P62j_rWGjaA/mqdefault.jpg', 'Demonstration, Movements, Sun Style, Sun Jia Yun, Sun Jian Yun, Historical, Tai Chi, Martial Arts'),
(40, 'Daily Tai Chi - join in this 8-minute exercise', 'http://www.youtube.com/watch?v=PNtWqDxwwMg', 9, '480', '8 minute lesson on Simple Tai Chi Movements by Don Fiore.', 'English', 569429, 'Tutorial', 'http://i.ytimg.com/vi/PNtWqDxwwMg/mqdefault.jpg', 'Education, Lessons, Don Fiore, Tai Chi, Martial Arts, Lesson, Basics, Instructional, Instruction'),
(41, 'SUN LU TANG (Sun Tai Chi Chuan)', 'http://www.youtube.com/watch?v=PWmLcKaCm8g', 3, '480', 'Historical Pictures of Movement of Renowned Master Sun Lu Tang performing moves of Sun Tai Chi Chuan', 'Non-English', 52380, 'Others', 'http://i.ytimg.com/vi/PWmLcKaCm8g/mqdefault.jpg', 'Demo, Demonstration, Sun Lu Tang, Historical, Education, Educational, Sun, Tai Chi, Master, History'),
(42, 'Combat Taichi', 'http://www.youtube.com/watch?v=q0TEAqj-O20', 2, '240', 'Hawkins Cheung, a world renown Wing Chun Expert demonstrating Combats Tai Chi.', 'Non-English', 125996, 'Group demo', 'http://i.ytimg.com/vi/q0TEAqj-O20/mqdefault.jpg', 'Combat, Tai Chi, Hawkins, Cheung, Wing Chun, Martial Arts, Self Defense, Demonstration, Demo'),
(43, 'Tai Chi Form 24 Taiji', 'http://www.youtube.com/watch?v=Q77p16rEX7o', 7, '240', 'Master Jesse Tsao teaches Tai Chi Form 24. Lesson does not start until 2:40.', 'English', 982153, 'Tutorial,Application', 'http://i.ytimg.com/vi/Q77p16rEX7o/mqdefault.jpg', 'Master Jesse Tsao, Form 24, taichitsao, Tai Chi, Demonstration, Lesson, Tutorial,'),
(44, 'Tai Chi - Musica - Zen', 'http://www.youtube.com/watch?v=RF0BzHpQkBQ', 32, '480', 'Music best played while doing Tai Chi. Scrolling pictures of people Tai Chi throughout video.', 'English', 3183414, 'Others', 'http://i.ytimg.com/vi/RF0BzHpQkBQ/mqdefault.jpg', 'Music, Tai Chi, Relaxing, Background noise, Martial Arts, Elevator Music'),
(45, 'Tai Chi for Arthritis - All Lessons', 'http://www.youtube.com/watch?v=tAOuEpa01j4', 50, '720', 'Dr. Paul Lam instructs and demonstrates movements of Tai Chi that help with symptoms of Arthritis.', 'English', 113331, 'Tutorial,Application', 'http://i.ytimg.com/vi/tAOuEpa01j4/mqdefault.jpg', 'Paul Lam, Dr. Paul Lam, Arthritis, Tai Chi, www.taichiproductions, taichiproductions, Martial Arts, demonstration, instructions, instructional, educational'),
(46, 'Tai Chi 24-form', 'http://www.youtube.com/watch?v=TBvF6r6DOvc', 4, '240', 'Tai Chi 24-form demonstrated and taught in Chinese.', 'Non-English', 6004326, 'Tutorial', 'http://i.ytimg.com/vi/TBvF6r6DOvc/mqdefault.jpg', 'Demonstration, Tai Chi, Martial Arts, Lessons, Form 24, RyogaHJ, educational, instructional,  demo'),
(47, 'Tai Chi Application for Self-defense Fight in Chen', 'http://www.youtube.com/watch?v=tEbupVWZ6mk', 7, '480', 'Master Jesse Tsao teaches yet another video of Self Defense. Tutorial starts at 1:32.', 'English', 727225, 'Tutorial,Application,Group demo', 'http://i.ytimg.com/vi/tEbupVWZ6mk/mqdefault.jpg', 'Demonstration, Master Jesse Tsao, taichitsao, Tai Chi, Self Defense, Martial Arts, Lessons, Tutorial, taichihealthways, Fighting'),
(48, 'Tai Chi and Full Body Power', 'http://www.youtube.com/watch?v=tpdGPx0i7BE', 4, '480', 'An explanation in lecture format of Tai Chi and why it is so powerful and has so many benefits.', 'English', 240588, 'Application', 'http://i.ytimg.com/vi/tpdGPx0i7BE/mqdefault.jpg', 'Application, Technical, Tai Chi, Benefits, Strengths, Techniques, Explanation'),
(50, 'Tai Chi Taiji Warm-up 18 forms', 'http://www.youtube.com/watch?v=uZ0Wi-OAB4g', 3, '480', 'Master Jesse Tsao demonstrated and teaches some warm up techniques for Tai Chi. Lessons start 2:09', 'English', 79378, 'Tutorial,Application', 'http://i.ytimg.com/vi/uZ0Wi-OAB4g/mqdefault.jpg', 'Warm-up, Tai Chi, Warming up, Beginner exercises, taichitsao, Jesse Tsao, movements, Tutorial, Lessons, Demonstrations, Demo'),
(51, 'Tai Chi vs Boxing', 'http://www.youtube.com/watch?v=vcc0jNJwgJA', 6, '720', 'Tai Chi vs Boxing. Jake Mace and Erick Delgado shows and demonstrates combat in Tai Chi vs a boxer.', 'English', 54382, 'Application', 'http://i.ytimg.com/vi/vcc0jNJwgJA/mqdefault.jpg', 'Jake Mace, Erick Delgado, Martial Arts, Tai Chi, Boxing, Commparison, Demonstration, Demo, Examples'),
(53, 'Tai Chi (Chen style) -- First Routine, Montreal', 'http://www.youtube.com/watch?v=vMAjEsWaZ1s', 9, '240', 'Visual demonstration of moves in Tai Chi Chen style.', 'Non-English', 65876, 'Tutorial', 'http://i.ytimg.com/vi/vMAjEsWaZ1s/mqdefault.jpg', 'Hai Yang, Chen, Movements, Demonstration, Example, Demo, Tai Chi, Martial Arts, Style'),
(54, 'Tai Chi - Wu Style by Fei Guo Qing!', 'http://www.youtube.com/watch?v=W-YV1IQX75U', 9, '240', 'Master Fei Guo Qing, a student of Grandmaster Ma Yueh Liang, demonstrates Wu Style Tai Chi.', 'Non-English', 89122, 'Others', 'http://i.ytimg.com/vi/W-YV1IQX75U/mqdefault.jpg', 'Historical, Fei Guo Qing, Tai Chi, Wu, Style, Demonstration, Demo, Example'),
(55, 'Sun Style Tai Chi with Master Sun Anguang', 'http://www.youtube.com/watch?v=X0pgvI89XTo', 2, '480', 'Sun Style Tai Chi taught with movements by Sun Anguang', 'English', 66854, 'Tutorial,Application', 'http://i.ytimg.com/vi/X0pgvI89XTo/mqdefault.jpg', 'Sun Anguang, Tai Chi, Sun, Sun Style, Martial Arts, Fighting, Lesson, Instructions, Instructional'),
(56, 'Tai Chi self-defense demonstration', 'http://www.youtube.com/watch?v=XabhNyfqVGk', 3, '240', 'A silent self-defense demonstration of Tai Chi and the movements.', 'Non-English', 153989, 'Group demo', 'http://i.ytimg.com/vi/XabhNyfqVGk/mqdefault.jpg', 'Sjaak Terwindt, Movements, Demonstration, Demo, Self Defense, Fighting, Tai Chi, Martial Arts, Silent'),
(57, 'Tai chi for beginners - Yang style Form Lesson 1', 'http://www.youtube.com/watch?v=xlHGjYHyjmM', 7, '720', 'Master Wong teaches Yang Style Tai Chi with movements and guidance.', 'English', 390023, 'Tutorial', 'http://i.ytimg.com/vi/xlHGjYHyjmM/0.jpg', 'Master Wong, Tai Chi, Beginners, www.masterwong.tv, Lessons, Teachings, Instructional, Educational, Education, Instruction'),
(58, 'Wudang Tai Chi Sword', 'http://www.youtube.com/watch?v=XQGvm-7WYFY', 5, '240', 'Master Jesse Tsao demonstrates and teaches Tai Chi with a sword. Lesson starts at 2:22.  ', 'English', 557965, 'Tutorial,Application,Weapon', 'http://i.ytimg.com/vi/XQGvm-7WYFY/mqdefault.jpg', 'Sword, Demonstration, Master Jesse Tsao, taichitsao, Tai Chi, Lessons, Tutorial, taichihealthways, weapons, taichitsao'),
(59, 'Tai Chi Taiji Kung Fu Fan', 'http://www.youtube.com/watch?v=zoO0SBBHH7k', 6, '240', 'Master Jesse Tsao demonstrates and teaches movements of Tai Chi with a fan. Instructions start at 2:', 'English', 347850, 'Tutorial,Application', 'http://i.ytimg.com/vi/zoO0SBBHH7k/mqdefault.jpg', 'Demonstration, Fan, Master Jesse Tsao, taichitsao, Tai Chi, Self Defense, Martial Arts, Lessons, Tutorial, taichihealthways'),
(60, 'Taiji: Chen Tai Chi Broadsword', 'http://www.youtube.com/watch?v=zWhr9x5X7cM', 5, '240', 'Master Jesse Tsao demonstrated and teaches movements of Tai Chi with a broadsword.', 'English', 77087, 'Tutorial,Application,Weapon', 'https://i.ytimg.com/vi/zWhr9x5X7cM/mqdefault.jpg', 'Master Jesse Tsao, Broadsword, taichitsao, Tai Chi, Demonstration, Lesson, Tutorial, Movements '),
(61, 'Tai Chi Silk Reeling Taiji', 'http://www.youtube.com/watch?v=zzDsAzbsyH4', 6, '240', 'Master Jesse Tsao performs and teaches Tai Chi in movements of Silk Reeling. Starts 2:21', 'English', 162280, 'Tutorial', 'https://i.ytimg.com/vi/zzDsAzbsyH4/mqdefault.jpg', 'Silk Reeling, Jesse Tsao, taichitsao, Tai Chi, Martial Arts, Taichi, Tai Chi, Movements Lessons, Educational, Education, Teachings, Instrucitions, Instructional');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fun_video`
--
ALTER TABLE `fun_video`
 ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
