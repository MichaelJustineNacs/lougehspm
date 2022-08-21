-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 04:51 PM
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
-- Database: `lougehspm`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) NOT NULL,
  `customer_firstname` text DEFAULT NULL,
  `customer_lastname` text DEFAULT NULL,
  `customer_mi` varchar(2) DEFAULT NULL,
  `customer_address` text DEFAULT NULL,
  `customer_contact_num` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_firstname`, `customer_lastname`, `customer_mi`, `customer_address`, `customer_contact_num`) VALUES
(2, 'Michael', 'Nacorda', 'L', 'PMCO VIllage 1 purok hechanova poblacion', '09097389349');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_trans`
--

CREATE TABLE `delivery_trans` (
  `dtransaction_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_time` text DEFAULT NULL,
  `supplier_id` varchar(20) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost_per_unit` float DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `barcode` varchar(30) NOT NULL,
  `product_desc` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost_per_unit` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`barcode`, `product_desc`, `quantity`, `cost_per_unit`) VALUES
('852', 'sand', 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `newtransaction`
--

CREATE TABLE `newtransaction` (
  `newtransaction_id` bigint(20) UNSIGNED NOT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost_per_unit` float DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newtransaction`
--

INSERT INTO `newtransaction` (`newtransaction_id`, `barcode`, `description`, `quantity`, `cost_per_unit`, `total`) VALUES
(2, '123', 'paper', 12, 10, 120),
(3, '123', 'asdasd', 123, 21, 2583),
(4, '123', 'asdasd', 123, 21, 2583);

-- --------------------------------------------------------

--
-- Table structure for table `sales_trans`
--

CREATE TABLE `sales_trans` (
  `stransaction_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_time` text DEFAULT NULL,
  `customer_id` varchar(20) DEFAULT NULL,
  `barcode` varchar(30) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost_per_unit` float DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` bigint(20) NOT NULL,
  `company_name` text DEFAULT NULL,
  `company_contact_num` varchar(20) DEFAULT NULL,
  `company_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `company_name`, `company_contact_num`, `company_address`) VALUES
(2, 'Biotech', '09097389349', 'Veranza');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `delivery_trans`
--
ALTER TABLE `delivery_trans`
  ADD PRIMARY KEY (`dtransaction_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`barcode`);

--
-- Indexes for table `newtransaction`
--
ALTER TABLE `newtransaction`
  ADD PRIMARY KEY (`newtransaction_id`);

--
-- Indexes for table `sales_trans`
--
ALTER TABLE `sales_trans`
  ADD PRIMARY KEY (`stransaction_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_trans`
--
ALTER TABLE `delivery_trans`
  MODIFY `dtransaction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newtransaction`
--
ALTER TABLE `newtransaction`
  MODIFY `newtransaction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales_trans`
--
ALTER TABLE `sales_trans`
  MODIFY `stransaction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
