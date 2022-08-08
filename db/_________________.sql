-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 11:16 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `لیسه_غازی`
--

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `preschool` varchar(255) NOT NULL,
  `startyear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`student_id`, `student_name`, `father_name`, `grade`, `preschool`, `startyear`) VALUES
(1, 'روح الله', 'عصمت الله', 12, 'عبدالرحیم_شهید', 1401),
(10, 'محمد', 'امین', 5, 'عبدالرحیم_شهید', 1401);

-- --------------------------------------------------------

--
-- Table structure for table `شهرت_شاگردان1401`
--

CREATE TABLE `شهرت_شاگردان1401` (
  `student_nid` int(11) NOT NULL,
  `student_name` varchar(64) NOT NULL,
  `father_name` varchar(64) NOT NULL,
  `grandfather_name` varchar(64) NOT NULL,
  `dofbrith` date NOT NULL,
  `photo` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `شهرت_شاگردان1401`
--

INSERT INTO `شهرت_شاگردان1401` (`student_nid`, `student_name`, `father_name`, `grandfather_name`, `dofbrith`, `photo`) VALUES
(10, 'محمد', 'امین', 'سلطان', '2008-07-13', 'C:/xampp/htdocs/filter/photo/1659278094.jpg'),
(11, 'عارف', 'محمد عمر', 'محمد قاسم', '2010-07-05', 'C:/xampp/htdocs/filter/photo/1659278185.jpg'),
(20, 'روح الله', 'عصمت الله', 'عبدالرحیم', '2022-07-20', 'C:/xampp/htdocs/filter/photo/1659283829.jpg'),
(45, 'ابراهیم', 'خدادا', 'محمد جان', '2022-07-06', 'C:/xampp/htdocs/filter/photo/1659287457.jpg'),
(67, 'یبنتینبت', 'نتنت', 'نتنن', '2022-07-12', 'C:/xampp/htdocs/filter/photo/1659288840.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `لیسه_غازی14055`
--

CREATE TABLE `لیسه_غازی14055` (
  `student_nid` int(11) NOT NULL,
  `Quran` varchar(32) NOT NULL,
  `islamicStudyes` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `Arabic` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `skills` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `art` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `لیسه_غازی14066`
--

CREATE TABLE `لیسه_غازی14066` (
  `student_nid` int(11) NOT NULL,
  `Quran` varchar(32) NOT NULL,
  `islamicStudyes` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `Arabic` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `skills` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `art` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `لیسه_غازی14077`
--

CREATE TABLE `لیسه_غازی14077` (
  `student_nid` int(11) NOT NULL,
  `Quran` varchar(32) NOT NULL,
  `islamicStudyes` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `Arabic` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `skills` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `art` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `لیسه_غازی141010`
--

CREATE TABLE `لیسه_غازی141010` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `لیسه_غازی141010`
--

INSERT INTO `لیسه_غازی141010` (`student_nid`, `interpretation`, `islamic_insight`, `dari`, `pashto`, `english`, `physics`, `chemistry`, `biology`, `math`, `geology`, `history`, `georaphy`, `civic_education`, `computer`, `selective_subject`, `sport`, `reformation`) VALUES
(11, '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90'),
(20, '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '78', '78', '78', '78', '89');

-- --------------------------------------------------------

--
-- Table structure for table `لیسه_غازی141111`
--

CREATE TABLE `لیسه_غازی141111` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `لیسه_غازی141111`
--

INSERT INTO `لیسه_غازی141111` (`student_nid`, `interpretation`, `islamic_insight`, `dari`, `pashto`, `english`, `physics`, `chemistry`, `biology`, `math`, `geology`, `history`, `georaphy`, `civic_education`, `computer`, `selective_subject`, `sport`, `reformation`) VALUES
(11, '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90'),
(20, '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90');

-- --------------------------------------------------------

--
-- Table structure for table `لیسه_غازی141212`
--

CREATE TABLE `لیسه_غازی141212` (
  `student_nid` int(11) NOT NULL,
  `interpretation` varchar(32) NOT NULL,
  `islamic_insight` varchar(32) NOT NULL,
  `dari` varchar(32) NOT NULL,
  `pashto` varchar(32) NOT NULL,
  `english` varchar(32) NOT NULL,
  `physics` varchar(32) NOT NULL,
  `chemistry` varchar(32) NOT NULL,
  `biology` varchar(32) NOT NULL,
  `math` varchar(32) NOT NULL,
  `geology` varchar(32) NOT NULL,
  `history` varchar(32) NOT NULL,
  `georaphy` varchar(32) NOT NULL,
  `civic_education` varchar(32) NOT NULL,
  `computer` varchar(32) NOT NULL,
  `selective_subject` varchar(32) NOT NULL,
  `sport` varchar(32) NOT NULL,
  `reformation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `لیسه_غازی141212`
--

INSERT INTO `لیسه_غازی141212` (`student_nid`, `interpretation`, `islamic_insight`, `dari`, `pashto`, `english`, `physics`, `chemistry`, `biology`, `math`, `geology`, `history`, `georaphy`, `civic_education`, `computer`, `selective_subject`, `sport`, `reformation`) VALUES
(11, '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90'),
(20, '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `شهرت_شاگردان1401`
--
ALTER TABLE `شهرت_شاگردان1401`
  ADD PRIMARY KEY (`student_nid`);

--
-- Indexes for table `لیسه_غازی14055`
--
ALTER TABLE `لیسه_غازی14055`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `لیسه_غازی14066`
--
ALTER TABLE `لیسه_غازی14066`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `لیسه_غازی14077`
--
ALTER TABLE `لیسه_غازی14077`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `لیسه_غازی141010`
--
ALTER TABLE `لیسه_غازی141010`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `لیسه_غازی141111`
--
ALTER TABLE `لیسه_غازی141111`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `لیسه_غازی141212`
--
ALTER TABLE `لیسه_غازی141212`
  ADD KEY `student_nid` (`student_nid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `لیسه_غازی14055`
--
ALTER TABLE `لیسه_غازی14055`
  ADD CONSTRAINT `لیسه_غازی14055_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);

--
-- Constraints for table `لیسه_غازی14066`
--
ALTER TABLE `لیسه_غازی14066`
  ADD CONSTRAINT `لیسه_غازی14066_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);

--
-- Constraints for table `لیسه_غازی14077`
--
ALTER TABLE `لیسه_غازی14077`
  ADD CONSTRAINT `لیسه_غازی14077_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);

--
-- Constraints for table `لیسه_غازی141010`
--
ALTER TABLE `لیسه_غازی141010`
  ADD CONSTRAINT `لیسه_غازی141010_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);

--
-- Constraints for table `لیسه_غازی141111`
--
ALTER TABLE `لیسه_غازی141111`
  ADD CONSTRAINT `لیسه_غازی141111_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);

--
-- Constraints for table `لیسه_غازی141212`
--
ALTER TABLE `لیسه_غازی141212`
  ADD CONSTRAINT `لیسه_غازی141212_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
