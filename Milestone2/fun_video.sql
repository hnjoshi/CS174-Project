SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


DROP TABLE IF EXISTS `fun_video`;
CREATE TABLE IF NOT EXISTS `fun_video` (
`id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `videolink` text COLLATE utf8_unicode_ci NOT NULL,
  `videolength` int(6) NOT NULL,
  `highestresolution` enum('144','240','360','480','720','1080') COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `language` enum('English','Non-English') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'English',
  `viewcount` int(8) NOT NULL,
  `videotype` set('Tutorial','Entertainment','Application','Weapon','Group demo','Others') COLLATE utf8_unicode_ci NOT NULL,
  `iconimage` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `fun_video` (`id`, `title`, `videolink`, `videolength`, `highestresolution`, `description`, `language`, `viewcount`, `videotype`, `iconimage`, `tag`) VALUES
(1, 'Mr Bean- Judo Class', 'http://www.youtube.com/v/pRZqRjxkHpk', 3, '480', 'Mr Bean attends a judo class but doesn''t want to be thrown by the teacher. From Back to School Mr Be', 'English', 16428888, 'Entertainment', 'https://i.ytimg.com/vi/pRZqRjxkHpk/mqdefault.jpg', 'mr, bean, judo, rowan atkinson, mr bean, judo class'),
(2, 'best of judo', 'http://www.youtube.com/v/be-BoM-WokY', 3, '360', 'best judo matches', 'English', 4175073, 'Entertainment', 'https://i.ytimg.com/vi/be-BoM-WokY/mqdefault.jpg', 'judo, best, matches, woohoo'),
(3, 'Trojan Games- Judo', 'http://www.youtube.com/v/yLKizQoejuw', 1, '240', 'A video of a British vs France match ', 'English', 3758822, 'Entertainment', 'https://i.ytimg.com/vi/yLKizQoejuw/mqdefault.jpg', 'match, game, britian, UK, France, best, fun'),
(4, 'Judo', 'http://www.youtube.com/v/pFM-xRKbSec', 1, '240', 'Compiled video of judo matches', 'English', 2740716, 'Tutorial', 'https://i.ytimg.com/vi/pFM-xRKbSec/mqdefault.jpg', 'judo, match, fun, throw, people'),
(5, '7 Trojan Games Judo More Adwords', 'http://www.youtube.com/v/TTXPIYbOFJo', 1, '240', '7 trojan games judo', 'English', 2716440, 'Entertainment', 'https://i.ytimg.com/vi/TTXPIYbOFJo/mqdefault.jpg', 'trojan game, judo, fun, match, throw'),
(6, 'Judo Grand Slam Paris 2013', 'http://www.youtube.com/v/AYvP_d9c1ns', 9, '720', 'Judo match with Kim sung min', 'English', 984528, 'Entertainment', 'https://i.ytimg.com/vi/AYvP_d9c1ns/mqdefault.jpg', 'slam down, grandslam, judo match, fun stuff'),
(7, 'Judo Explosive Moves', 'http://www.youtube.com/v/uPLCHw9QeAA', 4, '240', 'Zenbu Judo Club Sydney Promo', 'English', 2184076, 'Entertainment', 'https://i.ytimg.com/vi/uPLCHw9QeAA/mqdefault.jpg', 'judo, throwdown, club, sydney'),
(8, 'judo vs aikido', 'http://www.youtube.com/v/KLJPcChg1T4', 1, '240', 'a throwdown between 2 martial artists. judo vs akido ', 'Non-English', 1949103, 'Application', 'https://i.ytimg.com/vi/KLJPcChg1T4/mqdefault.jpg', 'judo, akido, fun, throw'),
(9, 'This is why i do judo', 'http://www.youtube.com/v/6BQ8tpTN5HE', 2, '480', 'best judo matches everrrrr', 'English', 1929412, 'Entertainment', 'https://i.ytimg.com/vi/6BQ8tpTN5HE/mqdefault.jpg', 'judo, throwdown, best'),
(10, 'This is judo ', 'http://www.youtube.com/v/Imnc1XKtRs4&list=UUeYa3QaP2n7I8SpGSqD-kUQ', 3, '480', 'a trailer describing judo', 'English', 480496, 'Entertainment', 'https://i.ytimg.com/vi/Imnc1XKtRs4/mqdefault.jpg', 'judo, fun, trailer'),
(11, 'judo grand slam paris 2013', 'http://www.youtube.com/v/-R_jlPDwu2I&list=UUeYa3QaP2n7I8SpGSqD-kUQ', 26, '480', 'GRAND SLAM MATCH IN PARIS 2013!', 'English', 261224, 'Entertainment', 'https://i.ytimg.com/vi/-R_jlPDwu2I/mqdefault.jpg', 'grand, slam, judo'),
(12, 'highlight video judo dusseldorf grand prix 2013', 'http://www.youtube.com/v/K7VLU1ivx2g&list=UUeYa3QaP2n7I8SpGSqD-kUQ', 26, '480', 'fun match in dusseldorf', 'English', 228956, 'Entertainment', 'https://i.ytimg.com/vi/K7VLU1ivx2g/mqdefault.jpg', 'fun, match, judo'),
(13, 'Judo match grad slam paris 2012', 'https://www.youtube.com/v/HXSfHylsSUo&list=UUeYa3QaP2n7I8SpGSqD-kUQ', 26, '480', 'grand slam match of judo in Paris 2012', 'English', 319194, 'Entertainment', 'https://i.ytimg.com/vi/HXSfHylsSUo/mqdefault.jpg', 'grand slam, judo'),
(14, 'world masters judo 2012', 'https://www.youtube.com/v/UNYm3uMpJOE&list=UUeYa3QaP2n7I8SpGSqD-kUQ', 26, '480', 'top 15 judo players', 'English', 228213, 'Entertainment', 'https://i.ytimg.com/vi/UNYm3uMpJOE/mqdefault.jpg', 'top players, 16, judo'),
(15, 'judo grand slam japan 2012', 'https://www.youtube.com/v/EeXTu8mFFxo&list=UUeYa3QaP2n7I8SpGSqD-kUQ', 26, '480', 'fun match in judo in japan', 'English', 183422, 'Entertainment', 'https://i.ytimg.com/vi/EeXTu8mFFxo/mqdefault.jpg', 'judo match, japan'),
(16, 'world championship judo japan 2010', 'https://www.youtube.com/v/aqbG6MBcT-4&list=UUeYa3QaP2n7I8SpGSqD-kUQ', 47, '480', 'grand slam match in tokyo', 'English', 180570, 'Entertainment', 'https://i.ytimg.com/vi/aqbG6MBcT-4/mqdefault.jpg', 'japan, fun, judo'),
(17, ' judo dusseldorf grand prix 2012', 'https://www.youtube.com/v/oT-ZoZ5aUIs&list=UUeYa3QaP2n7I8SpGSqD-kUQ', 26, '480', 'highlights', 'English', 177683, 'Application', 'https://i.ytimg.com/vi/oT-ZoZ5aUIs/mqdefault.jpg', 'judo, match'),
(18, 'judo grand slam salvador 2012', 'https://www.youtube.com/v/3YIaRXkWq_M&list=UUeYa3QaP2n7I8SpGSqD-kUQ', 26, '480', 'fun match in 2012 in salvador', 'English', 149092, 'Entertainment', 'https://i.ytimg.com/vi/3YIaRXkWq_M/mqdefault.jpg', 'fun judo match, judo, match'),
(19, 'highlights moscow grand slam 2012', 'https://www.youtube.com/v/sZ-suyYUY3k&list=UUeYa3QaP2n7I8SpGSqD-kUQ', 26, '480', 'grand slam in moscow', 'English', 131986, 'Entertainment', 'https://i.ytimg.com/vi/sZ-suyYUY3k/mqdefault.jpg', ''),
(20, 'world championship judo paris 2011', 'https://www.youtube.com/v/7bXLjqciH9E&list=UUeYa3QaP2n7I8SpGSqD-kUQ', 47, '480', 'paris 2011', 'English', 126083, 'Entertainment', 'https://i.ytimg.com/vi/7bXLjqciH9E/mqdefault.jpg', 'paris, judo'),
(21, 'this is judo 2014', 'http://www.youtube.com/v/cJTVWcOrUHs', 6, '720', 'this is the world class sport judo', 'English', 85818, 'Application', 'https://i.ytimg.com/vi/cJTVWcOrUHs/mqdefault.jpg', 'judo, fun, 2014'),
(22, 'judo throws LA valley college', 'http://www.youtube.com/v/OJKBdO74ygc', 7, '480', 'This video demos 15 basic throws in judo', 'English', 113622, 'Tutorial', 'https://i.ytimg.com/vi/OJKBdO74ygc/mqdefault.jpg', 'judo, college, basic, throw'),
(23, 'mifune judo', 'http://www.youtube.com/v/46veLgINFjU', 63, '480', 'a video about mifune', 'Non-English', 324998, 'Tutorial', 'https://i.ytimg.com/vi/46veLgINFjU/mqdefault.jpg', 'judo, mifune, fun'),
(24, 'judo in movies', 'http://www.youtube.com/v/1BmDS8IxSaM', 9, '480', 'clips from movies with judo', 'English', 227236, 'Entertainment', 'https://i.ytimg.com/vi/1BmDS8IxSaM/mqdefault.jpg', 'movies, judo');


ALTER TABLE `fun_video`
 ADD PRIMARY KEY (`id`);


ALTER TABLE `fun_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
