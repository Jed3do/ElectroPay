-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2025 at 10:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electropay`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountdetails`
--

CREATE TABLE `accountdetails` (
  `type` enum('Admin','Customer','','') NOT NULL,
  `accUsername` varchar(150) NOT NULL,
  `accPassword` varchar(150) NOT NULL,
  `AdminID` varchar(25) NOT NULL DEFAULT '0',
  `accName` varchar(150) NOT NULL,
  `meternumber` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accountdetails`
--

INSERT INTO `accountdetails` (`type`, `accUsername`, `accPassword`, `AdminID`, `accName`, `meternumber`, `address`) VALUES
('Customer', 'ahron', '12345', '0', 'badili', '12345', 'cogtong'),
('Admin', 'ahronAdmin', '12345', '12345', 'ahron', NULL, NULL),
('Admin', 'edo', 'joward', '1234', 'jed', NULL, NULL),
('Customer', 'jed', 'dolphin1561', '0', 'joward', '12345', 'sagumay');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `meter_number` int(123) NOT NULL,
  `month` varchar(123) NOT NULL,
  `units` int(40) NOT NULL,
  `total_bill` int(30) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` varchar(123) NOT NULL,
  `meternumber` varchar(123) NOT NULL,
  `address` varchar(29) NOT NULL,
  `contactnumber` int(30) NOT NULL,
  `username` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `managecustomer`
--

CREATE TABLE `managecustomer` (
  `customer` varchar(500) NOT NULL,
  `meternumber` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `managecustomer`
--

INSERT INTO `managecustomer` (`customer`, `meternumber`, `address`, `phonenumber`, `email`) VALUES
('jed', ' ghshre', ' hgrshrh', ' hsrhsr', ' e5yrhr'),
('Ariel', '0939', 'Sagumay', '0947853993', 'ariel@bisu.edu.ph'),
('obet', '1234567', 'candijay', '0321654', 'obet@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountdetails`
--
ALTER TABLE `accountdetails`
  ADD PRIMARY KEY (`accUsername`,`AdminID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`meternumber`,`contactnumber`,`username`);

--
-- Indexes for table `managecustomer`
--
ALTER TABLE `managecustomer`
  ADD PRIMARY KEY (`meternumber`,`phonenumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
