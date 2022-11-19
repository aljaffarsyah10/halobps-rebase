-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2022 at 11:37 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `halobps`
--

-- --------------------------------------------------------

--
-- Table structure for table `glpi_groups_users`
--

DROP TABLE IF EXISTS `glpi_groups_users`;
CREATE TABLE `glpi_groups_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `groups_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `is_manager` tinyint(4) NOT NULL DEFAULT 0,
  `is_userdelegate` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `glpi_groups_users`
--

INSERT INTO `glpi_groups_users` (`id`, `users_id`, `groups_id`, `is_dynamic`, `is_manager`, `is_userdelegate`) VALUES
(1, 7, 6, 0, 0, 0),
(3, 10, 6, 0, 0, 0),
(4, 11, 3, 0, 0, 0),
(5, 12, 3, 0, 0, 0),
(6, 13, 4, 0, 0, 0),
(7, 14, 4, 0, 0, 0),
(8, 15, 5, 0, 0, 0),
(9, 16, 5, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `glpi_groups_users`
--
ALTER TABLE `glpi_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicity` (`users_id`,`groups_id`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `is_dynamic` (`is_dynamic`),
  ADD KEY `is_manager` (`is_manager`),
  ADD KEY `is_userdelegate` (`is_userdelegate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `glpi_groups_users`
--
ALTER TABLE `glpi_groups_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
