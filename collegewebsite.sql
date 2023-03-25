-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 10:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegewebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `admission_id` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `placement_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admission_info`
--

CREATE TABLE `admission_info` (
  `Registration ID` varchar(50) NOT NULL,
  `Student Name` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` text NOT NULL,
  `Blood Group` varchar(15) NOT NULL,
  `Nationality` text NOT NULL,
  `Religion` text NOT NULL,
  `Phone No.` int(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Guardian Info` varchar(50) NOT NULL,
  `10th Details` varchar(255) NOT NULL,
  `12th Details` varchar(255) NOT NULL,
  `Diploma Details` varchar(255) NOT NULL,
  `Year Gap` int(15) NOT NULL,
  `Stream` text NOT NULL,
  `Addmission Year` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
(1, 'BCA'),
(2, 'BBA'),
(3, 'MCA'),
(4, 'MSc');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `Student ID` int(25) NOT NULL,
  `Student Name` varchar(50) NOT NULL,
  `University Roll` int(30) NOT NULL,
  `Stream` text NOT NULL,
  `Year` int(10) NOT NULL,
  `Semester` varchar(30) NOT NULL,
  `Fees` int(255) NOT NULL,
  `Date` date NOT NULL,
  `Due Fees` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `placement information`
--

CREATE TABLE `placement information` (
  `Company ID` int(11) NOT NULL,
  `Company Name` varchar(50) NOT NULL,
  `Company Criteria` text NOT NULL,
  `Placed Students` int(255) NOT NULL,
  `CTC Package` int(11) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student information`
--

CREATE TABLE `student information` (
  `Student ID` int(10) NOT NULL,
  `Student Name` varchar(50) NOT NULL,
  `Student University Roll Number` varchar(23) NOT NULL,
  `Gender` text NOT NULL,
  `DOB` year(4) NOT NULL,
  `Phone Number` int(12) NOT NULL,
  `Email ID` varchar(40) NOT NULL,
  `Blood Group` varchar(10) NOT NULL,
  `Class 10 Admit Roll Number` varchar(20) NOT NULL,
  `Class 10 Marks` int(3) NOT NULL,
  `Class 10 Passing Year` int(4) NOT NULL,
  `Class 12 Marks` int(3) NOT NULL,
  `Class 12 Passing Year` int(4) NOT NULL,
  `Class 10 Percentage` int(2) NOT NULL,
  `Class 12 Percentage` int(2) NOT NULL,
  `Graduation Start Year` int(4) NOT NULL,
  `Graduation Passing Year` int(4) NOT NULL,
  `Backlog Subjects` varchar(100) NOT NULL,
  `Any kind of year gap in study` text NOT NULL,
  `Student's Nationality` varchar(10) NOT NULL,
  `Father's Name` varchar(20) NOT NULL,
  `Mother's Name` varchar(20) NOT NULL,
  `Guardian's Name` varchar(20) NOT NULL,
  `Guardian's Contact Number` int(12) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Last Fees Paid` date NOT NULL,
  `Current Semester` varchar(20) NOT NULL,
  `Favourite Three Subjects` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_login`
--

CREATE TABLE `student_login` (
  `Student ID` int(11) NOT NULL,
  `Student Name` varchar(50) NOT NULL,
  `Student University Roll Number` varchar(23) NOT NULL,
  `Password` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admission_info`
--
ALTER TABLE `admission_info`
  ADD PRIMARY KEY (`Registration ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`Student ID`),
  ADD UNIQUE KEY `University Roll` (`University Roll`);

--
-- Indexes for table `placement information`
--
ALTER TABLE `placement information`
  ADD PRIMARY KEY (`Company ID`);

--
-- Indexes for table `student information`
--
ALTER TABLE `student information`
  ADD PRIMARY KEY (`Student ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `Student ID` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placement information`
--
ALTER TABLE `placement information`
  MODIFY `Company ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student information`
--
ALTER TABLE `student information`
  MODIFY `Student ID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
