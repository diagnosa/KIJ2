-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05 Mei 2015 pada 21.13
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `certificate_authority`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `csr`
--

CREATE TABLE IF NOT EXISTS `csr` (
  `ID_REQ` int(5) NOT NULL AUTO_INCREMENT,
  `COMMON_NAME` varchar(100) NOT NULL,
  `ORGANIZATION` varchar(100) NOT NULL,
  `ORGANIZATIONAL_UNIT` varchar(100) NOT NULL,
  `CITY_LOCALITY` varchar(50) NOT NULL,
  `STATE_PROVINCE` varchar(50) NOT NULL,
  `COUNTRY_REGION` varchar(50) NOT NULL,
  `PRIVATE_KEY` text NOT NULL,
  `CERTIFICATE` text NOT NULL,
  PRIMARY KEY (`ID_REQ`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
