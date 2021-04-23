-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2021 at 10:16 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loan_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_contact`
--

CREATE TABLE `customer_contact` (
  `customer_id` int(11) NOT NULL,
  `contact1` int(10) NOT NULL,
  `contact2` int(10) NOT NULL,
  `secondary_contact` int(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `postal_Address` varchar(40) NOT NULL,
  `residential_address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_emp_details`
--

CREATE TABLE `customer_emp_details` (
  `customer_id` int(10) NOT NULL,
  `occupation` varchar(40) NOT NULL,
  `employer` varchar(40) NOT NULL,
  `highest_education` varchar(30) NOT NULL,
  `ssn` varchar(15) NOT NULL,
  `tin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_family`
--

CREATE TABLE `customer_family` (
  `marital_status` tinyint(1) NOT NULL,
  `children` int(11) NOT NULL,
  `next_of_kin` varchar(40) NOT NULL,
  `nok_contact` int(10) NOT NULL,
  `nok_age` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_primary`
--

CREATE TABLE `customer_primary` (
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `other_name` varchar(40) NOT NULL,
  `cus_ID` int(10) NOT NULL,
  `DOB` date NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `date_joined` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loan_payment`
--

CREATE TABLE `loan_payment` (
  `loan_id` int(11) NOT NULL,
  `assignment_id` int(5) NOT NULL COMMENT '1',
  `amount_paid` decimal(10,0) NOT NULL,
  `balance` decimal(10,0) NOT NULL,
  `time_of_last_payment` date NOT NULL,
  `officer_id` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loan_products`
--

CREATE TABLE `loan_products` (
  `loan_name` varchar(40) NOT NULL,
  `loan_id` int(6) NOT NULL,
  `method` varchar(40) NOT NULL,
  `insurance` decimal(4,0) NOT NULL,
  `processing_fee` decimal(4,0) NOT NULL,
  `grace_period` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `officer_id` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_primary`
--
ALTER TABLE `customer_primary`
  ADD PRIMARY KEY (`cus_ID`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`officer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
