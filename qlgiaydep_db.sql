-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2021 at 07:48 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlgiaydep_db`
-- CREAT DATABASE qlgiaydep_db
--

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_tb`
--

CREATE TABLE `sanpham_tb` (
  `STT` int(5) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Amount` int(11) NOT NULL,
  `Price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanpham_tb`
--

INSERT INTO `sanpham_tb` (`STT`, `Name`, `Image`, `Status`, `Amount`, `Price`) VALUES
(1, 'Nike', 'Nike.jpeg', 'Are Coming', 150, '700,000 VND'),
(2, 'Adidas', 'Adidas.jpeg', 'Are Coming', 145, '1,500,000 VND'),
(3, 'Vans', 'Vans.jpeg', 'Stocking', 2000, '500,000 VND'),
(4, 'Converse', 'Converse.jpeg', 'Sold Out', 0, '3,500,000 VND');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `firstname`, `lastname`, `email`, `phone`) VALUES
('trung', '123', 'ab', 'cd', 'trung@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sanpham_tb`
--
ALTER TABLE `sanpham_tb`
  ADD PRIMARY KEY (`STT`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sanpham_tb`
--
ALTER TABLE `sanpham_tb`
  MODIFY `STT` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
