-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 27, 2016 at 11:46 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodejsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_logs`
--

CREATE TABLE `chat_logs` (
  `id` int(11) NOT NULL,
  `steamid64` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(2000) COLLATE utf8mb4_bin NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `chat_logs`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `steamid64` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `btc_address` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `transactions_buying` (
  `tid` int(11) NOT NULL,
  `steamid64` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `tradeid` int(100) NOT NULL,
  `customer_paid` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `btc_sent` varchar(250) COLLATE utf8mb4_bin NOT NULL,
  `keys_amount` int(11) NOT NULL,
  `btc_address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `btc_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `btc_amount` decimal(50,15) NOT NULL,
  `btc_amount_usd` decimal(50,15) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;


CREATE TABLE `transactions_selling` (
  `tid` int(11) NOT NULL,
  `steamid64` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `tradeid` int(100) NOT NULL,
  `we_paid` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `keys_amount` int(11) NOT NULL,
  `btc_address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `btc_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `btc_amount` decimal(50,15) NOT NULL,
  `btc_amount_usd` decimal(50,15) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
--
-- Indexes for table `chat_logs`
--
ALTER TABLE `chat_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions_buying`
--
ALTER TABLE `transactions_buying`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `transactions_selling`
--
ALTER TABLE `transactions_selling`
  ADD PRIMARY KEY (`tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_logs`
--
ALTER TABLE `chat_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `transactions_buying`
--
ALTER TABLE `transactions_buying`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `transactions_selling`
--
ALTER TABLE `transactions_selling`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
