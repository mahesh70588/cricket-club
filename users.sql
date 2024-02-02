-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2024 at 07:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'bhavesh', 'bhavesh@gmail.com', '$2y$10$XNC6QXjbr5nWa2j6N3JKGuY4qSRfYPDgZk00YVYGzUQoLU4nKx6mW'),
(8, 'b', 'bhoir@gmail.com', '$2y$10$ZH3X/SCpbdkuTXH.8Tm1KeV3TA5sX66EJE/QeNCt8PS3TWFHluyCy'),
(9, 'bhushan', 'bhushan@gmail.com', '$2y$10$lcPk5ghxvqEAvPS4lFYA6OgPcLrp8L7SSGvf.LelNbByl8EiMfRfe'),
(10, 'a', 'a@gmail.com', '$2y$10$XPsa4ekPOv2/iQEkSKZGeu3uWd8nQuhb48d.An6DRcTErJ.VV4Rg.'),
(11, 'bhavesh55', 'bhoirbhavesh2003@gmail.com', '$2y$10$Zg3OLdnSnRF4OqEhz.H.sOKousEVM2nd0cneYJC.ABuPmw65iVGRu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
