-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2021 at 01:28 PM
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
-- Database: `uncover`
--

-- --------------------------------------------------------

--
-- Table structure for table `u_device`
--

CREATE TABLE `u_device` (
  `devi_id` int(11) NOT NULL,
  `device` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `u_device`
--

INSERT INTO `u_device` (`devi_id`, `device`) VALUES
(1, 'I Phone'),
(2, 'I Pad'),
(3, 'I Pod Touch');

-- --------------------------------------------------------

--
-- Table structure for table `u_model`
--

CREATE TABLE `u_model` (
  `m_id` int(11) NOT NULL,
  `model_name` varchar(225) NOT NULL,
  `device_id` int(11) NOT NULL,
  `start_varsion` varchar(225) NOT NULL,
  `end_varsion` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `u_model`
--

INSERT INTO `u_model` (`m_id`, `model_name`, `device_id`, `start_varsion`, `end_varsion`) VALUES
(2, 'iPhone 5S ', 1, '1', '27'),
(3, 'iPhone 6    ', 1, '1', '27'),
(4, 'iPhone 6 Plus ', 1, '1', '72'),
(5, 'iPhone 6s ', 1, '1', '72'),
(6, 'iPhone 6s Plus', 1, '1', '72'),
(7, 'iPhone SE (1st)', 1, '1', '72'),
(8, 'iPhone 7', 1, '1', '72'),
(9, 'iPhone 7 Plus', 1, '1', '72'),
(10, 'iPhone 8', 1, '1', '72'),
(11, 'iPhone 8 Plus', 1, '1', '72'),
(12, 'iPhone X', 1, '1', '72'),
(13, 'iPhone XS', 1, '1', '72'),
(14, 'iPhone XS Max', 1, '1', '72'),
(15, 'iPhone XR   ', 1, '1', '72'),
(16, 'iPhone 11', 1, '1', '72'),
(17, 'iPhone 11 Pro ', 1, '1', '72'),
(18, 'iPhone 11 Pro Max', 1, '1', '72'),
(19, 'iPhone SE 2nd Gen', 1, '1', '72'),
(20, 'iPhone 12 Mini ', 1, '1', '72'),
(21, 'iPhone 12', 1, '1', '72'),
(22, 'iPhone 12 Pro ', 1, '1', '72'),
(23, 'iPhone 12 Pro Max', 1, '1', '72'),
(24, 'iPad-iOS 14.3 - iOS 11', 2, '1', '72'),
(25, '2020 iPad Pro', 2, '1', '72'),
(26, '2018 iPad Pro', 2, '1', '72'),
(27, '2017 iPad Pro', 2, '1', '72'),
(28, 'iPad Air 4', 2, '1', '72'),
(29, 'iPad Air 3', 2, '1', '72'),
(30, 'iPad mini 5', 2, '1', '72'),
(31, 'iPad mini 4', 2, '1', '72'),
(32, '5th/6th/7th gen iPad', 2, '1', '72'),
(33, 'iPod Touch 6', 3, '1', '72');

-- --------------------------------------------------------

--
-- Table structure for table `u_model_tool`
--

CREATE TABLE `u_model_tool` (
  `id` int(225) NOT NULL,
  `model_id` int(225) NOT NULL,
  `tool_id` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `u_model_tool`
--

INSERT INTO `u_model_tool` (`id`, `model_id`, `tool_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 1),
(4, 5, 1),
(5, 6, 1),
(6, 7, 1),
(7, 8, 1),
(8, 9, 1),
(9, 10, 1),
(10, 11, 1),
(11, 12, 1),
(12, 13, 1),
(13, 14, 1),
(14, 15, 1),
(15, 16, 1),
(16, 17, 1),
(17, 18, 1),
(18, 19, 1),
(19, 20, 1),
(20, 21, 1),
(21, 22, 1),
(22, 23, 1),
(23, 24, 1),
(24, 25, 1),
(25, 26, 1),
(26, 27, 1),
(27, 28, 1),
(28, 29, 1),
(29, 30, 1),
(30, 31, 1),
(31, 32, 1),
(32, 33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `u_tool`
--

CREATE TABLE `u_tool` (
  `id` int(11) NOT NULL,
  `tool_name` varchar(225) NOT NULL,
  `link` varchar(225) NOT NULL,
  `alternative_link` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `u_tool`
--

INSERT INTO `u_tool` (`id`, `tool_name`, `link`, `alternative_link`, `image`) VALUES
(1, 'Uncover', 'https://silzee.com/unc0ver/', 'https://silzee.com/tweaked-apps/', 'img-uncover.png');

-- --------------------------------------------------------

--
-- Table structure for table `u_tool_varsion`
--

CREATE TABLE `u_tool_varsion` (
  `id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `varsions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `u_tool_varsion`
--

INSERT INTO `u_tool_varsion` (`id`, `tool_id`, `varsions_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 20),
(18, 1, 21),
(19, 1, 22),
(20, 1, 23),
(21, 1, 24),
(22, 1, 25),
(23, 1, 26),
(24, 1, 27),
(25, 1, 28),
(26, 1, 29),
(27, 1, 30),
(28, 1, 31),
(29, 1, 32),
(30, 1, 33),
(31, 1, 34),
(32, 1, 35),
(33, 1, 36),
(34, 1, 37),
(35, 1, 38),
(36, 1, 39),
(37, 1, 40),
(38, 1, 41),
(39, 1, 42),
(40, 1, 43),
(41, 1, 44),
(42, 1, 45),
(43, 1, 46),
(44, 1, 47),
(45, 1, 48),
(46, 1, 49),
(47, 1, 50),
(48, 1, 51),
(49, 1, 52),
(50, 1, 53),
(51, 1, 54),
(52, 1, 55),
(53, 1, 56),
(54, 1, 57),
(55, 1, 58),
(56, 1, 59),
(57, 1, 60),
(58, 1, 61),
(59, 1, 62),
(60, 1, 63),
(61, 1, 64);

-- --------------------------------------------------------

--
-- Table structure for table `u_versions`
--

CREATE TABLE `u_versions` (
  `id` int(100) NOT NULL,
  `versions_number` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `u_versions`
--

INSERT INTO `u_versions` (`id`, `versions_number`) VALUES
(1, '11.0.2'),
(2, '11.0.3'),
(3, '11.1'),
(4, '11.1.1'),
(5, '11.1.2'),
(6, '11.2'),
(7, '11.2.1'),
(8, '11.2.2'),
(9, '11.2.5'),
(10, '11.2.6'),
(11, '11.3'),
(12, '11.3.1'),
(13, '11.4'),
(14, '11.4.1'),
(15, '12.0'),
(16, '12.0.1'),
(17, '12.1'),
(18, '12.1.1'),
(19, '12.1.2'),
(20, '12.1.3'),
(21, '12.1.4'),
(22, '12.2'),
(23, '12.3'),
(24, '12.3.1'),
(25, '12.3.2'),
(26, '12.4'),
(27, '12.4.1'),
(28, '12.4.2'),
(29, '12.4.3'),
(30, '12.4.4'),
(31, '12.4.4'),
(32, '12.4.5'),
(33, '12.4.6'),
(34, '12.4.7'),
(35, '12.4.8'),
(36, '12.4.9'),
(37, '12.5'),
(38, '12.5.1'),
(39, '12.5.2'),
(40, '12.5.3'),
(41, '12.5.4'),
(42, '13.0'),
(43, '13.1'),
(44, '13.1.1'),
(45, '13.1.2'),
(46, '13.1.3'),
(47, '13.2'),
(48, '13.2.2'),
(49, '13.2.3'),
(50, '13.3'),
(51, '13.3.1'),
(52, '13.4'),
(53, '13.4.1'),
(54, '13.5'),
(55, '13.5.1'),
(56, '13.6'),
(57, '13.6.1'),
(58, '13.7'),
(59, '14.0'),
(60, '14.0.1'),
(61, '14.1'),
(62, '14.2'),
(63, '14.2.1'),
(64, '14.3'),
(65, '14.4'),
(66, '14.4.1'),
(67, '14.4.2'),
(68, '14.5'),
(69, '14.5.1'),
(70, '14.6'),
(71, '14.7'),
(72, '14.7.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `u_device`
--
ALTER TABLE `u_device`
  ADD PRIMARY KEY (`devi_id`);

--
-- Indexes for table `u_model`
--
ALTER TABLE `u_model`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `u_model_tool`
--
ALTER TABLE `u_model_tool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `u_tool`
--
ALTER TABLE `u_tool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `u_tool_varsion`
--
ALTER TABLE `u_tool_varsion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `u_versions`
--
ALTER TABLE `u_versions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `u_device`
--
ALTER TABLE `u_device`
  MODIFY `devi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `u_model`
--
ALTER TABLE `u_model`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `u_model_tool`
--
ALTER TABLE `u_model_tool`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `u_tool`
--
ALTER TABLE `u_tool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `u_tool_varsion`
--
ALTER TABLE `u_tool_varsion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `u_versions`
--
ALTER TABLE `u_versions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
