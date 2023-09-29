-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Nov 2022 pada 05.11
-- Versi server: 10.9.3-MariaDB-log
-- Versi PHP: 8.0.12

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
-- Struktur dari tabel `glpi_groups`
--

CREATE TABLE `glpi_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `entities_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_field` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ldap_group_dn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `groups_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `completename` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `ancestors_cache` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sons_cache` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_requester` tinyint(4) NOT NULL DEFAULT 1,
  `is_watcher` tinyint(4) NOT NULL DEFAULT 1,
  `is_assign` tinyint(4) NOT NULL DEFAULT 1,
  `is_task` tinyint(4) NOT NULL DEFAULT 1,
  `is_notify` tinyint(4) NOT NULL DEFAULT 1,
  `is_itemgroup` tinyint(4) NOT NULL DEFAULT 1,
  `is_usergroup` tinyint(4) NOT NULL DEFAULT 1,
  `is_manager` tinyint(4) NOT NULL DEFAULT 1,
  `date_creation` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `glpi_groups`
--

INSERT INTO `glpi_groups` (`id`, `entities_id`, `is_recursive`, `name`, `comment`, `ldap_field`, `ldap_value`, `ldap_group_dn`, `date_mod`, `groups_id`, `completename`, `level`, `ancestors_cache`, `sons_cache`, `is_requester`, `is_watcher`, `is_assign`, `is_task`, `is_notify`, `is_itemgroup`, `is_usergroup`, `is_manager`, `date_creation`) VALUES
(1, 0, 0, 'Operator', '', NULL, NULL, NULL, '2022-11-13 21:49:20', 0, 'Operator', 1, '[]', '{\"1\":1}', 1, 1, 1, 1, 1, 1, 1, 1, '2022-11-13 21:49:20'),
(2, 0, 0, 'Tim Teknis', '', NULL, NULL, NULL, '2022-11-13 21:57:58', 0, 'Tim Teknis', 1, '[]', NULL, 0, 0, 1, 1, 1, 1, 1, 1, '2022-11-13 21:57:58'),
(3, 0, 0, 'IPD', '', NULL, NULL, NULL, '2022-11-13 21:58:18', 2, 'Tim Teknis > IPD', 2, '{\"2\":2}', NULL, 0, 0, 1, 1, 1, 1, 1, 1, '2022-11-13 21:58:18'),
(4, 0, 0, 'JKD', '', NULL, NULL, NULL, '2022-11-13 21:58:41', 2, 'Tim Teknis > JKD', 2, '{\"2\":2}', NULL, 0, 0, 1, 1, 1, 1, 1, 1, '2022-11-13 21:58:41'),
(5, 0, 0, 'PTI', '', NULL, NULL, NULL, '2022-11-13 21:59:03', 2, 'Tim Teknis > PTI', 2, '{\"2\":2}', NULL, 0, 0, 1, 1, 1, 1, 1, 1, '2022-11-13 21:59:03'),
(6, 0, 0, 'InSis', '', NULL, NULL, NULL, '2022-11-13 21:59:14', 2, 'Tim Teknis > InSis', 2, '{\"2\":2}', NULL, 0, 0, 1, 1, 1, 1, 1, 1, '2022-11-13 21:59:14'),
(7, 0, 0, 'Admin', '', NULL, NULL, NULL, '2022-11-13 22:00:40', 0, 'Admin', 1, '[]', NULL, 1, 1, 1, 1, 1, 1, 1, 1, '2022-11-13 22:00:40'),
(8, 0, 0, 'Knowledge Base Manager', '', NULL, NULL, NULL, '2022-11-13 22:01:06', 0, 'Knowledge Base Manager', 1, '[]', '{\"8\":8}', 1, 1, 1, 1, 1, 1, 1, 1, '2022-11-13 22:01:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `glpi_groups`
--
ALTER TABLE `glpi_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `ldap_field` (`ldap_field`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `is_recursive` (`is_recursive`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `ldap_value` (`ldap_value`(200)),
  ADD KEY `ldap_group_dn` (`ldap_group_dn`(200)),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `is_requester` (`is_requester`),
  ADD KEY `is_watcher` (`is_watcher`),
  ADD KEY `is_assign` (`is_assign`),
  ADD KEY `is_notify` (`is_notify`),
  ADD KEY `is_itemgroup` (`is_itemgroup`),
  ADD KEY `is_usergroup` (`is_usergroup`),
  ADD KEY `is_manager` (`is_manager`),
  ADD KEY `date_creation` (`date_creation`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `glpi_groups`
--
ALTER TABLE `glpi_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
