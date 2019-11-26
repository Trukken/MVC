-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 26, 2019 at 10:09 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `comment` varchar(3000) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `movie_id`, `comment`) VALUES
(1, 9, '32132112'),
(2, 9, '32132112'),
(3, 12, 'YIIIHAAAAAAAAAAAAAA'),
(4, 12, 'YIIIHAAAAAAAAAAAAAA'),
(5, 13, 'fugg'),
(6, 1, 'dsadasdasd3123123`12'),
(7, 1, 'dsadasdasd3123123`12'),
(8, 1, 'dsadasdasd3123123`12'),
(9, 1, 'dsadasdasd3123123`12'),
(10, 1, 'dsadasdasd3123123`12'),
(11, 1, 'dsadasdasd3123123`12'),
(12, 1, 'dsadasdasd3123123`12'),
(13, 2, '321321'),
(14, 2, '321321'),
(15, 13, '21312321321'),
(16, 13, '21312321321'),
(17, 15, '321312321312312312sdadasasdasd'),
(18, 15, '321312321312312312sdadasasdasd'),
(19, 2, 'dasdsadasdasdas'),
(20, 2, '321321dsadsa'),
(21, 2, '321321dsadsa'),
(22, 2, '321321dsadsa'),
(23, 17, 'HELLOOOOOOOOOOOOOOOOOOOOOOOOO');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
CREATE TABLE IF NOT EXISTS `directors` (
  `director_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `nationality` varchar(30) DEFAULT NULL,
  `picture_path` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`director_id`, `name`, `birth_date`, `gender`, `nationality`, `picture_path`) VALUES
(1, 'DirectorVeryFancy', '1955-09-10', 1, 'French', 'https://i.ytimg.com/vi/NbY6K2Dyx9E/maxresdefault.jpg'),
(2, 'NotSoFancyDirector', '1984-02-10', 1, 'American', 'https://i.ytimg.com/vi/NbY6K2Dyx9E/maxresdefault.jpg'),
(3, 'Namyname', '1955-09-10', 2, 'African', 'https://i.ytimg.com/vi/NbY6K2Dyx9E/maxresdefault.jpg'),
(4, 'Namyname', '1955-09-10', 2, 'African', 'https://i.ytimg.com/vi/NbY6K2Dyx9E/maxresdefault.jpg'),
(5, 'Namyname', '1955-09-10', 2, 'African', 'https://i.ytimg.com/vi/NbY6K2Dyx9E/maxresdefault.jpg'),
(6, 'Namyname', '1955-09-10', 2, 'African', 'https://i.ytimg.com/vi/NbY6K2Dyx9E/maxresdefault.jpg'),
(7, 'Namyname', '1955-09-10', 2, 'African', 'https://i.ytimg.com/vi/NbY6K2Dyx9E/maxresdefault.jpg'),
(8, 'Namyname', '1955-09-10', 2, 'African', 'https://i.ytimg.com/vi/NbY6K2Dyx9E/maxresdefault.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `release_date` date NOT NULL,
  `views` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  `poster_path` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `movies_ibfk_1` (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `name`, `release_date`, `views`, `director_id`, `poster_path`) VALUES
(1, 'FirstMovie', '2018-09-28', 100040, 1, 'https://upload.wikimedia.org/wikipedia/en/1/16/Carmageddon_box.jpg'),
(2, 'SecondMovie', '2010-09-17', 50040, 1, 'https://upload.wikimedia.org/wikipedia/en/1/16/Carmageddon_box.jpg'),
(3, 'FancyMovie', '1998-04-07', 777020, 2, 'https://upload.wikimedia.org/wikipedia/en/1/16/Carmageddon_box.jpg'),
(4, 'NotSoFancyMovie', '2007-04-19', 60040, 1, 'https://upload.wikimedia.org/wikipedia/en/1/16/Carmageddon_box.jpg'),
(5, 'MUHAHAHAHAH BUHAHHAAH', '2018-02-03', 7770000, 1, 'https://upload.wikimedia.org/wikipedia/en/1/16/Carmageddon_box.jpg'),
(6, 'THIS IS ITTTTTTTTTTTTTTTT!!!!!', '2010-11-29', 333333, 2, 'https://upload.wikimedia.org/wikipedia/en/1/16/Carmageddon_box.jpg'),
(7, 'This the newest Movie', '2019-10-28', 1, 3, 'https://upload.wikimedia.org/wikipedia/en/1/16/Carmageddon_box.jpg'),
(8, 'Almost a new movie', '1970-01-01', 1337, 2, 'https://upload.wikimedia.org/wikipedia/en/1/16/Carmageddon_box.jpg'),
(9, 'dsa', '2018-09-28', 31, 3, ''),
(11, 'hiloooo', '2019-01-01', 32, 3, 'thisndthat'),
(12, 'hiloooo', '2019-01-01', 321, 2, 'dsa'),
(13, 'dsa', '2019-12-01', 32, 2, 'dsadasdw222'),
(14, 'dsa', '2019-12-01', 32, 2, 'dsadasdw222'),
(15, 'dsagonputmoooooooooooooooooooooooooor', '2019-12-01', 32, 2, 'dsadasdw222'),
(16, 'dsagonputmoooooooooooooooooooooooooor', '2019-09-01', 32, 2, 'dsadasdw222'),
(17, 'dsagonputmoooooooooooooooooooooooooor', '2019-09-10', 32, 2, 'dsadasdw222'),
(18, 'dsagonputmoooooooooooooooooooooooooor', '2019-09-30', 32, 2, 'dsadasdw222');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
CREATE TABLE IF NOT EXISTS `series` (
  `serie_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `release_date` date DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `director_id` int(11) NOT NULL,
  PRIMARY KEY (`serie_id`),
  KEY `director_id` (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`serie_id`, `title`, `release_date`, `views`, `director_id`) VALUES
(1, 'FirstSeries', '2019-01-02', 4546, 1),
(2, 'SecondSeries', '1997-08-12', 455648, 2),
(3, 'CAREFUL', '2018-09-16', 789, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`director_id`);

--
-- Constraints for table `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `series_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`director_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
