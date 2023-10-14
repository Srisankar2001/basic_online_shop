-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:4306
-- Generation Time: Oct 06, 2023 at 01:11 PM
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
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `phone`, `email`, `password`) VALUES
(1, 'Sri', '0770712417', 'admin1@gmail.com', '$2y$10$1NKe1B4XfxRS/iD9dQKtm.yQMDixqNFg8lVAXWWuDYRpuJjG5aA0.'),
(2, 'Sankar', '0760712416', 'admin2@gmail.com', '$2y$10$BgsQ0evrORw53Y7E5MKMyOwbY1twCF2RNcZDt0Z4eqPgUGkZ1sKkG'),
(3, 'Akim', '0770712418', 'admin3@gmail.com', '$2y$10$3I4IpJsqSig2T630r3dMie182w1VMg9z.EuuL7KnbAFIdwQpzKS2O'),
(4, 'Atheef', '07625555', 'admin4@gmail.com', '$2y$10$2TkNsVPEm5uavHQL1H1sAux.qMknjY3zbu3ay.tZ3/A6h4G8kNbFK'),
(5, 'Yathv', '0762555850', 'admin5@gmail.com', '$2y$10$SoTCicsWaibCErzfbxm6RORDM3ohC3Ou40RoG5WG2GHuAZQrip.1S');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `veg` tinyint(1) NOT NULL,
  `price` float NOT NULL,
  `ingredient` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `veg`, `price`, `ingredient`) VALUES
(1, 'Veg Fried Rice', 1, 400, 'Rice,Vegetable'),
(2, 'Egg Fried Rice', 0, 500, 'Rice,Vegetable,Egg'),
(3, 'Chicken Fried Rice', 0, 700, 'Rice,Vegetable,Egg,Chicken'),
(4, 'Seafood Fried Rice', 0, 600, 'Rice,Vegetable,Seafood'),
(5, 'Mixed Fried Rice', 0, 900, 'Rice,Vegetable,Egg,Chicken,Seafood'),
(6, 'Veg Kothu', 1, 450, 'Kothu,Vegetable'),
(7, 'Egg Kothu', 0, 550, 'Kothu,Vegetable,Egg'),
(8, 'Chicken Kothu', 0, 650, 'Kothu,Vegetable,Egg,Chicken'),
(9, 'Seafood Kothu', 0, 650, 'Kothu,Vegetable,Seafood'),
(10, 'Mixed Kothu', 0, 1200, 'Kothu,Vegetable,Egg,Chicken,Seafood');

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`id`, `name`, `phone`, `email`, `password`) VALUES
(1, 'Vijay', '0213216361', 'sadmin1@gmail.com', '$2y$10$bR.7mr.ZjuilKp4rbe1EZOP9807m5H4KpazktnGcfaoVyMR5hyRcS'),
(2, 'Ajith', '0213216360', 'sadmin2@gmail.com', '$2y$10$nURkoxRUZgNwh6TGKklQc.K/hxwKUQinKapzZTcK3sQ08sumfUOtG'),
(3, 'Kamal', '0113216364', 'sadmin3@gmail.com', '$2y$10$Q8gRg/JZoN9sMTvuDG1L6epXIJ5NOJy9jMKvqdAmyDIB/x9JfyrsO');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `email`, `password`) VALUES
(1, 'Srisankar', '0762555851', 'srisankar2001@gmail.com', '$2y$10$ab6e1oUFBu6A5PVgqSpCBuFsAHAlp/noUEqoDQ2IzEINKce9v7czS'),
(3, 'Sam', '0770712418', 'sam@gmail.com', '$2y$10$LVqzY2sadmOhrpPYXOkvDueAOGz.J3o7PxIX8sKq2Yc20PpNw.QxW'),
(4, 'Atheef', '0761234567', 'atheef2001@gmail.com', '$2y$10$j30xc3/FmM/tzwyl3tNoGutbvAlWII8n4pjmbDPToNSKvQC4LHMP2'),
(5, 'Partheeban', '0770712417', 'parthee@gmail.com', '$2y$10$YZy/q.1dIsSVdgn4m2KvsOpMrmBwUIK284ZXe2f605r59c0/wu6TG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING HASH;

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
