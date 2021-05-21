-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 04:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `retail_dataset`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `arrive_time` time DEFAULT NULL,
  `leave_time` time DEFAULT NULL,
  `products_bought` int(11) DEFAULT NULL,
  `price_paid` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `arrive_time`, `leave_time`, `products_bought`, `price_paid`) VALUES
(1, '08:00:00', '10:00:00', 12, 123.67),
(2, '08:00:01', '08:10:12', 2, 12.23),
(3, '08:00:04', '08:14:11', 4, 23.54),
(4, '08:04:12', '10:20:00', 12, 89.12),
(5, '09:04:34', '10:21:30', 10, 213.56),
(6, '09:12:12', '10:09:34', 1, 12.99),
(7, '09:32:13', '10:34:11', 10, 162.48),
(8, '09:42:12', '10:45:34', 14, 34.99),
(9, '09:53:51', '10:09:34', 2, 12.99),
(10, '09:12:12', '10:09:34', 1, 12.99),
(11, '10:04:34', '10:21:30', 10, 213.56),
(12, '10:12:12', '10:10:34', 1, 12.99),
(13, '10:32:13', '10:34:11', 10, 162.48),
(14, '10:42:12', '10:45:34', 14, 34.99),
(15, '10:53:51', '10:10:34', 2, 12.99),
(16, '10:12:12', '10:10:34', 1, 12.99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
