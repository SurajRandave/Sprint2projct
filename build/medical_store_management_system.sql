-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 08:36 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical_store_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_name` varchar(35) NOT NULL,
  `country` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `contact_no` varchar(35) NOT NULL,
  `address` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_name`, `country`, `email`, `contact_no`, `address`) VALUES
('Serum', 'India', 'serum@gmail.com', '0987654345', 'At Pune'),
('Cipla', 'India', 'ciplapharma32@gmail.com', '8317281293', 'At. Mumbai'),
('Zydus Sciences', 'India', 'zydus.sciences@gmail.com', '1234567890', 'At. Hedrabad'),
('Aalati Udyog', 'Odisa', 'aalati.udyog32@gmail.com', '9876543219', 'At. Odisa'),
('Pfizer', 'America', 'pfizer.usa@gmail.com', '856456647688', 'At. near to google company'),
('Sunil Pharma', 'India', 'pharma.sunil@gmail.com', '68646545657', 'At. Akola');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_name` varchar(35) NOT NULL,
  `company_name` varchar(35) NOT NULL,
  `product_category` varchar(35) NOT NULL,
  `quantity` varchar(35) NOT NULL,
  `price_per_unit` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_name`, `company_name`, `product_category`, `quantity`, `price_per_unit`) VALUES
('Aspirin', 'Serum', 'Powder', '1000', '50'),
('Amlodipine', 'Cipla', 'Tablet', '600', '30'),
('Lorazepam', 'Aalati Udyog', 'Liquid', '400', '120'),
('Ibuprofin', 'Pfizer', 'Tablet', '400', '50'),
('Paracitomol', 'Sunil Pharma', 'Tablet', '290', '5');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `category` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`category`) VALUES
('Powder'),
('Tablet'),
('Liquid');

-- --------------------------------------------------------

--
-- Table structure for table `sales_record`
--

CREATE TABLE `sales_record` (
  `sales_id` int(35) NOT NULL,
  `product_name` varchar(35) NOT NULL,
  `company_name` varchar(35) NOT NULL,
  `date_of_sale` varchar(35) NOT NULL,
  `quantity` varchar(35) NOT NULL,
  `amount` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_record`
--

INSERT INTO `sales_record` (`sales_id`, `product_name`, `company_name`, `date_of_sale`, `quantity`, `amount`) VALUES
(1, 'Aspirin', 'Serum', '2022-05-23', '7', '350.0'),
(2, 'Lorazepam', 'Aalati Udyog', '2022-05-24', '34', '4080.0'),
(3, 'Ibuprofin', 'Pfizer', '2022-05-24', '67', '3350.0'),
(4, 'Paracitomol', 'Sunil Pharma', '2022-05-24', '23', '115.0'),
(5, 'Aspirin', 'Serum', '2022-05-24', '45', '2250.0'),
(6, 'Aspirin', 'Serum', '2022-05-24', '89', '4450.0'),
(7, 'Paracitomol', 'Sunil Pharma', '2022-05-26', '2', '10.0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fullname` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `address` varchar(25) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `user_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fullname`, `email`, `contact_no`, `address`, `username`, `password`, `user_type`) VALUES
('Aniket M. Ghuge', 'ghugeaniket32@g', '8317281293', 'At. Pune', 'Aniket', 'Ghuge', 'Admin'),
('Sunil Gophane', 'sunil@gmail.com', '8830515713', 'At. mohal', 'Sunil', 'Gophane', 'User'),
('Adarsh Chate', 'chateadarsh01@gmail.com', '7097057777', 'AT. Kale pathari', 'Adarsh', 'Chate', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sales_record`
--
ALTER TABLE `sales_record`
  ADD PRIMARY KEY (`sales_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales_record`
--
ALTER TABLE `sales_record`
  MODIFY `sales_id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
