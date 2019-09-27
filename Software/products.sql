-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2019 at 08:43 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simplexm_automation`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product` varchar(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `verify` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product`, `date`, `time`, `verify`) VALUES
('001', NULL, NULL, NULL),
('Hi,Server', NULL, NULL, NULL),
('Hi,Server', NULL, NULL, NULL),
('Hi,Server', NULL, NULL, NULL),
('Hello,Serve', NULL, NULL, NULL),
('Hello,Serve', NULL, NULL, NULL),
('Hello,Serve', NULL, NULL, NULL),
('Hello,Serve', NULL, NULL, NULL),
('Hello,Serve', NULL, NULL, NULL),
('001', NULL, NULL, NULL),
('002', NULL, NULL, NULL),
('001', NULL, NULL, NULL),
('\"001\"', NULL, NULL, NULL),
('Hi,Server', NULL, NULL, NULL),
('002', NULL, NULL, NULL),
('001', NULL, NULL, NULL),
('005', NULL, NULL, NULL),
('001', NULL, NULL, NULL),
('\"001\"', NULL, NULL, NULL),
('hi,server', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
