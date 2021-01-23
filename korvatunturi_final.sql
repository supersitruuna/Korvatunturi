-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 16.12.2019 klo 15:13
-- Palvelimen versio: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `korvatunturi`
--
CREATE DATABASE IF NOT EXISTS `korvatunturi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `korvatunturi`;

-- --------------------------------------------------------

--
-- Rakenne taululle `lahjat`
--

CREATE TABLE IF NOT EXISTS `lahjat` (
  `Lahjat_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Lahja` varchar(40) DEFAULT NULL,
  `Määrä_varastossa` int(5) DEFAULT NULL,
  PRIMARY KEY (`Lahjat_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `lahjat`
--

INSERT INTO `lahjat` (`Lahjat_ID`, `Lahja`, `Määrä_varastossa`) VALUES
(1, 'Villasukat', 100),
(2, 'Skuuttilauta', 33),
(3, 'Luistimet', 15),
(4, 'Sukset', 18),
(5, 'PS4-konsoli', 22),
(6, 'Kännykkä', 3),
(7, 'Maailman rauhaa', 0),
(8, 'Risuja', 90),
(9, 'Yöpaita', 20),
(10, 'Reppu', 129),
(11, 'Käpylehmä', 2),
(12, 'Leluauto', 990),
(13, 'Muumipehmolelu', 44),
(14, 'Laskettelukypärä', 3),
(15, 'Tietokone', 1),
(16, 'Farkut', 22),
(17, 'Lapaset', 103),
(18, 'Korvakorut', 42),
(19, 'Barbi', 1290),
(20, 'iPad', 20),
(21, 'Fortnite', 10),
(22, 'Legot', 109),
(23, 'Koira', 2),
(24, 'Toinen pikkusisko', 0),
(25, 'Vanhemmat palaa takaisin yhteen', 4),
(26, 'Vuohi', 8),
(27, 'Hevonen', 20),
(28, 'Yksisarvinen', 99),
(29, 'Kirja', 29),
(30, 'Nukenrattaat', 100);

-- --------------------------------------------------------

--
-- Rakenne taululle `lahja_tekijä`
--

CREATE TABLE IF NOT EXISTS `lahja_tekijä` (
  `pari_ID` int(11) NOT NULL AUTO_INCREMENT,
  `tekijä` int(11) DEFAULT NULL,
  `lahja` int(40) DEFAULT NULL,
  PRIMARY KEY (`pari_ID`),
  KEY `tekijä` (`tekijä`),
  KEY `lahja` (`lahja`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `lahja_tekijä`
--

INSERT INTO `lahja_tekijä` (`pari_ID`, `tekijä`, `lahja`) VALUES
(1, 6, 1),
(2, 6, 2),
(3, 8, 3),
(4, 10, 3),
(5, 7, 3),
(6, 7, 4),
(7, 8, 5),
(8, 9, 6),
(9, 10, 7),
(10, 7, 8),
(11, 8, 8),
(12, 8, 9),
(13, 10, 10),
(14, 7, 11),
(15, 6, 12),
(16, 7, 13),
(17, 7, 14),
(18, 9, 15),
(19, 7, 15),
(20, 8, 16),
(21, 8, 17),
(22, 10, 18),
(23, 10, 19),
(24, 10, 20),
(25, 6, 21),
(26, 9, 22),
(27, 6, 21),
(28, 10, 22),
(29, 9, 23),
(30, 7, 24),
(31, 10, 25);

-- --------------------------------------------------------

--
-- Rakenne taululle `lapset`
--

CREATE TABLE IF NOT EXISTS `lapset` (
  `lapsiID` int(11) NOT NULL AUTO_INCREMENT,
  `nimi` varchar(50) NOT NULL,
  `osoite` varchar(50) NOT NULL,
  `syntymäaika` varchar(10) NOT NULL,
  `kiltteysaste` int(1) DEFAULT NULL,
  `vakooja_ID` int(11) NOT NULL,
  PRIMARY KEY (`lapsiID`),
  KEY `vakooja_ID` (`vakooja_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `lapset`
--

INSERT INTO `lapset` (`lapsiID`, `nimi`, `osoite`, `syntymäaika`, `kiltteysaste`, `vakooja_ID`) VALUES
(1, 'Antti Autuas', 'Varvinkuja 1', '11.3.2005', 4, 1),
(2, 'Onni Onnekas', 'Kilttilä 25', '12.6.2007', 2, 1),
(3, 'Einari Naakka', 'Risukatu 2', '6.11.2011', 3, 3),
(4, 'Julia Virtanen', 'Maarikkala 16', '7.8.2014', 5, 2),
(5, 'Juhani Koski', 'Vääräkkälä 5', '4.8.2010', 1, 5),
(6, 'Anneli Aarikkala', 'Nuijakuja 6', '6.6.2012', 4, 4),
(7, 'Mikael Toinanen', 'Aarnintie 12', '8.7.2009', 5, 3),
(8, 'Antti Autuas', 'Varvinkuja 1', '11.3.2005', 4, 1),
(9, 'Onni Onnekas', 'Kilttilä 25', '12.6.2007', 2, 1),
(10, 'Einari Naakka', 'Risukatu 2', '6.11.2011', 3, 3),
(11, 'Julia Virtanen', 'Maarikkala 16', '7.8.2014', 5, 2),
(12, 'Juhani Koski', 'Vääräkkälä 5', '4.8.2010', 1, 5),
(13, 'Anneli Aarikkala', 'Nuijakuja 6', '6.6.2012', 4, 4),
(14, 'Mikael Toinanen', 'Aarnintie 12', '8.7.2009', 5, 3),
(15, 'Maria Korhonen', 'Viipurinkuja 2', '4.4.2018', 4, 5),
(16, 'Helena Virtanen', 'Nasikkala 43', '2.1.2006', 5, 4),
(17, 'Johanna Mäkinen', 'Työmaantie 4', '5.12.2007', 4, 3),
(18, 'Tapio Nieminen', 'Haavaranta 3', '16.2.2008', 2, 2),
(19, 'Matti Hämäläinen', 'Punkkulankumpu 6', '6.5.2005', 5, 2),
(20, 'Ilmari Laine', 'Gössinkuja 7', '1.11.2008', 4, 1),
(21, 'Annikki Heikkinen', 'Joulumaa 3', '2.2.2007', 3, 1),
(22, 'Sofia Koskinen', 'Rantatie 40', '22.5.2008', 4, 3),
(23, 'Liisa Järvinen', 'Kuokkala 5', '19.9.2007', 5, 3),
(24, 'Marju Järvelä', 'Järvenpääntie 9', '29.1.2012', 5, 5),
(25, 'Mari Naakka', 'Miumaunkuja 98', '21.6.2009', 4, 2);

-- --------------------------------------------------------

--
-- Rakenne taululle `muusikot`
--

CREATE TABLE IF NOT EXISTS `muusikot` (
  `musa_ID` int(11) NOT NULL AUTO_INCREMENT,
  `tonttu` int(11) DEFAULT NULL,
  `instumentti` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`musa_ID`),
  KEY `tonttu` (`tonttu`),
  KEY `instumentti` (`instumentti`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `muusikot`
--

INSERT INTO `muusikot` (`musa_ID`, `tonttu`, `instumentti`) VALUES
(55, 20, 'triangeli'),
(56, 20, 'kitara'),
(57, 21, 'basso'),
(58, 22, 'nokkahuilu'),
(59, 22, 'kitara'),
(60, 22, 'piano'),
(61, 23, 'nokkahuilu'),
(62, 23, 'basso'),
(63, 23, 'kitara'),
(64, 1, 'harppu'),
(65, 4, 'triangeli'),
(66, 7, 'basso'),
(67, 7, 'kitara'),
(68, 8, 'nokkahuilu'),
(69, 11, 'piano'),
(70, 13, 'trumpetti'),
(71, 17, 'haitari'),
(72, 16, 'kitara');

-- --------------------------------------------------------

--
-- Rakenne taululle `porot`
--

CREATE TABLE IF NOT EXISTS `porot` (
  `poro_ID` int(11) NOT NULL AUTO_INCREMENT,
  `nimi` varchar(40) DEFAULT NULL,
  `lempi_herkku` varchar(40) DEFAULT NULL,
  `Hoitaja_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`poro_ID`),
  KEY `Hoitaja_ID` (`Hoitaja_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `porot`
--

INSERT INTO `porot` (`poro_ID`, `nimi`, `lempi_herkku`, `Hoitaja_ID`) VALUES
(1, 'Petteri', 'mustikanvarvut', 16),
(2, 'Kipinä', 'jäkälä', 16),
(3, 'Ailu', 'ruoho', 17),
(4, 'Pyry', 'jäkälä', 17),
(5, 'Saukki', 'porkkana', 16),
(6, 'Tilkku', 'joulumuorin piparit', 17),
(7, 'Turpo', 'joulukinkku', 17),
(8, 'Tilkku', 'jäkälä', 16),
(9, 'Sipsu', 'heinä', 16),
(10, 'Rudolph', 'sienet', 17);

-- --------------------------------------------------------

--
-- Rakenne taululle `soittimet`
--

CREATE TABLE IF NOT EXISTS `soittimet` (
  `instrumentti` varchar(10) NOT NULL,
  `varastossa` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`instrumentti`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `soittimet`
--

INSERT INTO `soittimet` (`instrumentti`, `varastossa`) VALUES
('basso', '1'),
('haitari', '15'),
('harppu', '0'),
('kitara', '3'),
('nokkahuilu', '4'),
('piano', '1'),
('triangeli', '4'),
('trumpetti', '5');

-- --------------------------------------------------------

--
-- Rakenne taululle `tekopukit`
--

CREATE TABLE IF NOT EXISTS `tekopukit` (
  `tekopukki_ID` int(11) NOT NULL AUTO_INCREMENT,
  `nimi` varchar(50) NOT NULL,
  `syntymäaika` varchar(10) NOT NULL,
  `puhelinnumero` varchar(10) NOT NULL,
  `toimialue` varchar(50) NOT NULL,
  PRIMARY KEY (`tekopukki_ID`),
  KEY `toimialue` (`toimialue`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tekopukit`
--

INSERT INTO `tekopukit` (`tekopukki_ID`, `nimi`, `syntymäaika`, `puhelinnumero`, `toimialue`) VALUES
(1, 'Pauli Heikkinen', '1.3.1949', '0405677339', 'Etelä-Suomen lääni'),
(2, 'Kalervo Kinnunen', '21.7.1955', '0405569882', 'Itä-Suomen lääni'),
(3, 'Jaakko Jyrkäs', '1.12.1957', '0445598378', 'Lapin lääni'),
(4, 'Paavo Jouluihminen', '1.2.1955', '0509984905', 'Länsi-Suomen lääni'),
(5, 'Samuli Sirkkeli', '11.9.1948', '0409988776', 'Oulun lääni'),
(6, 'Börje Sjöberg', '1.8.1951', '0507788945', 'Ahvenanmaa');

-- --------------------------------------------------------

--
-- Rakenne taululle `tekopukkien_esiintymiset`
--

CREATE TABLE IF NOT EXISTS `tekopukkien_esiintymiset` (
  `tekopukkien_esiintymiset_ID` int(11) NOT NULL AUTO_INCREMENT,
  `paikka` varchar(50) NOT NULL,
  `aika` varchar(10) NOT NULL,
  `uskottavuusaste` varchar(1) NOT NULL,
  `toimialue` varchar(50) NOT NULL,
  `tekopukki_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`tekopukkien_esiintymiset_ID`),
  KEY `tekopukki_ID` (`tekopukki_ID`),
  KEY `toimialue` (`toimialue`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tekopukkien_esiintymiset`
--

INSERT INTO `tekopukkien_esiintymiset` (`tekopukkien_esiintymiset_ID`, `paikka`, `aika`, `uskottavuusaste`, `toimialue`, `tekopukki_ID`) VALUES
(1, 'Kauppakeskus Maxinge', '21.12.2019', '5', 'Ahvenanmaa', 6),
(2, 'Itäkeskus Helsinki', '11.12.2019', '5', 'Etelä-Suomen lääni', 1),
(3, 'Prisma Joensuu', '13.12.2019', '4', 'Itä-Suomen lääni', 2),
(4, 'Alepa Meilahti', '23.12.2019', '3', 'Etelä-Suomen lääni', 1),
(5, 'K-citymarket Imatra', '12.12.2019', '5', 'Itä-Suomen lääni', 2),
(6, 'Kallen Kyläpuoti Inari', '6.12.2019', '1', 'Lapin lääni', 3),
(7, 'Hansakortteli Turku', '4.12.2019', '5', 'Länsi-Suomen lääni', 4),
(8, 'Kauppakeskus Zeppelin', '23.12.2019', '3', 'Oulun lääni', 5),
(9, 'S-market Toppila', '', '', 'Oulun lääni', 5),
(10, 'Kauppakeskus Zeipels', '', '5', 'Ahvenanmaa', 6);

-- --------------------------------------------------------

--
-- Rakenne taululle `tittelit`
--

CREATE TABLE IF NOT EXISTS `tittelit` (
  `tunniste` varchar(3) NOT NULL,
  `titteli` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tunniste`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tittelit`
--

INSERT INTO `tittelit` (`tunniste`, `titteli`) VALUES
('adm', 'Adminstraattori'),
('lel', 'Leluinssi'),
('mus', 'muusikko'),
('por', 'Poronhoitaja'),
('vak', 'Vakooja');

-- --------------------------------------------------------

--
-- Rakenne taululle `toimialueet`
--

CREATE TABLE IF NOT EXISTS `toimialueet` (
  `toimialue` varchar(50) NOT NULL,
  PRIMARY KEY (`toimialue`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `toimialueet`
--

INSERT INTO `toimialueet` (`toimialue`) VALUES
('Ahvenanmaa'),
('Etelä-Suomen lääni'),
('Itä-Suomen lääni'),
('Lapin lääni'),
('Länsi-Suomen lääni'),
('Oulun lääni');

-- --------------------------------------------------------

--
-- Rakenne taululle `toiveet`
--

CREATE TABLE IF NOT EXISTS `toiveet` (
  `toive_ID` int(11) NOT NULL AUTO_INCREMENT,
  `lapsi_ID` int(11) DEFAULT NULL,
  `lelu_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`toive_ID`),
  KEY `lapsi_ID` (`lapsi_ID`),
  KEY `lelu_ID` (`lelu_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `toiveet`
--

INSERT INTO `toiveet` (`toive_ID`, `lapsi_ID`, `lelu_ID`) VALUES
(1, 1, 3),
(2, 3, 2),
(3, 3, 15),
(4, 1, 3),
(5, 1, 20),
(6, 18, 25),
(7, 4, 4),
(8, 4, 5),
(9, 12, 6),
(10, 11, 10),
(11, 12, 7),
(12, 11, 6);

-- --------------------------------------------------------

--
-- Rakenne taululle `tontut`
--

CREATE TABLE IF NOT EXISTS `tontut` (
  `tonttu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `nimi` varchar(40) DEFAULT NULL,
  `titteli` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`tonttu_ID`),
  KEY `titteli` (`titteli`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `tontut`
--

INSERT INTO `tontut` (`tonttu_ID`, `nimi`, `titteli`) VALUES
(1, 'Elias', 'vak'),
(2, 'Toivonen', 'vak'),
(3, 'Laura', 'vak'),
(4, 'Tiina', 'vak'),
(5, 'Gitta', 'vak'),
(6, 'Reino', 'lel'),
(7, 'Hanna', 'lel'),
(8, 'Toni', 'lel'),
(9, 'Valtteri', 'lel'),
(10, 'Fanny', 'lel'),
(11, 'Tolonen', 'adm'),
(12, 'Elli', 'adm'),
(13, 'Noora', 'adm'),
(14, 'Sanna', 'adm'),
(15, 'Pauli', 'adm'),
(16, 'Toljanteri', 'por'),
(17, 'Hilla', 'por'),
(20, 'Santeri', 'mus'),
(21, 'Riitta', 'mus'),
(22, 'Diana', 'mus'),
(23, 'Usko', 'mus');

--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `lahja_tekijä`
--
ALTER TABLE `lahja_tekijä`
  ADD CONSTRAINT `lahja_tekijä_ibfk_1` FOREIGN KEY (`tekijä`) REFERENCES `tontut` (`tonttu_ID`),
  ADD CONSTRAINT `lahja_tekijä_ibfk_2` FOREIGN KEY (`lahja`) REFERENCES `lahjat` (`Lahjat_ID`);

--
-- Rajoitteet taululle `lapset`
--
ALTER TABLE `lapset`
  ADD CONSTRAINT `lapset_ibfk_1` FOREIGN KEY (`vakooja_ID`) REFERENCES `tontut` (`tonttu_ID`);

--
-- Rajoitteet taululle `muusikot`
--
ALTER TABLE `muusikot`
  ADD CONSTRAINT `muusikot_ibfk_1` FOREIGN KEY (`tonttu`) REFERENCES `tontut` (`tonttu_ID`),
  ADD CONSTRAINT `muusikot_ibfk_2` FOREIGN KEY (`instumentti`) REFERENCES `soittimet` (`instrumentti`);

--
-- Rajoitteet taululle `porot`
--
ALTER TABLE `porot`
  ADD CONSTRAINT `porot_ibfk_1` FOREIGN KEY (`Hoitaja_ID`) REFERENCES `tontut` (`tonttu_ID`);

--
-- Rajoitteet taululle `tekopukit`
--
ALTER TABLE `tekopukit`
  ADD CONSTRAINT `tekopukit_ibfk_1` FOREIGN KEY (`toimialue`) REFERENCES `toimialueet` (`toimialue`);

--
-- Rajoitteet taululle `tekopukkien_esiintymiset`
--
ALTER TABLE `tekopukkien_esiintymiset`
  ADD CONSTRAINT `tekopukkien_esiintymiset_ibfk_1` FOREIGN KEY (`tekopukki_ID`) REFERENCES `tekopukit` (`tekopukki_ID`),
  ADD CONSTRAINT `tekopukkien_esiintymiset_ibfk_2` FOREIGN KEY (`toimialue`) REFERENCES `toimialueet` (`toimialue`);

--
-- Rajoitteet taululle `toiveet`
--
ALTER TABLE `toiveet`
  ADD CONSTRAINT `toiveet_ibfk_1` FOREIGN KEY (`lapsi_ID`) REFERENCES `lapset` (`lapsiID`),
  ADD CONSTRAINT `toiveet_ibfk_2` FOREIGN KEY (`lelu_ID`) REFERENCES `lahjat` (`Lahjat_ID`);

--
-- Rajoitteet taululle `tontut`
--
ALTER TABLE `tontut`
  ADD CONSTRAINT `tontut_ibfk_1` FOREIGN KEY (`titteli`) REFERENCES `tittelit` (`tunniste`),
  ADD CONSTRAINT `tontut_ibfk_2` FOREIGN KEY (`titteli`) REFERENCES `tittelit` (`tunniste`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
