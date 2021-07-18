-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2021 at 12:52 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(9) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `curr_bal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `curr_bal`) VALUES
(1, 'Vishesh', 'vk@gmail.com', 5000000),
(2, 'Steve', 'st@gmail.com', 400000),
(3, 'Chris', 'ca@gmail.com', 400000),
(4, 'Parth', 'pb@gmail.com', 400000),
(5, 'Captain', 'sir@gmail.com', 30000),
(6, 'Leonard', 'lh@gmail.com', 40000),
(7, 'Singh', 'singh@gmail.com', 50000),
(8, 'Penny', 'ps@gmail.com', 1050),
(9, 'Ram', 'rg@gmail.com', 30000),
(10, 'Yash', 'yash@gmail.com', 50000),
(12, 'Sarthak', 'sk@gmail.com', 410000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `sname` varchar(50) NOT NULL,
  `rname` varchar(50) NOT NULL,
  `amount` int(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`sname`, `rname`, `amount`, `time`) VALUES
('Parth', 'penny', 500, '2021-07-18 22:44:06'),
('Leonard', 'sarthak', 10000, '2021-07-18 22:44:44'),
('Vishesh', 'parth', 1000, '2021-07-18 22:49:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`time`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
