-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 11, 2021 at 07:44 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `email`, `createdAt`, `updatedAt`) VALUES
(1, 'abc', 'abc@gmail.com', '0000-00-00 00:00:00', '2021-02-10 12:07:23'),
(2, 'def', 'def@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'maddd', 'ms@gmail.com', '2021-02-10 12:06:11', '2021-02-10 12:06:11'),
(5, 'product1', 'lipsome@gmail.com', '2021-02-10 13:40:21', '2021-02-10 13:40:21'),
(6, 'product1', 'lipsome@gmail.com', '2021-02-10 13:40:31', '2021-02-10 13:40:31'),
(7, 'product1', 'lipsome@gmail.com', '2021-02-10 14:35:44', '2021-02-10 14:35:44'),
(8, 'product1', 'product@gmail.com', '2021-02-10 14:36:45', '2021-02-10 14:36:45'),
(9, 'product1', 'product1@gmail.com', '2021-02-10 14:37:15', '2021-02-10 14:37:15'),
(10, 'product1', 'product2@gmail.com', '2021-02-10 14:41:21', '2021-02-10 14:41:21'),
(11, 'product1', 'product3@gmail.com', '2021-02-10 14:41:49', '2021-02-10 14:41:49'),
(12, 'product1', 'product4@gmail.com', '2021-02-10 14:41:55', '2021-02-10 14:41:55'),
(13, 'product1', 'madhu5@gmail.com', '2021-02-10 14:42:27', '2021-02-10 14:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `test_level` enum('1','2','3') DEFAULT NULL,
  `test_score` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `candidate_id`, `test_level`, `test_score`, `createdAt`, `updatedAt`) VALUES
(1, 1, '1', 5, '2021-02-10 13:18:34', '2021-02-10 13:18:34'),
(2, 1, '2', 2, '2021-02-10 13:20:15', '2021-02-10 13:20:15'),
(3, 1, '3', 6, '2021-02-10 13:20:17', '2021-02-10 13:20:17'),
(4, 2, '1', 5, '2021-02-10 13:18:34', '2021-02-10 13:18:34'),
(5, 2, '2', 6, '2021-02-10 13:20:17', '2021-02-10 13:20:17'),
(6, 2, '3', 7, '2021-02-10 13:20:17', '2021-02-10 13:20:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
