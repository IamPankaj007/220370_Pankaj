-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 06:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first_nm`
--

-- --------------------------------------------------------

--
-- Table structure for table `normalization`
--

CREATE TABLE `normalization` (
  `full_name` varchar(255) DEFAULT NULL,
  `physical_address` varchar(255) DEFAULT NULL,
  `movie_rented` varchar(255) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `normalization`
--

INSERT INTO `normalization` (`full_name`, `physical_address`, `movie_rented`, `salutation`) VALUES
('janet jones', 'first street plot 4', 'Clash of the Titans', 'Ms'),
('janet jones', 'first street plot 4', 'Pirates of the Caribbean', 'Ms'),
('Robert Phill', '3rd street 34', 'Forgetting Sarah Marshall', 'Mr'),
('Robert Phill', '3rd street 34', 'Daddy\'s Little Girl', 'Mr'),
('Robert Phill', '3rd street 34', 'Clash of the Titans', 'Mr');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
