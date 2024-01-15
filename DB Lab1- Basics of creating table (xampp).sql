-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 07:55 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_22234103237`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_Title` varchar(20) DEFAULT NULL,
  `Course_Code` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Name` varchar(20) DEFAULT NULL,
  `Short_Code` varchar(5) DEFAULT NULL,
  `Course_Code` varchar(7) DEFAULT NULL,
  `Conduct_Semester` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Name`, `Short_Code`, `Course_Code`, `Conduct_Semester`) VALUES
(' Farha akter munmun', 'FAM', 'CSE 319', 'Summer 2019'),
(' Sweety Lima', 'SWL', 'CSE 209', 'Fall 2019-2'),
(' Shumi Khatun', 'SKN', 'NULL', 'Summer 2019'),
(' Nadia afrin Ritu', 'NULL', 'CSE 351', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `Name` varchar(20) DEFAULT NULL,
  `St_ID` int(2) DEFAULT NULL,
  `NID` int(3) DEFAULT NULL,
  `Intake` int(2) DEFAULT NULL,
  `Section` int(1) DEFAULT NULL,
  `CGPA` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`Name`, `St_ID`, `NID`, `Intake`, `Section`, `CGPA`) VALUES
('Ashraful', 1, 102, 44, 1, 3.3),
('Tonny', 2, 101, 44, 1, 3.5),
('zakir', 33, 103, 35, 2, 3.98),
('Urmi', 6, 104, 35, 1, 3.96),
('Tonny', 23, 105, 44, 1, 3.5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
