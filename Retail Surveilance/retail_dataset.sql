-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2021 at 05:54 PM
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
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `products_bought` int(11) DEFAULT NULL,
  `price_paid` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `from_time`, `to_time`, `products_bought`, `price_paid`) VALUES
(1, '12:00:00', '13:00:00', 5, 74.95),
(2, '15:00:00', '16:00:00', 12, 167.88),
(3, '12:00:00', '13:00:00', 11, 164.89),
(4, '13:00:00', '14:00:00', 11, 120.89),
(5, '15:00:00', '16:00:00', 6, 23.94),
(6, '10:00:00', '11:00:00', 4, 51.96),
(7, '14:00:00', '15:00:00', 1, 12.99),
(8, '15:00:00', '16:00:00', 5, 34.95),
(9, '13:00:00', '14:00:00', 5, 9.95),
(10, '12:00:00', '13:00:00', 3, 2.97),
(11, '09:00:00', '10:00:00', 6, 29.94),
(12, '10:00:00', '11:00:00', 4, 31.96),
(13, '15:00:00', '16:00:00', 5, 74.95),
(14, '16:00:00', '17:00:00', 11, 164.89),
(15, '13:00:00', '14:00:00', 7, 48.93),
(16, '12:00:00', '13:00:00', 14, 27.86),
(17, '11:00:00', '12:00:00', 5, 69.95),
(18, '14:00:00', '15:00:00', 14, 139.86),
(19, '15:00:00', '16:00:00', 3, 47.97),
(20, '09:00:00', '10:00:00', 2, 9.98),
(21, '12:00:00', '13:00:00', 6, 47.94),
(22, '11:00:00', '12:00:00', 1, 5.99),
(23, '09:00:00', '10:00:00', 8, 119.92),
(24, '11:00:00', '12:00:00', 1, 15.99),
(25, '11:00:00', '12:00:00', 1, 13.99),
(26, '12:00:00', '13:00:00', 6, 59.94),
(27, '11:00:00', '12:00:00', 10, 59.9),
(28, '13:00:00', '14:00:00', 2, 3.98),
(29, '12:00:00', '13:00:00', 7, 104.93),
(30, '13:00:00', '14:00:00', 2, 3.98),
(31, '11:00:00', '12:00:00', 11, 120.89),
(32, '11:00:00', '12:00:00', 14, 83.86),
(33, '11:00:00', '12:00:00', 12, 131.88),
(34, '10:00:00', '11:00:00', 7, 104.93),
(35, '13:00:00', '14:00:00', 15, 179.85),
(36, '16:00:00', '17:00:00', 15, 89.85),
(37, '10:00:00', '11:00:00', 10, 119.9),
(38, '15:00:00', '16:00:00', 4, 15.96),
(39, '13:00:00', '14:00:00', 3, 47.97),
(40, '12:00:00', '13:00:00', 9, 89.91),
(41, '16:00:00', '17:00:00', 2, 1.98),
(42, '16:00:00', '17:00:00', 1, 4.99),
(43, '16:00:00', '17:00:00', 14, 181.86),
(44, '15:00:00', '16:00:00', 14, 209.86),
(45, '14:00:00', '15:00:00', 11, 10.89),
(46, '09:00:00', '10:00:00', 6, 95.94),
(47, '09:00:00', '10:00:00', 5, 39.95),
(48, '09:00:00', '10:00:00', 6, 77.94),
(49, '15:00:00', '16:00:00', 3, 41.97),
(50, '16:00:00', '17:00:00', 8, 15.92),
(51, '10:00:00', '11:00:00', 1, 12.99),
(52, '16:00:00', '17:00:00', 7, 55.93),
(53, '16:00:00', '17:00:00', 8, 23.92),
(54, '11:00:00', '12:00:00', 10, 59.9),
(55, '14:00:00', '15:00:00', 8, 87.92),
(56, '12:00:00', '13:00:00', 3, 17.97),
(57, '13:00:00', '14:00:00', 2, 19.98),
(58, '09:00:00', '10:00:00', 4, 43.96),
(59, '11:00:00', '12:00:00', 7, 27.93),
(60, '15:00:00', '16:00:00', 13, 207.87),
(61, '13:00:00', '14:00:00', 4, 63.96),
(62, '12:00:00', '13:00:00', 10, 69.9),
(63, '11:00:00', '12:00:00', 14, 195.86),
(64, '14:00:00', '15:00:00', 10, 119.9),
(65, '14:00:00', '15:00:00', 13, 64.87),
(66, '10:00:00', '11:00:00', 4, 19.96),
(67, '13:00:00', '14:00:00', 15, 74.85),
(68, '11:00:00', '12:00:00', 5, 74.95),
(69, '15:00:00', '16:00:00', 1, 13.99),
(70, '12:00:00', '13:00:00', 2, 13.98),
(71, '15:00:00', '16:00:00', 14, 69.86),
(72, '15:00:00', '16:00:00', 2, 5.98),
(73, '14:00:00', '15:00:00', 8, 23.92),
(74, '14:00:00', '15:00:00', 5, 9.95),
(75, '12:00:00', '13:00:00', 14, 139.86),
(76, '12:00:00', '13:00:00', 15, 89.85),
(77, '09:00:00', '10:00:00', 4, 19.96),
(78, '11:00:00', '12:00:00', 15, 119.85),
(79, '09:00:00', '10:00:00', 12, 167.88),
(80, '16:00:00', '17:00:00', 14, 223.86),
(81, '09:00:00', '10:00:00', 5, 24.95),
(82, '14:00:00', '15:00:00', 15, 104.85),
(83, '13:00:00', '14:00:00', 2, 3.98),
(84, '16:00:00', '17:00:00', 9, 125.91),
(85, '16:00:00', '17:00:00', 11, 120.89),
(86, '10:00:00', '11:00:00', 3, 11.97),
(87, '13:00:00', '14:00:00', 5, 39.95),
(88, '16:00:00', '17:00:00', 11, 131.89),
(89, '09:00:00', '10:00:00', 4, 55.96),
(90, '10:00:00', '11:00:00', 11, 21.89),
(91, '12:00:00', '13:00:00', 6, 47.94),
(92, '14:00:00', '15:00:00', 9, 8.91),
(93, '16:00:00', '17:00:00', 2, 15.98),
(94, '12:00:00', '13:00:00', 13, 12.87),
(95, '14:00:00', '15:00:00', 15, 239.85),
(96, '15:00:00', '16:00:00', 10, 159.9),
(97, '09:00:00', '10:00:00', 11, 54.89),
(98, '16:00:00', '17:00:00', 5, 59.95),
(99, '11:00:00', '12:00:00', 3, 8.97),
(100, '14:00:00', '15:00:00', 9, 98.91);

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
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
