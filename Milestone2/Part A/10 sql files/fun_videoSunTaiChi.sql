-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2014 at 06:15 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fun_videos`
--

-- --------------------------------------------------------

--
-- Table structure for table `fun_video`
--

CREATE TABLE IF NOT EXISTS `fun_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `videolink` text COLLATE utf8_unicode_ci NOT NULL,
  `videolength` int(6) NOT NULL,
  `highestresolution` enum('144','240','360','480','720','1080') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `language` enum('English','Non-English') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English',
  `viewcount` int(8) NOT NULL,
  `videotype` set('Tutorial','Entertainment','Application','Weapon','Group demo','Others') COLLATE utf8_unicode_ci NOT NULL,
  `iconimage` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=70 ;

--
-- Dumping data for table `fun_video`
--

INSERT INTO `fun_video` (`id`, `title`, `videolink`, `videolength`, `highestresolution`, `description`, `language`, `viewcount`, `videotype`, `iconimage`, `tag`) VALUES
(1, 'Sun Style Tai Chi Chuan Applications', 'https://www.youtube.com/watch?v=kanrCDUjhhI', 2, '240', 'The unique movements of Sun style conceal many effective applications. This video will reveal these "hidden" self-defense techniques within Sun style to you. For complete understanding of Sun style, you need to know this!', 'English', 193291, 'Application', 'http://i.ytimg.com/vi/kanrCDUjhhI/mqdefault.jpg', 'wing, lam, Sun, Style, Tai, Chi, Chuan, Applications'),
(3, 'Sun style Tai Chi 73 Taiji', 'http://www.youtube.com/watch?v=1xW5WWLtI68', 6, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, broadsword, qigong (Chi gong)for internal energy healing, bio-energy, Shaolin and Wudang Kung-fu martial arts. Tai Chi Health Ways host annual workshop with the top masters. See photos or videos of Chen Zhenglei, Li Deyin, Zhu Tiancai, Chen Xiaowang, Dan Lee, Su Zifang, Abraham Liu ... A segment of Master Jesse Tsao''s instructional video on the Sun Style. Includes full demonstrations in front and back view and step-by-step instruction.', 'English', 99997, 'Entertainment', 'http://i.ytimg.com/vi/1xW5WWLtI68/mqdefault.jpg', 'taiji, tai, chi, kung, fu, sun, style, Li, Deyin'),
(5, 'Sun Jiayun (1913-2003)', 'http://www.youtube.com/watch?v=2pu4Wic-YJ4', 6, '240', 'Sun Jiayun, the daughter of Sun Lutang, performing Sun Style Tai Chi.', 'Non-English', 125018, 'Entertainment', 'http://i.ytimg.com/vi/2pu4Wic-YJ4/mqdefault.jpg', 'Sun, Jiayun, Chinese, Martial, Arts, Lutang, Taichi, Taiji, Internal'),
(10, 'Tai Chi Fundamental For Taiji Beginners', 'http://www.youtube.com/watch?v=7WA4V5RE8As', 6, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi tyle and Tai Chi sword, broadsword, qigong (Chi gong) meditation for internal energy healing, bio-energy, Shaolin and Wudang Taoist Kung-fu martial arts, Taiji Power Release (fajin), Taiji application, Bagua, Xingyi application. Tai Chi Health Ways host annual workshop with the top masters. See photos or videos of Chen Zhenglei, Li Deyin, Zhu Tiancai, Chen Xiaowang, Dan Lee, Su Zifang, Abra ', 'English', 360518, 'Application,Others', 'http://i.ytimg.com/vi/7WA4V5RE8As/mqdefault.jpg', 'Master Jess Tsao, Fundamental, Beginner, tai, chi, taiji, qigong, video, on, lesson'),
(12, 'Wudang style Tai Chi Chuan', 'http://www.youtube.com/watch?v=aIwv-XLG58A', 5, '240', 'Belgian TV-special about the ancient Chinese art of tai chi chuan. All aspects of this martial art are covered here. Strong emphasis on fighting applications. Featured is Geert Van Loo who has been a long time student of Practical Tai Chi Chuan International''s chief instructor Dan Docherty. Lineage goes back to the late grandmaster Cheng Tin-hung.', 'Non-English', 82111, 'Group demo', 'http://i.ytimg.com/vi/aIwv-XLG58A/mqdefault.jpg', 'tai, chi, chuan, taijiquan, wu, yang, hao, sun, chen, gong, kung, fu, sifu, wushu'),
(13, 'Yang Style 48 Form Tai Chi Chuan', 'http://www.youtube.com/watch?v=AK5XDZN-t74', 8, '240', 'Sifu Amin Wu - www.aminwutaichi.com Original Tai Chi instructional VCD video by Sifu Amin Wu (in Chi', 'Non-English', 433733, 'Entertainment', 'https://i.ytimg.com/vi/AK5XDZN-t74/mqdefault.jpg', 'Sifu, Amin, Wu., Tai, Chi, 48, Form'),
(17, 'Wu Tai Chi Chuan Pushhands Seminar', 'http://www.youtube.com/watch?v=DUmaFgzD2nk', 9, '360', 'Clip about the Wu Tai Chi Chuan Pushhands Seminar in Willich/Germany Summer 2008 with Ma Jiangbao an', 'English', 101145, 'Others', 'https://i.ytimg.com/vi/DUmaFgzD2nk/mqdefault.jpg', 'Wu, Tai, Chi, Taichi, Chuan, Taiji, Taijiquan, Taichichuan, Pushhands, Boedicker, Ma, Jiangbao, push, hands'),
(19, 'Kung fu fan (Beauty of sun setting)', 'http://www.youtube.com/watch?v=FDulb3pz99k', 4, '240', 'kung fu fan (Beauty of sun setting)\ntai chi & wu shu', 'English', 215841, 'Entertainment', 'http://i.ytimg.com/vi/FDulb3pz99k/mqdefault.jpg', 'kung, fu, fan, tai, chi, wu, shu'),
(23, 'Man of Tai Chi - Official Trailer (2013) Keanu Ree', 'http://www.youtube.com/watch?v=HIKQCZDYfEI', 2, '720', 'Man of Tai Chi" marks Keanu Reeves'' directorial debut. The film, also starring Reeves, follows the spiritual journey of a young martial artist (played by Tiger Chen) whose unparalleled Tai Chi skills land him in a highly lucrative underworld fight club. As the fights intensify, so does his will to survive.', 'English', 4186410, 'Entertainment', 'http://i.ytimg.com/vi/HIKQCZDYfEI/mqdefault.jpg', 'Man of Tai Chi, Man of Tai Chi Trailer, Man of Tai Chi Trailer'),
(25, 'Yang Style 24 Tai Chi Chuan', 'http://www.youtube.com/watch?v=hou57TxCvCo', 6, '240', 'Sifu Amin Wu - www.aminwutaichi.com Original Tai Chi instructional VCD video by Sifu Amin Wu (in Chi', 'Non-English', 218083, 'Entertainment', 'http://i.ytimg.com/vi/hou57TxCvCo/mqdefault.jpg', 'Yang 24 Form, Sifu Amin Wu, Tai Chi'),
(28, 'Tai Chi for Energy - Free 1st Lesson from Dr Lam', 'http://www.youtube.com/watch?v=i4eX13rNG6o', 50, '720', 'Relax, refresh and revitalize in 8 virtual lessons \nTAI CHI FOR ENERGY - Intro and Lesson One\nFor mo', 'English', 123389, 'Tutorial', 'http://i.ytimg.com/vi/i4eX13rNG6o/mqdefault.jpg', 'taiji, health, energy, instruction, DVD, tai chi, Tai Chi'),
(30, 'Sun Style Tai Chi Chuan Applications', 'http://www.youtube.com/watch?v=kanrCDUjhhI', 1, '240', 'The unique movements of Sun style conceal many effective applications. This video will reveal these ', 'English', 193576, 'Tutorial', 'http://i.ytimg.com/vi/kanrCDUjhhI/mqdefault.jpg', 'wing, lam, Sun, Style, Tai, Chi, Chuan, Applications'),
(32, 'Tai Chi Chuan and Combat SanshouTechniques', 'http://www.youtube.com/watch?v=Mk68WsIoAGg', 3, '240', 'http://www.wimsblog.com\nhttp://wimdemeere.com\n\nAnother short documentary featuring Wim Demeere by Wa', 'English', 228647, 'Tutorial', 'http://i.ytimg.com/vi/Mk68WsIoAGg/mqdefault.jpg', 'tai, chi, chuan, ji, wasterhead, productions, three, minute, films, documentary'),
(33, 'Taiji: Sun Style Tai Chi', 'http://www.youtube.com/watch?v=MQsxy5z-zxE', 6, '240', 'Visit http://www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun ta', 'English', 128443, 'Entertainment', 'http://i.ytimg.com/vi/MQsxy5z-zxE/mqdefault.jpg', 'sun, tai, chi, taiji, form, 73, qi, kung, gong, healing'),
(34, 'Tai Chi Sword Form 32 Yang Taiji Jian', 'http://www.youtube.com/watch?v=MxhAjv3YneM', 5, '240', 'This is a simplified sword routine from the classic Yang Style Tai Chi Sword. Master Tsao teac			   ', 'Non-English', 637245, 'Weapon', 'http://i.ytimg.com/vi/MxhAjv3YneM/mqdefault.jpg', 'taiji, tai, chi, chuan, sword'),
(38, 'Tai Chi Chuan 24 Steps Beginners Lesson 1', 'http://www.youtube.com/watch?v=P5hvODK2zW4', 9, '480', ' You can Order all 11 parts of the Tai Chi lessons on one DVD now and save 20-50% or more by clicking or copy and paste the following link:Â http://www.avenirphotovideo.com/Â using your Credit/Debit card with the PayPal guarantee. This part is one segment of an 11-part Tai Chi Lesson Plan. The DVD will give you an opportunity to have your personal trainer in your own home. This video was created to help you enjoy your Tai Chi experience. An electronic "Tai Chi and You" book can also be view and or', 'English', 2532742, 'Tutorial', 'http://i.ytimg.com/vi/P5hvODK2zW4/mqdefault.jpg', 'diet, karate, kata, muscle, Exercise, Physical, Fitness, Physically, Fit, Tai, Chi'),
(39, 'Taiji - Sun Style (Sun Jianyun) 孫式太極 孫劍雲', 'http://www.youtube.com/watch?v=P62j_rWGjaA', 8, '240', '孫式太極-孫劍雲1914-2003\n形意拳,八卦劍\nhttp://www.hongkongtaiji.com', 'English', 102325, 'Entertainment', 'http://i.ytimg.com/vi/P62j_rWGjaA/mqdefault.jpg', 'taiji, taichi, sun, style'),
(41, 'SUN LU TANG (Sun Tai Chi Chuan)', 'http://www.youtube.com/watch?v=PWmLcKaCm8g', 3, '480', 'http://www.suntaichichuan.com', 'Non-English', 52745, 'Entertainment', 'http://i.ytimg.com/vi/PWmLcKaCm8g/mqdefault.jpg', 'Sun, Tai, Chi, Chuan'),
(49, 'Sun Style Tai Chi - 38 Step', 'http://www.youtube.com/watch?v=ttvpuaEmlcw', 4, '480', 'Traditional Sun Style Tai Chi chuan, the 38 Step is structured by world famous tai chi master Profes', 'Non-English', 50093, 'Entertainment', 'http://i.ytimg.com/vi/ttvpuaEmlcw/mqdefault.jpg', 'Sun Style Tai Chi, Taiji, Faye Yip, Li Deyin, Tary YIp'),
(55, 'Sun Style Tai Chi with Master Sun Anguang', 'http://www.youtube.com/watch?v=X0pgvI89XTo', 2, '480', 'Offers a rare opportunity to learn the Sun style traditional long form, as well as rhythm training, ', 'English', 67137, 'Tutorial', 'http://i.ytimg.com/vi/X0pgvI89XTo/mqdefault.jpg', 'sun, style, tai, chi, taiji, martial, arts, master, anguang'),
(59, 'Tai Chi Taiji Kung Fu Fan', 'http://www.youtube.com/watch?v=zoO0SBBHH7k', 6, '240', 'Visit www.taichihealthways.com for more videos of Master Jesse Tsao on Yang, Chen, Wu, Sun tai chi t', 'English', 348688, 'Tutorial,Weapon', 'http://i.ytimg.com/vi/zoO0SBBHH7k/mqdefault.jpg', 'taiji, tai, chi, kung, fu, fan, Li, Deyin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
