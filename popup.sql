-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2022 at 09:55 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `popup`
--

-- --------------------------------------------------------

--
-- Table structure for table `my_table`
--

CREATE TABLE `my_table` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `showtime` varchar(100) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `my_table`
--

INSERT INTO `my_table` (`id`, `title`, `description`, `status`, `showtime`, `image_url`, `active`) VALUES
(1, 'asdfasdf', 'asdfasdfasdf', 'sdfasdf', '1299446702', 'uploads/Rabbit.jpg', 0),
(2, 'asdfasdf', 'asdfasdfasdf', 'sdfasdf', '1299446702', 'uploads/Rabbit.jpg', 0),
(3, 'asdfasdf', 'asdfasdfasdf', 'sdfasdf', '1299446702', 'uploads/Rabbit.jpg', 0),
(4, 'asdfasdf', 'asdfasdfasdf', 'sdfasdf', '1299446702', 'uploads/Rabbit.jpg', 0),
(5, 'asdfasdf', 'asdfasdf', 'asdfasdfasdf', '1299446702', 'uploads/Rabbit.jpg', 0),
(6, 'Message', 'Description', 'good', '1645343553', 'uploads/Website Today.jpg', 0),
(7, 'Message', 'Description', '44', '1645343620', 'uploads/Website Today.jpg', 0),
(9, 'Message', 'Description', '44', '1645343639', 'uploads/Website Today.jpg', 0),
(8, 'Message', 'Description', '44', '1645343634', 'uploads/Website Today.jpg', 0),
(10, 'Message', 'Description', '44', '1645343643', 'uploads/Website Today.jpg', 0),
(11, 'Message', 'Description', '44', '1645343692', 'uploads/Website Today.jpg', 0),
(12, 'Message', 'Description', '44', '1645343693', 'uploads/Website Today.jpg', 0),
(13, 'Message', 'Description', '44', '1645343694', 'uploads/Website Today.jpg', 0),
(14, 'Message', 'Description', '44', '1645343694', 'uploads/Website Today.jpg', 0),
(15, 'Message', 'Description', '44', '1645343695', 'uploads/Website Today.jpg', 0),
(16, 'Message', 'Description', '44', '1645343695', 'uploads/Website Today.jpg', 0),
(17, 'Message', 'Description', '44', '1645343696', 'uploads/Website Today.jpg', 0),
(18, 'Message', 'Description', '44', '1645343696', 'uploads/Website Today.jpg', 0),
(19, 'Message', 'Description', '44', '1645343697', 'uploads/Website Today.jpg', 0),
(20, 'Message', 'Description', '44', '1645343697', 'uploads/Website Today.jpg', 0),
(21, 'Message', 'Description', '44', '1645343697', 'uploads/Website Today.jpg', 0),
(22, 'Message', 'Description', '44', '1645343698', 'uploads/Website Today.jpg', 0),
(23, 'Message', 'Description', '44', '1645343698', 'uploads/Website Today.jpg', 0),
(24, 'Message', 'Description', '44', '1645343752', 'uploads/Website Today.jpg', 0),
(25, 'Message', 'Description', '44', '1645343784', 'uploads/Website Today.jpg', 0),
(26, 'Message', 'Description', '44', '1645343797', 'uploads/Website Today.jpg', 0),
(27, 'Message', 'Description', '44', '1645343798', 'uploads/Website Today.jpg', 0),
(28, 'Message', 'Description', '44', '1645343799', 'uploads/Website Today.jpg', 0),
(29, 'Message', 'Description', '44', '1645343800', 'uploads/Website Today.jpg', 0),
(30, 'Message', 'Description', '44', '1645343800', 'uploads/Website Today.jpg', 0),
(31, 'Message', 'Description', '44', '1645343800', 'uploads/Website Today.jpg', 0),
(32, 'Message', 'Description', '44', '1645343801', 'uploads/Website Today.jpg', 0),
(33, 'Message', 'Description', '44', '1645343802', 'uploads/Website Today.jpg', 0),
(34, 'Message', 'Description', '44', '1645343802', 'uploads/Website Today.jpg', 0),
(35, 'Message', 'Description', '44', '1645343803', 'uploads/Website Today.jpg', 0),
(36, 'Message', 'Description', '44', '1645343803', 'uploads/Website Today.jpg', 0),
(37, 'Message', 'Description', '44', '1645343804', 'uploads/Website Today.jpg', 0),
(38, 'Message', 'Description', '44', '1645343804', 'uploads/Website Today.jpg', 0),
(39, 'Message', 'Description', '44', '1645343804', 'uploads/Website Today.jpg', 0),
(40, 'Message', 'Description', '44', '1645343804', 'uploads/Website Today.jpg', 0),
(41, 'Message', 'Description', '44', '1645343804', 'uploads/Website Today.jpg', 0),
(42, 'Message', 'Description', '44', '1645343804', 'uploads/Website Today.jpg', 0),
(43, 'Message', 'Description', '44', '1645343805', 'uploads/Website Today.jpg', 0),
(44, 'Message', 'Description', '44', '1645343805', 'uploads/Website Today.jpg', 0),
(45, 'Message', 'Description', '44', '1645343805', 'uploads/Website Today.jpg', 0),
(46, 'Message', 'Description', '44', '1645343805', 'uploads/Website Today.jpg', 0),
(47, 'Message', 'Description', '44', '1645343805', 'uploads/Website Today.jpg', 0),
(48, '123', '2q3423', 'qwer', '1645343971', 'uploads/Website Today.jpg', 0),
(49, 'aaaa', 'ddd', '44', '1645345478', 'uploads/Website Today.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `my_table`
--
ALTER TABLE `my_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `my_table`
--
ALTER TABLE `my_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
