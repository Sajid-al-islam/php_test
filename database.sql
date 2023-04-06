-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2023 at 07:01 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart-php`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(6) UNSIGNED NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_address` varchar(100) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `product` varchar(50) NOT NULL,
  `quantity` int(6) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tax_status` tinyint(1) DEFAULT NULL,
  `total_cost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `customer_address`, `customer_phone`, `product`, `quantity`, `price`, `tax_status`, `total_cost`) VALUES
(1, 'new name', 'safasf', '01234567890', 'bananas', 5, '450.00', 1, '2430.00'),
(2, 'new name', 'safasf', '01234567890', 'bananas', 5, '450.00', 0, '2250.00'),
(3, 'new order', 'safasf', '01234567890', 'bananas', 5, '500.00', 1, '2700.00'),
(4, 'new order 2', 'safasf', '01234567890', 'apples', 5, '500.00', 0, '2500.00'),
(5, 'new name', 'mirpur 1', '01234567890', 'oranges', 5, '500.00', 0, '2500.00'),
(6, 'new order 23', 'mirpur 1', '01234567890', 'oranges', 5, '55.00', 1, '297.00'),
(7, 'new order 23', 'mirpur 2', '01234567890', 'apples', 5, '545.00', 1, '2943.00'),
(8, 'new cart order', 'chittagong', '01234567890', 'oranges', 5, '50.00', 1, '270.00'),
(9, 'new cart order', 'chittagong', '01234567890', 'oranges', 5, '50.00', 1, '270.00'),
(10, 'sajidul islam', 'chittagong', '01234567890', 'oranges', 5, '500.00', 1, '2700.00'),
(11, 'sajidul islam', 'chittagong', '01234567890', 'oranges', 5, '500.00', 1, '2700.00'),
(12, 'sajidul islam', 'chittagong', '01234567890', 'oranges', 5, '500.00', 1, '2700.00'),
(13, 'new cart order', 'chittagong', '01234567890', 'oranges', 5, '50.00', 1, '270.00'),
(14, 'new cart order', 'chittagong', '01234567890', 'apples', 5, '500.00', 0, '2500.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
