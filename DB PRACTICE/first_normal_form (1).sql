-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 06:45 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first_normal_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `PhysicalAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers1`
--

CREATE TABLE `customers1` (
  `CustomerID` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `PhysicalAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers2`
--

CREATE TABLE `customers2` (
  `Membership_id` int(11) NOT NULL,
  `Full_names` varchar(255) DEFAULT NULL,
  `Physical_address` varchar(255) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers2`
--

INSERT INTO `customers2` (`Membership_id`, `Full_names`, `Physical_address`, `salutation`) VALUES
(1, 'Jane Jones', 'First Street Plot No 4', 'Ms'),
(2, 'Robert Phill', '3rd Street 34', 'Mr'),
(3, 'Robert Phill', '5th Avenue', 'Mr');

-- --------------------------------------------------------

--
-- Table structure for table `movie_rent`
--

CREATE TABLE `movie_rent` (
  `Membership_id` int(11) DEFAULT NULL,
  `Movies_rented` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_rent`
--

INSERT INTO `movie_rent` (`Membership_id`, `Movies_rented`) VALUES
(1, 'Pirates of the Carriben'),
(1, 'Clash of Titans'),
(2, 'Forgetting Sarah'),
(2, 'Daddy\'s Little Girl'),
(3, 'Clash of Titans');

-- --------------------------------------------------------

--
-- Table structure for table `movie_rent1`
--

CREATE TABLE `movie_rent1` (
  `Membership_id` int(11) DEFAULT NULL,
  `movie_rent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `customers1`
--
ALTER TABLE `customers1`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `customers2`
--
ALTER TABLE `customers2`
  ADD PRIMARY KEY (`Membership_id`);

--
-- Indexes for table `movie_rent`
--
ALTER TABLE `movie_rent`
  ADD KEY `Membership_id` (`Membership_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_rent`
--
ALTER TABLE `movie_rent`
  ADD CONSTRAINT `movie_rent_ibfk_1` FOREIGN KEY (`Membership_id`) REFERENCES `customers2` (`Membership_id`),
  ADD CONSTRAINT `movie_rent_ibfk_2` FOREIGN KEY (`Membership_id`) REFERENCES `customers2` (`Membership_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
