-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 10:11 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_2`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `open exam` ()   SELECT* FROM student$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `password` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `Name`, `admin_email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `Dept` varchar(50) NOT NULL,
  `Course` varchar(100) NOT NULL,
  `Sub_category` varchar(100) NOT NULL,
  `Exam_name` varchar(100) NOT NULL,
  `Exam_type` varchar(100) NOT NULL,
  `Exam_formate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `Dept`, `Course`, `Sub_category`, `Exam_name`, `Exam_type`, `Exam_formate`) VALUES
(2, 'Management', 'MCA', 'MCA-science', 'Midterm', 'MCQ', 'hr'),
(3, 'science', 'BBA', 'BMS', 'Midterm', 'Descriptive Exam', 'hr'),
(4, 'Management', 'MCA', 'MCA-science', 'Midterm', 'MCQ', 'hr');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question` varchar(1000) NOT NULL,
  `option_1` varchar(1000) NOT NULL,
  `option_2` varchar(1000) NOT NULL,
  `option_3` varchar(1000) NOT NULL,
  `option_4` varchar(1000) NOT NULL,
  `correct` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question`, `option_1`, `option_2`, `option_3`, `option_4`, `correct`) VALUES
('tfyiuhj', 'ctvyubjnk', 'vybiunkm', 'vybiunk', 'yvbun', 'ctvyuib'),
('', '', '', '', '', ''),
('tfyiuhj', 'ctvyubjnk', 'vybiunkm', 'yviubino', 'yvbun', 'guvhib'),
('tfyiuhj', 'ctvyubjnk', 'vybiunkm', 'yviubino', 'yvbun', 'guvhib'),
('tfyiuhj', 'ctvyubjnk', 'vybiunkm', 'yviubino', 'yvbun', 'guvhib');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `prn_no` int(11) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `student_dept` varchar(50) NOT NULL,
  `student_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `prn_no`, `student_name`, `student_email`, `password`, `student_dept`, `student_mobile`) VALUES
(1, 1062210536, 'satyam', 'satyam.sp.psnadey@gmail.com', '12345', 'management', '08416960806'),
(2, 1062210536, 'satyam.sp.psnadey@gmail.com', 'satyam.sp.psnadey@gmail.com', '1232', 'management', '08416960806'),
(3, 1062210536, 'gaurav', 'gaurav2132@gmail.com', 'vuyuoijo', 'management', '5678079856970'),
(4, 1062210536, 'satyam.sp.psnadey@gmail.com', 'satyam.sp.psnadey@gmail.com', '312354', 'management', '08416960806');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
