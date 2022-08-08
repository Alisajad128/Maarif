-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2022 at 11:15 AM
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
-- Database: `عبدالرحیم_شهید`
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
(45, 'ابراهیم', 'خدادا', 7, 'لیسه_غازی', 1401);

-- --------------------------------------------------------

--
-- Table structure for table `شهرت_شاگردان1401`
--

CREATE TABLE `شهرت_شاگردان1401` (
  `student_nid` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `grandfather_name` varchar(255) NOT NULL,
  `dofbrith` date NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `شهرت_شاگردان1401`
--

INSERT INTO `شهرت_شاگردان1401` (`student_nid`, `student_name`, `father_name`, `grandfather_name`, `dofbrith`, `photo`) VALUES
(1, 'روح الله', 'عصمت الله', 'عبدالرحیم', '2000-06-09', 'jhdjd'),
(10, 'محمد', 'امین', 'سلطان', '2008-07-13', 'C:/xampp/htdocs/filter/photo/1659278094.jpg'),
(12, 'عبدالله', 'محمد نبی', 'رسول', '2002-07-17', 'C:/xampp/htdocs/filter/photo/1659277534.jpg'),
(20, 'علی', 'محمد نبی', 'محمد قاسم', '2022-07-12', 'C:/xampp/htdocs/filter/photo/1659281015.jpg'),
(34, 'محمد زمان', 'محمد نبی', 'محمد جان', '2022-07-11', 'C:/xampp/htdocs/filter/photo/1659290738.jpg'),
(45, 'ابراهیم', 'خدادا', 'محمد جان', '2022-07-06', 'C:/xampp/htdocs/filter/photo/1659287457.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید14055`
--

CREATE TABLE `عبدالرحیم_شهید14055` (
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

--
-- Dumping data for table `عبدالرحیم_شهید14055`
--

INSERT INTO `عبدالرحیم_شهید14055` (`student_nid`, `Quran`, `islamicStudyes`, `dari`, `pashto`, `Arabic`, `english`, `chemistry`, `physics`, `biology`, `math`, `history`, `georaphy`, `civic_education`, `skills`, `selective_subject`, `art`, `sport`, `reformation`) VALUES
(45, '89', '90', '90', '90', '90', '90', '90', '90', '90', '90', '80', '89', '89', '89', '89', '89', '89', '89'),
(45, '89', '90', '90', '90', '90', '90', '90', '90', '90', '90', '80', '89', '89', '89', '89', '89', '89', '89');

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید14066`
--

CREATE TABLE `عبدالرحیم_شهید14066` (
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

--
-- Dumping data for table `عبدالرحیم_شهید14066`
--

INSERT INTO `عبدالرحیم_شهید14066` (`student_nid`, `Quran`, `islamicStudyes`, `dari`, `pashto`, `Arabic`, `english`, `chemistry`, `physics`, `biology`, `math`, `history`, `georaphy`, `civic_education`, `skills`, `selective_subject`, `art`, `sport`, `reformation`) VALUES
(45, '89', '90', '90', '90', '90', '90', '90', '90', '90', '90', '80', '89', '89', '89', '89', '89', '89', '89');

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید14077`
--

CREATE TABLE `عبدالرحیم_شهید14077` (
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

--
-- Dumping data for table `عبدالرحیم_شهید14077`
--

INSERT INTO `عبدالرحیم_شهید14077` (`student_nid`, `Quran`, `islamicStudyes`, `dari`, `pashto`, `Arabic`, `english`, `chemistry`, `physics`, `biology`, `math`, `history`, `georaphy`, `civic_education`, `skills`, `selective_subject`, `art`, `sport`, `reformation`) VALUES
(45, '89', '90', '90', '90', '90', '90', '90', '90', '90', '90', '80', '89', '89', '89', '89', '89', '89', '89');

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید141010`
--

CREATE TABLE `عبدالرحیم_شهید141010` (
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
-- Dumping data for table `عبدالرحیم_شهید141010`
--

INSERT INTO `عبدالرحیم_شهید141010` (`student_nid`, `interpretation`, `islamic_insight`, `dari`, `pashto`, `english`, `physics`, `chemistry`, `biology`, `math`, `geology`, `history`, `georaphy`, `civic_education`, `computer`, `selective_subject`, `sport`, `reformation`) VALUES
(10, '100', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90'),
(10, '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '9', '78', '78', '89', '78', '78'),
(45, '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90', '90');

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید141111`
--

CREATE TABLE `عبدالرحیم_شهید141111` (
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
-- Dumping data for table `عبدالرحیم_شهید141111`
--

INSERT INTO `عبدالرحیم_شهید141111` (`student_nid`, `interpretation`, `islamic_insight`, `dari`, `pashto`, `english`, `physics`, `chemistry`, `biology`, `math`, `geology`, `history`, `georaphy`, `civic_education`, `computer`, `selective_subject`, `sport`, `reformation`) VALUES
(10, '89', '89', '90', '90', '90', '67', '67', '56', '56', '78', '67', '56', '76', '56', '89', '76', '86');

-- --------------------------------------------------------

--
-- Table structure for table `عبدالرحیم_شهید141212`
--

CREATE TABLE `عبدالرحیم_شهید141212` (
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
-- Dumping data for table `عبدالرحیم_شهید141212`
--

INSERT INTO `عبدالرحیم_شهید141212` (`student_nid`, `interpretation`, `islamic_insight`, `dari`, `pashto`, `english`, `physics`, `chemistry`, `biology`, `math`, `geology`, `history`, `georaphy`, `civic_education`, `computer`, `selective_subject`, `sport`, `reformation`) VALUES
(10, '89', '89', '89', '89', '78', '78', '68', '86', '88', '88', '88', '88', '88', '88', '88', '88', '88');

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
-- Indexes for table `عبدالرحیم_شهید14055`
--
ALTER TABLE `عبدالرحیم_شهید14055`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `عبدالرحیم_شهید14066`
--
ALTER TABLE `عبدالرحیم_شهید14066`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `عبدالرحیم_شهید14077`
--
ALTER TABLE `عبدالرحیم_شهید14077`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `عبدالرحیم_شهید141010`
--
ALTER TABLE `عبدالرحیم_شهید141010`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `عبدالرحیم_شهید141111`
--
ALTER TABLE `عبدالرحیم_شهید141111`
  ADD KEY `student_nid` (`student_nid`);

--
-- Indexes for table `عبدالرحیم_شهید141212`
--
ALTER TABLE `عبدالرحیم_شهید141212`
  ADD KEY `student_nid` (`student_nid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `عبدالرحیم_شهید14055`
--
ALTER TABLE `عبدالرحیم_شهید14055`
  ADD CONSTRAINT `عبدالرحیم_شهید14055_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);

--
-- Constraints for table `عبدالرحیم_شهید14066`
--
ALTER TABLE `عبدالرحیم_شهید14066`
  ADD CONSTRAINT `عبدالرحیم_شهید14066_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);

--
-- Constraints for table `عبدالرحیم_شهید14077`
--
ALTER TABLE `عبدالرحیم_شهید14077`
  ADD CONSTRAINT `عبدالرحیم_شهید14077_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);

--
-- Constraints for table `عبدالرحیم_شهید141010`
--
ALTER TABLE `عبدالرحیم_شهید141010`
  ADD CONSTRAINT `عبدالرحیم_شهید141010_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);

--
-- Constraints for table `عبدالرحیم_شهید141111`
--
ALTER TABLE `عبدالرحیم_شهید141111`
  ADD CONSTRAINT `عبدالرحیم_شهید141111_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);

--
-- Constraints for table `عبدالرحیم_شهید141212`
--
ALTER TABLE `عبدالرحیم_شهید141212`
  ADD CONSTRAINT `عبدالرحیم_شهید141212_ibfk_1` FOREIGN KEY (`student_nid`) REFERENCES `شهرت_شاگردان1401` (`student_nid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
