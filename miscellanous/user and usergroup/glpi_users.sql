-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2022 at 11:38 AM
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
-- Table structure for table `glpi_users`
--

DROP TABLE IF EXISTS `glpi_users`;
CREATE TABLE `glpi_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_last_update` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locations_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'see define.php CFG_GLPI[language] array',
  `use_mode` int(11) NOT NULL DEFAULT 0,
  `list_limit` int(11) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auths_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `authtype` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_sync` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `profiles_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `entities_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `usertitles_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `usercategories_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `date_format` int(11) DEFAULT NULL,
  `number_format` int(11) DEFAULT NULL,
  `names_format` int(11) DEFAULT NULL,
  `csv_delimiter` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ids_visible` tinyint(4) DEFAULT NULL,
  `use_flat_dropdowntree` tinyint(4) DEFAULT NULL,
  `show_jobs_at_login` tinyint(4) DEFAULT NULL,
  `priority_1` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority_2` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority_3` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority_4` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority_5` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority_6` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followup_private` tinyint(4) DEFAULT NULL,
  `task_private` tinyint(4) DEFAULT NULL,
  `default_requesttypes_id` int(10) UNSIGNED DEFAULT NULL,
  `password_forget_token` char(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_forget_token_date` timestamp NULL DEFAULT NULL,
  `user_dn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_count_on_tabs` tinyint(4) DEFAULT NULL,
  `refresh_views` int(11) DEFAULT NULL,
  `set_default_tech` tinyint(4) DEFAULT NULL,
  `personal_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_token_date` timestamp NULL DEFAULT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token_date` timestamp NULL DEFAULT NULL,
  `cookie_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_token_date` timestamp NULL DEFAULT NULL,
  `display_count_on_home` int(11) DEFAULT NULL,
  `notification_to_myself` tinyint(4) DEFAULT NULL,
  `duedateok_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duedatewarning_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duedatecritical_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duedatewarning_less` int(11) DEFAULT NULL,
  `duedatecritical_less` int(11) DEFAULT NULL,
  `duedatewarning_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duedatecritical_unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted_ldap` tinyint(4) NOT NULL DEFAULT 0,
  `pdffont` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `begin_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `keep_devices_when_purging_item` tinyint(4) DEFAULT NULL,
  `privatebookmarkorder` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backcreated` tinyint(4) DEFAULT NULL,
  `task_state` int(11) DEFAULT NULL,
  `palette` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_layout` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fold_menu` tinyint(4) DEFAULT NULL,
  `fold_search` tinyint(4) DEFAULT NULL,
  `savedsearches_pinned` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeline_order` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itil_layout` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `richtext_layout` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `set_default_requester` tinyint(4) DEFAULT NULL,
  `lock_autolock_mode` tinyint(4) DEFAULT NULL,
  `lock_directunlock_notification` tinyint(4) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `highcontrast_css` tinyint(4) DEFAULT 0,
  `plannings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sync_field` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `users_id_supervisor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_dashboard_central` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_dashboard_assets` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_dashboard_helpdesk` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_dashboard_mini_ticket` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_central_tab` tinyint(4) DEFAULT 0,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `glpi_users`
--

INSERT INTO `glpi_users` (`id`, `name`, `password`, `password_last_update`, `phone`, `phone2`, `mobile`, `realname`, `firstname`, `locations_id`, `language`, `use_mode`, `list_limit`, `is_active`, `comment`, `auths_id`, `authtype`, `last_login`, `date_mod`, `date_sync`, `is_deleted`, `profiles_id`, `entities_id`, `usertitles_id`, `usercategories_id`, `date_format`, `number_format`, `names_format`, `csv_delimiter`, `is_ids_visible`, `use_flat_dropdowntree`, `show_jobs_at_login`, `priority_1`, `priority_2`, `priority_3`, `priority_4`, `priority_5`, `priority_6`, `followup_private`, `task_private`, `default_requesttypes_id`, `password_forget_token`, `password_forget_token_date`, `user_dn`, `registration_number`, `show_count_on_tabs`, `refresh_views`, `set_default_tech`, `personal_token`, `personal_token_date`, `api_token`, `api_token_date`, `cookie_token`, `cookie_token_date`, `display_count_on_home`, `notification_to_myself`, `duedateok_color`, `duedatewarning_color`, `duedatecritical_color`, `duedatewarning_less`, `duedatecritical_less`, `duedatewarning_unit`, `duedatecritical_unit`, `display_options`, `is_deleted_ldap`, `pdffont`, `picture`, `begin_date`, `end_date`, `keep_devices_when_purging_item`, `privatebookmarkorder`, `backcreated`, `task_state`, `palette`, `page_layout`, `fold_menu`, `fold_search`, `savedsearches_pinned`, `timeline_order`, `itil_layout`, `richtext_layout`, `set_default_requester`, `lock_autolock_mode`, `lock_directunlock_notification`, `date_creation`, `highcontrast_css`, `plannings`, `sync_field`, `groups_id`, `users_id_supervisor`, `timezone`, `default_dashboard_central`, `default_dashboard_assets`, `default_dashboard_helpdesk`, `default_dashboard_mini_ticket`, `default_central_tab`, `nickname`) VALUES
(2, 'glpi', '$2y$10$rXXzbc2ShaiCldwkw4AZL.n.9QSH7c0c9XJAyyjrbL9BwmWditAYm', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 20, 1, NULL, 0, 1, '2022-11-19 01:32:47', '2022-11-19 01:32:47', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$kl0gmL.IIb/CQLOOaK/sI.YxdTkTDdjm/KD1VM6TiJLHzz1t.26Hq', '2022-11-19 01:32:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"collapsed\":\"false\",\"expanded\":\"false\",\"items\":{\"item-main\":\"true\",\"actors\":\"true\",\"items\":\"true\",\"service-levels\":\"true\",\"linked_tickets\":\"false\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'post-only', '$2y$10$dTMar1F3ef5X/H1IjX9gYOjQWBR1K4bERGf4/oTPxFtJE/c3vXILm', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'en_GB', 0, 20, 1, NULL, 0, 1, '2022-11-19 02:21:35', '2022-11-19 02:22:17', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Kzd36sOdzv4gycRbMezAc.R2vyUHraq9Q/gyetXxuVLobon1YmhhC', '2022-11-19 02:21:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"collapsed\":\"false\",\"expanded\":\"false\",\"items\":{\"item-main\":\"true\",\"actors\":\"true\",\"items\":\"true\",\"service-levels\":\"false\",\"linked_tickets\":\"false\"}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'tech', '$2y$10$.xEgErizkp6Az0z.DHyoeOoenuh0RcsX4JapBk2JMD6VI17KtB1lO', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'en_GB', 0, 20, 1, NULL, 0, 1, '2022-11-19 02:13:28', '2022-11-19 02:13:28', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$xeqGgfe9yyCX9z/B63xO..EcLpA9QqZYel0gmjX7yoxSz5JhxxTpe', '2022-11-19 02:13:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'normal', '$2y$10$Z6doq4zVHkSPZFbPeXTCluN1Q/r0ryZ3ZsSJncJqkN3.8cRiN0NV.', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'en_GB', 0, 20, 1, NULL, 0, 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(6, 'glpi-system', '', NULL, NULL, NULL, NULL, 'Support', NULL, 0, NULL, 0, NULL, 1, NULL, 0, 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(7, 'kiefer', '$2y$10$UzkmaS/D74JtsVLCUK9SL.dG2mXPfCdl9R2szlhL7iU0pufWsBadC', '2022-11-19 03:18:09', '111222333', '', '089529850208', 'Dezi', 'Kiefer', 0, NULL, 0, NULL, 1, '', 0, 1, '2022-11-19 03:23:48', '2022-11-19 03:23:49', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$L7q2dyJ2MGRUbhA89CjBsOL4cVGq96jFkNYoimLuC4oLTh4/VzBO2', '2022-11-19 03:23:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-18 07:35:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"collapsed\":\"false\",\"expanded\":\"false\",\"items\":{\"item-main\":\"true\",\"actors\":\"true\",\"items\":\"true\",\"service-levels\":\"true\",\"linked_tickets\":\"true\"}}', NULL, NULL, NULL, NULL, '2022-11-19 01:28:38', NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'stanley', '$2y$10$B0sn2kWbifMrM5qSwaiqhe.6rloitvOQUxbzW8gcCsEol/lbj8A82', '2022-11-19 01:57:42', '', '', '', 'Swift', 'Stanley', 0, NULL, 0, NULL, 1, '', 0, 1, '2022-11-19 02:00:26', '2022-11-19 02:02:26', NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$Je3CXxKYy1z7wEy2HSXjtOBXh8j0TSRfabKE4AOgZG15Mo6wfqzWq', '2022-11-19 02:00:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-19 01:57:42', NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'sean', '$2y$10$tMzSDx0ErP9t0X.QjvO7mO/lwEs0YAiumFtuXD9ohot3yCyvy6xA.', '2022-11-19 03:23:23', '', '', '', 'mendez', 'sean', 0, NULL, 0, NULL, 1, '', 0, 1, '2022-11-19 02:15:33', '2022-11-19 03:23:23', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$vskKupfKvNrLHVdOJHKGT.ZADLmK1JegK2aXbCPcAqBoxqZnsSmpS', '2022-11-19 02:15:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-19 02:06:00', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'sukie', '$2y$10$oBHJa/UJEDh.n2N3E8wyBuKCuYLwCD4r.8bJjO/zoKPYzD3ZJzmH6', '2022-11-19 03:28:55', '', '', '', 'bowie', 'sukie', 0, NULL, 0, NULL, 1, '', 0, 1, '2022-11-19 03:29:26', '2022-11-19 03:29:27', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$YI5fwTAH9wP1e.s7Gq.jOuKb1pmLzESyQQ5eYgsiv.uJvluaLlZa2', '2022-11-19 03:29:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-19 03:28:55', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'cecilia', '$2y$10$y0WK.Bsz7QmXj6bSH3x1Eekdur5eIllmVWi86g9qu13Zzyk93yieC', '2022-11-19 03:31:32', '', '', '', 'lisha', 'cecilia', 0, NULL, 0, NULL, 1, '', 0, 1, NULL, '2022-11-19 03:31:32', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-11-18 05:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-19 03:31:32', 0, NULL, NULL, 0, 0, '0', NULL, NULL, NULL, NULL, 0, NULL),
(13, 'napier', '$2y$10$D9Bpjsv4jvMaAin0XsFssOy3arq0L0II1lvmy3DrwFSJHgCdvmS3S', '2022-11-19 03:34:20', '', '', '', 'ermund', 'napier', 0, NULL, 0, NULL, 1, '', 0, 1, NULL, '2022-11-19 03:34:20', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-19 03:34:20', 0, NULL, NULL, 0, 0, '0', NULL, NULL, NULL, NULL, 0, NULL),
(14, 'serenity', '$2y$10$sARJWVHfqXmD/julodC9aONmSUzUBkP8EHGQhmvQctzISFHgn1UHe', '2022-11-19 03:34:59', '', '', '', 'omar', 'serenity', 0, NULL, 0, NULL, 1, '', 0, 1, NULL, '2022-11-19 03:34:59', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-19 03:34:59', 0, NULL, NULL, 0, 0, '0', NULL, NULL, NULL, NULL, 0, NULL),
(15, 'jack', '$2y$10$H3WjyuU1sZTHXnxgMyEONeHIqIHduGl1B/Mfko89zZUa0L88BK3za', '2022-11-19 03:35:29', '', '', '', 'jill', 'jack', 0, NULL, 0, NULL, 1, '', 0, 1, NULL, '2022-11-19 03:35:29', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-19 03:35:29', 0, NULL, NULL, 0, 0, '0', NULL, NULL, NULL, NULL, 0, NULL),
(16, 'liza', '$2y$10$2jjoziltXLUyJpcb7pIlvOv3uyLopOSBD2CzedH1f33Oy6NnGZi26', '2022-11-19 03:55:39', '', '', '', 'potter', 'liza', 0, NULL, 0, NULL, 1, '', 0, 1, NULL, '2022-11-19 03:55:39', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-19 03:55:39', 0, NULL, NULL, 0, 0, '0', NULL, NULL, NULL, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `glpi_users`
--
ALTER TABLE `glpi_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unicityloginauth` (`name`,`authtype`,`auths_id`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `realname` (`realname`),
  ADD KEY `entities_id` (`entities_id`),
  ADD KEY `profiles_id` (`profiles_id`),
  ADD KEY `locations_id` (`locations_id`),
  ADD KEY `usertitles_id` (`usertitles_id`),
  ADD KEY `usercategories_id` (`usercategories_id`),
  ADD KEY `is_deleted` (`is_deleted`),
  ADD KEY `is_active` (`is_active`),
  ADD KEY `date_mod` (`date_mod`),
  ADD KEY `authitem` (`authtype`,`auths_id`),
  ADD KEY `is_deleted_ldap` (`is_deleted_ldap`),
  ADD KEY `date_creation` (`date_creation`),
  ADD KEY `begin_date` (`begin_date`),
  ADD KEY `end_date` (`end_date`),
  ADD KEY `sync_field` (`sync_field`),
  ADD KEY `groups_id` (`groups_id`),
  ADD KEY `users_id_supervisor` (`users_id_supervisor`),
  ADD KEY `auths_id` (`auths_id`),
  ADD KEY `default_requesttypes_id` (`default_requesttypes_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `glpi_users`
--
ALTER TABLE `glpi_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
