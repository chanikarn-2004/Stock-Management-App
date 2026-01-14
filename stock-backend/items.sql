-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 14, 2026 at 03:41 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `category` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `production_date` date NOT NULL,
  `expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `quantity`, `category`, `location`, `production_date`, `expiry_date`) VALUES
(2, 'ไข่ไก่(แผง)', '5.00', 'วัตถุดิบ', 'ตู้เย็น', '2025-10-30', '2025-09-20'),
(4, 'ไก่', '1.00', 'เนื้อสัตว์', 'ตู้เย็น', '2025-11-01', '2025-11-06'),
(5, 'ซีอิ๊ว', '1.00', 'เครื่องปรุง', 'ในครัว', '2025-10-31', '2026-01-24'),
(6, 'ลูกอม', '0.20', 'ขนม', 'ตู้เย็น', '2025-07-01', '2024-06-18'),
(7, 'กล้วย', '1.00', 'ผลไม้', 'ในครัว', '2025-10-30', '2025-11-07'),
(8, 'ชีสเค้ก', '2.00', 'ขนม', 'ตู้เย็น', '2025-11-01', '2025-11-06'),
(10, 'องุ่น', '8.00', 'ผลไม้', 'ตู้เย็น', '2025-10-30', '2025-10-31'),
(11, 'เนื้อวัว', '3.00', 'เนื้อสัตว์', 'ตู้เย็น', '2025-11-01', '2025-11-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
