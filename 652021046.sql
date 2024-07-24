-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 05:20 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `652021046`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderdb`
--

CREATE TABLE `orderdb` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_name`, `product`, `quantity`, `order_date`, `status`) VALUES
(1, 'Alice Johnson', 'Laptop', 1, '2023-07-01', 'Shipped'),
(2, 'Bob Smith', 'Smartphone', 2, '2023-07-03', 'Delivered'),
(3, 'Charlie Brown', 'Tablet', 1, '2023-07-05', 'Pending'),
(4, 'David Wilson', 'Headphones', 3, '2023-07-07', 'Shipped'),
(5, 'Eve Davis', 'Camera', 1, '2023-07-09', 'Cancelled'),
(6, 'Frank Harris', 'Smartwatch', 2, '2023-07-11', 'Delivered'),
(7, 'Grace Miller', 'Keyboard', 4, '2023-07-13', 'Pending'),
(8, 'Alice Johnson', 'Laptop', 1, '2023-07-01', 'Shipped'),
(9, 'Bob Smith', 'Smartphone', 2, '2023-07-03', 'Delivered'),
(10, 'Charlie Brown', 'Tablet', 1, '2023-07-05', 'Pending'),
(11, 'David Wilson', 'Headphones', 3, '2023-07-07', 'Shipped'),
(12, 'Eve Davis', 'Camera', 1, '2023-07-09', 'Cancelled'),
(13, 'Frank Harris', 'Smartwatch', 2, '2023-07-11', 'Delivered'),
(14, 'Grace Miller', 'Keyboard', 4, '2023-07-13', 'Pending'),
(15, 'Alice Johnson', 'Laptop', 1, '2023-07-01', 'Shipped'),
(16, 'Bob Smith', 'Smartphone', 2, '2023-07-03', 'Delivered'),
(17, 'Charlie Brown', 'Tablet', 1, '2023-07-05', 'Pending'),
(18, 'David Wilson', 'Headphones', 3, '2023-07-07', 'Shipped'),
(19, 'Eve Davis', 'Camera', 1, '2023-07-09', 'Cancelled'),
(20, 'Frank Harris', 'Smartwatch', 2, '2023-07-11', 'Delivered'),
(21, 'Grace Miller', 'Keyboard', 4, '2023-07-13', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
