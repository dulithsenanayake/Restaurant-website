-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 26, 2018 at 06:26 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loginsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(256) NOT NULL,
  `user_username` varchar(256) NOT NULL,
  `user_psw` varchar(256) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_username`, `user_psw`) VALUES
(1, 'dulithcsenanayake@gmail.com', 'dulith', '$2y$10$AUWmM2p6Anz/AT9ZnPhLV.6Rre.13k1VtGxfG/A5EH5A8DcHQ7BKC'),
(2, 'dulithcsenanayake@gmail.com', 'dulith1', '$2y$10$QgVmS6SnC76Xc6k4V/6wROrZye7f4S31c.32D5veTSohKKMqjolUi'),
(3, 'dulithcsenanayake@gmail.com', 'dulith2', '$2y$10$R/Wiondqai8aBC5znI9IYuaZR1zvH/OsuijLKhKDe.kWDri3u5glW'),
(4, 'dulithcsenanayake@gmail.com', 'dulith3', '$2y$10$XHxjZcXK2W0u3xxm.sEIEuX0AhmMyaXfSc9z5frIAedCHIloyd4mK'),
(5, 'dulithcsenanayake@gmail.com', 'dulith4', '$2y$10$JXSLNxNYi34FxyTAofPMeeJbKEWP9MGL7S8IJZz4FMVupGYRIGhDK'),
(6, 'dulithcsenanayake@gmail.com', 'dulith5', '$2y$10$qsI7qIpyTiotyjI13Sr3O.uiDtYTYVs369Wj6gVeX93nw.f79EGBm'),
(7, 'dulithcsenanayake@gmail.com', 'dulith6', '$2y$10$mt0KGNQdqGos/OgOh2lh4ujeflYyzPac3BTRdEKoEUnaPHwC5is9O'),
(8, 'dulithcsenanayake@gmail.com', 'dulith7', '$2y$10$7qGvllOGGU9So29Ai1CjXe3qfJ.sdee5h0ET12Bs7G/Hekf9GMvdy'),
(9, 'dulithcsenanayake@gmail.com', 'dulith8', '$2y$10$YP/gfcxMx2T4YyMMsKuDGuQNh0e1glgg2Qp321VgqsvJtv6b/0POS'),
(10, 'dulithcsenanayake@gmail.com', 'dulith9', '$2y$10$oa9VvTIEa3QaBXjgKlfSXexjQeSH.GeoLnEiDu5KW1dYjhrwWcTga'),
(11, 'dulithcsenanayake@gmail.com', 'dulith10', '$2y$10$DGxWl4J0wvdmosOq/HU38OdmRFs8hgaGXUXmlkFvuLkZptj6Uh13a'),
(12, 'dulithcsenanayake@gmail.com', 'dulith11', '$2y$10$sCz74N.LciV.2wQeWfTl4eRst2VVUfmbKST/S4ZVN1L99a0WLmlkS'),
(13, 'dulithcsenanayake@gmail.com', 'dulith12', '$2y$10$1x1evsXQmecxIwrhP/ViPeXdI0kQwllmuuxp51.NuXcG14XH6s6OK'),
(14, 'dulithcsenanayake@gmail.com', 'dulith13', '$2y$10$pbgdAmIbp0tSbcUm8VC2du5foPrRXAq0w9Zh/NKQicGhrpAAnNe/S'),
(15, 'dulithcsenanayake@gmail.com', 'dulith14', '$2y$10$bzk3Yk0qazcNEaVhscN.V.nmig9e6pek9Vl3BwZ.FmwmAU/XRLr2i'),
(16, 'dulithcsenanayake@gmail.com', 'dulith15', '$2y$10$zpRYBkrqkxroAcqFOgwsxOVvVIbYn8faLiSmH7BJZQWGdmPEa1oMC'),
(17, 'dulithcsenanayake@gmail.com', 'dulith16', '$2y$10$6yV2k6OPFyFEz7I2vK1wv.wDCkD0na5XkjuzoUHt6tx8EDMg.NWy.'),
(18, 'dulithcsenanayake@gmail.com', 'dulith17', '$2y$10$aoOLGNLjr1PNqik17tDbfux2Z.pfZvtHWnmflM0zLxV0ZuN526OIK'),
(19, 'dulithcsenanayake@gmail.com', 'dulith18', '$2y$10$sGLSDdM0HQ1AILH.fArfw.c1rNJvpbFI0.v2jxoMAGvBEPcGsogS2'),
(20, 'dulithcsenanayake@gmail.com', 'dulith19', '$2y$10$1fXXPi3EYmwW8T8I.bivZ.hsAXT9mA6QiyU1mo3CAr8cb58x26eG2'),
(21, 'dulithcsenanayake@gmail.com', 'dulith20', '$2y$10$H471hhgRm7IAoogCk1u3c.vXUEd31THeksFO3CbvMHpR1fcTp.SS.'),
(22, 'dulithcsenanayake@gmail.com', 'dulith21', '$2y$10$Ra4Rywwmn8QgUaeybdn9O.RwMRWMU0OUvzMKrD7FM3Hvn4bdqBXAm'),
(23, 'dulithcsenanayake@gmail.com', 'dulith30', '$2y$10$TTRcHZGXGqhRrCAIjfFY0O6y8FH3TIPt0LhLXAEVtjApQ5ZmPoEzO');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
