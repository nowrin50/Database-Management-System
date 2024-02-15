-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2024 at 12:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hasanuzzaman_sojeeb`
--

-- --------------------------------------------------------

--
-- Table structure for table `the_account_relation`
--

CREATE TABLE `the_account_relation` (
  `account_number` varchar(10) DEFAULT NULL,
  `brance_name` varchar(20) DEFAULT NULL,
  `balance` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `the_account_relation`
--

INSERT INTO `the_account_relation` (`account_number`, `brance_name`, `balance`) VALUES
('A-101', 'Downtown', 500),
('A-102', 'Perryridge', 400),
('A-201', 'Brighton', 900),
('A-215', 'Downtown', 700),
('A-217', 'Mianus', 750),
('A-222', 'Brighton', 700),
('A-305', 'Round Hill', 350);

-- --------------------------------------------------------

--
-- Table structure for table `the_borrower_relation`
--

CREATE TABLE `the_borrower_relation` (
  `customer_name` varchar(23) DEFAULT NULL,
  `loan_number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `the_borrower_relation`
--

INSERT INTO `the_borrower_relation` (`customer_name`, `loan_number`) VALUES
('Adams', 'L-16'),
('Curry', 'L-93'),
('Hayes', 'L-15'),
('Johnson', 'L-14'),
('Jones', 'L-17'),
('Smith', 'L-11'),
('Smith', 'L-23'),
('Williams', 'L-17');

-- --------------------------------------------------------

--
-- Table structure for table `the_branch_relation`
--

CREATE TABLE `the_branch_relation` (
  `branch_name` varchar(20) DEFAULT NULL,
  `branch_city` varchar(20) DEFAULT NULL,
  `assets` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `the_branch_relation`
--

INSERT INTO `the_branch_relation` (`branch_name`, `branch_city`, `assets`) VALUES
('Brighton', 'Brooklyn', 7100000),
('Downtown', 'Brooklyn', 9000000),
('Mianus', 'Horseken', 400000),
('North Town', 'Rye', 3700000),
('Perryridge', 'Horseken', 1700000),
('Rownal', 'Bennington', 300000),
('ReedWood', 'Palo Alto', 2100000),
('Round Hill', 'Horseken', 8000000);

-- --------------------------------------------------------

--
-- Table structure for table `the_customer_relation`
--

CREATE TABLE `the_customer_relation` (
  `customer_name` varchar(20) DEFAULT NULL,
  `customer_street` varchar(20) DEFAULT NULL,
  `customer_city` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `the_customer_relation`
--

INSERT INTO `the_customer_relation` (`customer_name`, `customer_street`, `customer_city`) VALUES
('Adams', 'Spring', 'Pittsfield'),
('Brooks', 'Senator', 'Brooklyn'),
('Curry', 'North', 'Rye'),
('Glenn', 'Sand Hill', 'Woodside'),
('Grenn', 'Walnut', 'Stamford'),
('Hayes', 'Main', 'Harrison'),
('Johnson', 'Alma', 'Palo Alto'),
('Jones', 'Main', 'Harrison'),
('Lindsay', 'Park', 'Pittsfield'),
('Smith', 'North', 'Rye'),
('Turner', 'Putnam', 'Stamford'),
('Williams', 'Nassau', 'Princeton');

-- --------------------------------------------------------

--
-- Table structure for table `the_depositor_relation`
--

CREATE TABLE `the_depositor_relation` (
  `cusomer_name` varchar(20) DEFAULT NULL,
  `account_number` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `the_loan_relation`
--

CREATE TABLE `the_loan_relation` (
  `loan_number` varchar(10) DEFAULT NULL,
  `brance_name` varchar(20) DEFAULT NULL,
  `amount` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `the_loan_relation`
--

INSERT INTO `the_loan_relation` (`loan_number`, `brance_name`, `amount`) VALUES
('L-11', 'Round Hill', 900),
('L-14', 'Downtown', 1500),
('L-15', 'Perryridge', 1500),
('L-16', 'Perryridge', 1300),
('L-17', 'Downtown', 1000),
('L-23', 'Redwood', 2000),
('L-93', 'Mianus', 500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
