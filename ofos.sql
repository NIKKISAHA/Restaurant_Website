-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 11:16 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ofos`
--

-- --------------------------------------------------------

--
-- Table structure for table `a`
--

CREATE TABLE `a` (
  `id` int(11) NOT NULL,
  `un` varchar(50) DEFAULT NULL,
  `ps` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a`
--

INSERT INTO `a` (`id`, `un`, `ps`) VALUES
(1, 'a', 'b'),
(2, 'c', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `un` varchar(50) DEFAULT NULL,
  `ps` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`un`, `ps`) VALUES
('admin', 'a123');

-- --------------------------------------------------------

--
-- Table structure for table `order_booking`
--

CREATE TABLE `order_booking` (
  `id` int(11) NOT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `cname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mno` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_booking`
--

INSERT INTO `order_booking` (`id`, `pname`, `price`, `cname`, `email`, `mno`, `address`, `city`, `type`, `user_id`, `status`) VALUES
(69, 'Bargar', '80.00', 'Rahul', 'debnathrahul052@gmail.com', '7908861937', 'Barasat banamalipur,', 'barasat', 'ofline', 7, 'Cancel'),
(70, 'Bargar', '80.00', 'Rahul', 'debnathrahul052@gmail.com', '7908861937', 'Barasat banamalipur,', 'barasat', 'ofline', 7, 'Cancel'),
(71, 'pizza', '100', 'rohit', 'r@gmail.com', '7908861937', 'Barasat ', 'barasat', 'ofline', 8, 'Delivered'),
(72, 'pizza', '100', 'Rahul Debnath', 'debnathrahul052@gmail.com', '7908861937', 'Habra', 'Habra', 'ofline', 10, 'ordered'),
(73, 'pizza', '100', 'Sandeep Agarwal', 'tagarwal1973@gmail.com', '7029754610', 'Laketown', 'Kolkata', 'ofline', 11, 'Delivered'),
(74, 'pizza', '100', 'Sandeep Agarwal', 'sandeep01@gmail.com', '7029754610', 'Bangalore', 'hfiofh', 'ofline', 15, 'Cancel'),
(81, 'biryani', '200', 'soumi koley', 'abc@gmail.com', '7029754610', 'Kolkata', 'kolkata', 'ofline', 32, 'ordered'),
(82, 'Veg Korma', '120.00', 'soumi koley', 'abc@gmail.com', '7029754610', 'Kolkata', 'kolkata', 'ofline', 32, 'ordered'),
(83, 'Mushroom Masala', '150.00', 'soumi koley', 'abc@gmail.com', '7029754610', 'Kolkata', 'kolkata', 'ofline', 32, 'ordered');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `img` varchar(100) NOT NULL,
  `type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `img`, `type`) VALUES
(1, 'pizza', '100', 'image/WhatsApp Image 2021-05-23 at 11.39.04 AM (1).jpeg', 'veg'),
(2, 'Mushroom Masala', '150.00', 'image/WhatsApp Image 2021-05-23 at 11.39.04 AM.jpeg', 'Non Veg'),
(17, 'Coffe', '80.00', 'image/WhatsApp Image 2021-05-23 at 11.39.03 AM (1).jpeg', 'Drinks'),
(19, 'Bamboo Chicken', '200.00', 'image/WhatsApp Image 2021-05-23 at 11.39.02 AM (1).jpeg', 'Non Veg'),
(20, 'Veg Korma', '120.00', 'image/WhatsApp Image 2021-05-23 at 11.39.02 AM.jpeg', 'Veg'),
(21, 'xyz', '100', 'image/download.jpg', 'nonveg'),
(22, 'mno', '150', 'image/images2.jpg', 'nonveg'),
(23, 'biryani', '200', 'image/cutlery.png', 'nonveg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(15) NOT NULL,
  `name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `email` varchar(30) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(50) CHARACTER SET latin1 NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `address` varchar(20) CHARACTER SET latin1 NOT NULL,
  `city` varchar(10) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `phone`, `password`, `address`, `city`) VALUES
(9, 'abc', 'abc@gmail.com', '1234567892', '2e407ef923383086d88e003626cfde63', 'hbara', 'habra'),
(10, 'Rahul Debnath', 'debnathrahul052@gmail.com', '7908861937', '2e407ef923383086d88e003626cfde63', 'Habra', 'Habra'),
(11, 'Sandeep Agarwal', 'tagarwal1973@gmail.com', '7029754610', '74bbdcfb6bd071e330eacee336f95c5f', 'Laketown', 'Kolkata'),
(12, 'Sameer Sharma', 'tagarwal1973@gmail.com', '7029754610', '74bbdcfb6bd071e330eacee336f95c5f', 'Laketown', 'Kolkata'),
(13, 'Sameer Sharma', 'tagarwal1973@gmail.com', '7029754610', '74bbdcfb6bd071e330eacee336f95c5f', 'Kolkata', 'Kolkata'),
(14, 'Aryan Malhotra', 'tagarwal1973@gmail.com', '7029754610', '74bbdcfb6bd071e330eacee336f95c5f', 'Kolkata', 'Kolkata'),
(15, 'Sandeep Agarwal', 'sandeep01@gmail.com', '7029754610', 'fcea920f7412b5da7be0cf42b8c93759', 'Bangalore', 'hfiofh'),
(16, 'Ritika Sharma', 'ritika01@gmail.com', '7029754610', '4dd5c6f552176b788a57a7c518647020', 'Kolkata', 'Kolkata'),
(17, 'Vishal Khanna', 'vishal01@gmail.com', '7908648045', '08a14778f6bf6af43ff94b41a762ebd1', 'Laketown', 'Kolkata'),
(18, 'Vishal Kapoor', 'vishal01@gmail.com', '7029754610', '08a14778f6bf6af43ff94b41a762ebd1', 'Kolkata', 'Kolkata'),
(19, 'Sandeep Agarwal', 'tagarwal1973@gmail.com', '7029754610', 'a38f38a86f89537cdc9f33ddcccac7d4', 'saltlake', 'Kolkata'),
(20, 'Sandeep Agarwal', 'tagarwal1973@gmail.com', '7029754610', 'a38f38a86f89537cdc9f33ddcccac7d4', 'Mumbai', 'hfiofh'),
(21, 'Sandeep Agarwal', 'tagarwal1973@gmail.com', '7029754610', 'a38f38a86f89537cdc9f33ddcccac7d4', 'Mumbai', 'hfiofh'),
(22, 'Sandeep Agarwal', 'tagarwal1973@gmail.com', '7029754610', 'a38f38a86f89537cdc9f33ddcccac7d4', 'Mumbai', 'hfiofh'),
(23, 'Sandeep Agarwal', 'tagarwal1973@gmail.com', '7029754610', 'a38f38a86f89537cdc9f33ddcccac7d4', 'Mumbai', 'hfiofh'),
(24, 'Sanjay Gupta', 'sanjay01@gmail.com', '7029754610', '822050d9ae3c47f54bee71b85fce1487', 'Bangalore', 'Kolkata'),
(25, 'Sanjay Gupta', 'sanjay01@gmail.com', '7029754610', '822050d9ae3c47f54bee71b85fce1487', 'Bangalore', 'Kolkata'),
(26, 'admin', 'admin@gmail.com', '7029754610', '3929262652cb6594a5c26c97a904a292', 'python street java l', 'kolkata'),
(27, 'Sameer Malhotra', 'sameer01@gmail.com', '7908648045', 'da629fea1bfe0b9a79d0aa1097ad59c3', 'Kolkata', 'kolkata'),
(28, 'Sameer Sharma', 'agarwal.sandeep.1520@gmail.com', '7908648045', 'da629fea1bfe0b9a79d0aa1097ad59c3', 'Mumbai', 'kolkata'),
(29, 'Sameer Sharma', 'agarwal.sandeep.1520@gmail.com', '7908648045', 'da629fea1bfe0b9a79d0aa1097ad59c3', 'Mumbai', 'kolkata'),
(30, 'Gopal Pramanik', 'gopalpramanik.ejobindia@gmail.', '7029754610', '989ef05fe5937c6bf1540cc63d8649a2', 'Bangalore', 'kolkata'),
(31, 'Gopal Pramanik', 'gopalpramanik.ejobindia@gmail.', '7029754610', '989ef05fe5937c6bf1540cc63d8649a2', 'Bangalore', 'kolkata'),
(32, 'soumi koley', 'abc@gmail.com', '7029754610', '687f71edf04c4da2c7fc46db9f133621', 'Kolkata', 'kolkata');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a`
--
ALTER TABLE `a`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_booking`
--
ALTER TABLE `order_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a`
--
ALTER TABLE `a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_booking`
--
ALTER TABLE `order_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
