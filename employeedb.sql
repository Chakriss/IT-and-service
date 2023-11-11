-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2023 at 12:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dpm_id` varchar(10) NOT NULL,
  `emp_no` varchar(30) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` enum('F','M') NOT NULL,
  `dpm_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dpm_id`, `emp_no`, `first_name`, `last_name`, `gender`, `dpm_name`) VALUES
('D0001', '00001', 'ชาคริส', 'พันธุเวช', 'M', 'Programmer'),
('D0002', '00002', 'ศุภวิชญ์', 'ศรีระษา', 'M', 'Data science'),
('D0003', '00003', 'กฤษณ์', 'ศิริรักษ์', 'M', 'IT Support'),
('D0004', '00004', 'วีรภัทร', 'สุทธิวงค์', 'M', 'IT Support'),
('D0005', '00005', 'สวิตตา', 'โรจนสิรี', 'F', 'Data science');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_no` varchar(30) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` enum('F','M') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_no`, `first_name`, `last_name`, `gender`) VALUES
('00001', 'ชาคริส', 'พันธุเวช', 'M'),
('00002', 'ศุภวิชญ์', 'ศรีระษา', 'M'),
('00003', 'กฤษณ์', 'ศิริรักษ์', 'M'),
('00004', 'วีรภัทร', 'สุทธิวงค์', 'M'),
('00005', 'สวิตตา', 'โรจนสิรี', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `fruit`
--

CREATE TABLE `fruit` (
  `fruit_id` varchar(10) NOT NULL,
  `fruit_name` varchar(30) NOT NULL,
  `fruit_price` int(11) NOT NULL,
  `fruit_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `fruit`
--

INSERT INTO `fruit` (`fruit_id`, `fruit_name`, `fruit_price`, `fruit_amount`) VALUES
('F0001', 'Orange', 20, 100),
('F0002', 'Apple', 15, 200),
('F0003', 'Coconut', 50, 100),
('F0004', 'Pineapple', 75, 160),
('F0005', 'strawberry', 15, 300);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` varchar(5) NOT NULL,
  `prod_name` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `price`, `amount`) VALUES
('PP001', 'พวงกุญแจ', 15, 30),
('PP002', 'ปากกา', 10, 10),
('PP003', 'สมุดจดบันทึก', 30, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dpm_id`),
  ADD KEY `emp_no` (`emp_no`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_no`);

--
-- Indexes for table `fruit`
--
ALTER TABLE `fruit`
  ADD PRIMARY KEY (`fruit_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employee` (`emp_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
