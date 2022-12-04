-- glpi_dev.glpi_agents definition

CREATE TABLE `glpi_agents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deviceid` varchar(255) NOT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `agenttypes_id` int(10) unsigned NOT NULL,
  `last_contact` timestamp NULL DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `items_id` int(10) unsigned NOT NULL,
  `useragent` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `port` varchar(6) DEFAULT NULL,
  `threads_networkdiscovery` int(11) NOT NULL DEFAULT 1 COMMENT 'Number of threads for Network discovery',
  `threads_networkinventory` int(11) NOT NULL DEFAULT 1 COMMENT 'Number of threads for Network inventory',
  `timeout_networkdiscovery` int(11) NOT NULL DEFAULT 0 COMMENT 'Network Discovery task timeout (disabled by default)',
  `timeout_networkinventory` int(11) NOT NULL DEFAULT 0 COMMENT 'Network Inventory task timeout (disabled by default)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `deviceid` (`deviceid`),
  KEY `name` (`name`),
  KEY `agenttypes_id` (`agenttypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_agenttypes definition

CREATE TABLE `glpi_agenttypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_alerts definition

CREATE TABLE `glpi_alerts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) NOT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT 'see define.php ALERT_* constant',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`type`),
  KEY `type` (`type`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_apiclients definition

CREATE TABLE `glpi_apiclients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `ipv4_range_start` bigint(20) DEFAULT NULL,
  `ipv4_range_end` bigint(20) DEFAULT NULL,
  `ipv6` varchar(255) DEFAULT NULL,
  `app_token` varchar(255) DEFAULT NULL,
  `app_token_date` timestamp NULL DEFAULT NULL,
  `dolog_method` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `is_active` (`is_active`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_applianceenvironments definition

CREATE TABLE `glpi_applianceenvironments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_appliances definition

CREATE TABLE `glpi_appliances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `appliancetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `applianceenvironments_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `externalidentifier` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `is_helpdesk_visible` tinyint(4) NOT NULL DEFAULT 1,
  `pictures` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`externalidentifier`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `is_deleted` (`is_deleted`),
  KEY `appliancetypes_id` (`appliancetypes_id`),
  KEY `locations_id` (`locations_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `applianceenvironments_id` (`applianceenvironments_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id` (`groups_id`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `states_id` (`states_id`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_appliances_items definition

CREATE TABLE `glpi_appliances_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appliances_id` int(10) unsigned NOT NULL DEFAULT 0,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`appliances_id`,`items_id`,`itemtype`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_appliances_items_relations definition

CREATE TABLE `glpi_appliances_items_relations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appliances_items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `appliances_items_id` (`appliances_items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_appliancetypes definition

CREATE TABLE `glpi_appliancetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `comment` text DEFAULT NULL,
  `externalidentifier` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `externalidentifier` (`externalidentifier`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_authldapreplicates definition

CREATE TABLE `glpi_authldapreplicates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `authldaps_id` int(10) unsigned NOT NULL DEFAULT 0,
  `host` varchar(255) DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT 389,
  `name` varchar(255) DEFAULT NULL,
  `timeout` int(11) NOT NULL DEFAULT 10,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `authldaps_id` (`authldaps_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_authldaps definition

CREATE TABLE `glpi_authldaps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `basedn` varchar(255) DEFAULT NULL,
  `rootdn` varchar(255) DEFAULT NULL,
  `port` int(11) NOT NULL DEFAULT 389,
  `condition` text DEFAULT NULL,
  `login_field` varchar(255) DEFAULT 'uid',
  `sync_field` varchar(255) DEFAULT NULL,
  `use_tls` tinyint(4) NOT NULL DEFAULT 0,
  `group_field` varchar(255) DEFAULT NULL,
  `group_condition` text DEFAULT NULL,
  `group_search_type` int(11) NOT NULL DEFAULT 0,
  `group_member_field` varchar(255) DEFAULT NULL,
  `email1_field` varchar(255) DEFAULT NULL,
  `realname_field` varchar(255) DEFAULT NULL,
  `firstname_field` varchar(255) DEFAULT NULL,
  `phone_field` varchar(255) DEFAULT NULL,
  `phone2_field` varchar(255) DEFAULT NULL,
  `mobile_field` varchar(255) DEFAULT NULL,
  `comment_field` varchar(255) DEFAULT NULL,
  `use_dn` tinyint(4) NOT NULL DEFAULT 1,
  `time_offset` int(11) NOT NULL DEFAULT 0 COMMENT 'in seconds',
  `deref_option` int(11) NOT NULL DEFAULT 0,
  `title_field` varchar(255) DEFAULT NULL,
  `category_field` varchar(255) DEFAULT NULL,
  `language_field` varchar(255) DEFAULT NULL,
  `entity_field` varchar(255) DEFAULT NULL,
  `entity_condition` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `rootdn_passwd` varchar(255) DEFAULT NULL,
  `registration_number_field` varchar(255) DEFAULT NULL,
  `email2_field` varchar(255) DEFAULT NULL,
  `email3_field` varchar(255) DEFAULT NULL,
  `email4_field` varchar(255) DEFAULT NULL,
  `location_field` varchar(255) DEFAULT NULL,
  `responsible_field` varchar(255) DEFAULT NULL,
  `pagesize` int(11) NOT NULL DEFAULT 0,
  `ldap_maxlimit` int(11) NOT NULL DEFAULT 0,
  `can_support_pagesize` tinyint(4) NOT NULL DEFAULT 0,
  `picture_field` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `inventory_domain` varchar(255) DEFAULT NULL,
  `tls_certfile` text DEFAULT NULL,
  `tls_keyfile` text DEFAULT NULL,
  `use_bind` tinyint(4) NOT NULL DEFAULT 1,
  `timeout` int(11) NOT NULL DEFAULT 10,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `is_default` (`is_default`),
  KEY `is_active` (`is_active`),
  KEY `date_creation` (`date_creation`),
  KEY `sync_field` (`sync_field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_authmails definition

CREATE TABLE `glpi_authmails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `connect_string` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `is_active` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_autoupdatesystems definition

CREATE TABLE `glpi_autoupdatesystems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_blacklistedmailcontents definition

CREATE TABLE `glpi_blacklistedmailcontents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_blacklists definition

CREATE TABLE `glpi_blacklists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_budgets definition

CREATE TABLE `glpi_budgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `budgettypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `is_template` (`is_template`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `locations_id` (`locations_id`),
  KEY `budgettypes_id` (`budgettypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_budgettypes definition

CREATE TABLE `glpi_budgettypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_businesscriticities definition

CREATE TABLE `glpi_businesscriticities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `businesscriticities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `completename` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `ancestors_cache` longtext DEFAULT NULL,
  `sons_cache` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`businesscriticities_id`,`name`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_cables definition

CREATE TABLE `glpi_cables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `itemtype_endpoint_a` varchar(255) DEFAULT NULL,
  `itemtype_endpoint_b` varchar(255) DEFAULT NULL,
  `items_id_endpoint_a` int(10) unsigned NOT NULL DEFAULT 0,
  `items_id_endpoint_b` int(10) unsigned NOT NULL DEFAULT 0,
  `socketmodels_id_endpoint_a` int(10) unsigned NOT NULL DEFAULT 0,
  `socketmodels_id_endpoint_b` int(10) unsigned NOT NULL DEFAULT 0,
  `sockets_id_endpoint_a` int(10) unsigned NOT NULL DEFAULT 0,
  `sockets_id_endpoint_b` int(10) unsigned NOT NULL DEFAULT 0,
  `cablestrands_id` int(10) unsigned NOT NULL DEFAULT 0,
  `color` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `cabletypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `item_endpoint_a` (`itemtype_endpoint_a`,`items_id_endpoint_a`),
  KEY `item_endpoint_b` (`itemtype_endpoint_b`,`items_id_endpoint_b`),
  KEY `items_id_endpoint_b` (`items_id_endpoint_b`),
  KEY `items_id_endpoint_a` (`items_id_endpoint_a`),
  KEY `socketmodels_id_endpoint_a` (`socketmodels_id_endpoint_a`),
  KEY `socketmodels_id_endpoint_b` (`socketmodels_id_endpoint_b`),
  KEY `sockets_id_endpoint_a` (`sockets_id_endpoint_a`),
  KEY `sockets_id_endpoint_b` (`sockets_id_endpoint_b`),
  KEY `cablestrands_id` (`cablestrands_id`),
  KEY `states_id` (`states_id`),
  KEY `complete` (`entities_id`,`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `cabletypes_id` (`cabletypes_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_cablestrands definition

CREATE TABLE `glpi_cablestrands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_cabletypes definition

CREATE TABLE `glpi_cabletypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_calendars definition

CREATE TABLE `glpi_calendars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `cache_duration` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_calendars_holidays definition

CREATE TABLE `glpi_calendars_holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calendars_id` int(10) unsigned NOT NULL DEFAULT 0,
  `holidays_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`calendars_id`,`holidays_id`),
  KEY `holidays_id` (`holidays_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_calendarsegments definition

CREATE TABLE `glpi_calendarsegments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calendars_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `day` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'numer of the day based on date(w)',
  `begin` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendars_id` (`calendars_id`),
  KEY `day` (`day`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_cartridgeitems definition

CREATE TABLE `glpi_cartridgeitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `cartridgeitemtypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `alarm_threshold` int(11) NOT NULL DEFAULT 10,
  `stock_target` int(11) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `cartridgeitemtypes_id` (`cartridgeitemtypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `alarm_threshold` (`alarm_threshold`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_cartridgeitems_printermodels definition

CREATE TABLE `glpi_cartridgeitems_printermodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cartridgeitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `printermodels_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`printermodels_id`,`cartridgeitems_id`),
  KEY `cartridgeitems_id` (`cartridgeitems_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_cartridgeitemtypes definition

CREATE TABLE `glpi_cartridgeitemtypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_cartridges definition

CREATE TABLE `glpi_cartridges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `cartridgeitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `printers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_in` date DEFAULT NULL,
  `date_use` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `pages` int(11) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cartridgeitems_id` (`cartridgeitems_id`),
  KEY `printers_id` (`printers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_certificates definition

CREATE TABLE `glpi_certificates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `certificatetypes_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to glpi_certificatetypes (id)',
  `dns_name` varchar(255) DEFAULT NULL,
  `dns_suffix` varchar(255) DEFAULT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to glpi_users (id)',
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to glpi_groups (id)',
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to glpi_locations (id)',
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to glpi_manufacturers (id)',
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_autosign` tinyint(4) NOT NULL DEFAULT 0,
  `date_expiration` date DEFAULT NULL,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to states (id)',
  `command` text DEFAULT NULL,
  `certificate_request` text DEFAULT NULL,
  `certificate_item` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `certificatetypes_id` (`certificatetypes_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `states_id` (`states_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_certificates_items definition

CREATE TABLE `glpi_certificates_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `certificates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to various tables, according to itemtype (id)',
  `itemtype` varchar(100) NOT NULL COMMENT 'see .class.php file',
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`certificates_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_certificatetypes definition

CREATE TABLE `glpi_certificatetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changecosts definition

CREATE TABLE `glpi_changecosts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT 0,
  `cost_time` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `cost_material` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `budgets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `changes_id` (`changes_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changes definition

CREATE TABLE `glpi_changes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `content` longtext DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `solvedate` timestamp NULL DEFAULT NULL,
  `closedate` timestamp NULL DEFAULT NULL,
  `time_to_resolve` timestamp NULL DEFAULT NULL,
  `users_id_recipient` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_lastupdater` int(10) unsigned NOT NULL DEFAULT 0,
  `urgency` int(11) NOT NULL DEFAULT 1,
  `impact` int(11) NOT NULL DEFAULT 1,
  `priority` int(11) NOT NULL DEFAULT 1,
  `itilcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `impactcontent` longtext DEFAULT NULL,
  `controlistcontent` longtext DEFAULT NULL,
  `rolloutplancontent` longtext DEFAULT NULL,
  `backoutplancontent` longtext DEFAULT NULL,
  `checklistcontent` longtext DEFAULT NULL,
  `global_validation` int(11) NOT NULL DEFAULT 1,
  `validation_percent` int(11) NOT NULL DEFAULT 0,
  `actiontime` int(11) NOT NULL DEFAULT 0,
  `begin_waiting_date` timestamp NULL DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT 0,
  `close_delay_stat` int(11) NOT NULL DEFAULT 0,
  `solve_delay_stat` int(11) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `date_mod` (`date_mod`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `solvedate` (`solvedate`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `time_to_resolve` (`time_to_resolve`),
  KEY `global_validation` (`global_validation`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changes_groups definition

CREATE TABLE `glpi_changes_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changes_items definition

CREATE TABLE `glpi_changes_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changes_problems definition

CREATE TABLE `glpi_changes_problems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `problems_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`problems_id`),
  KEY `problems_id` (`problems_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changes_suppliers definition

CREATE TABLE `glpi_changes_suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `suppliers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  `use_notification` tinyint(4) NOT NULL DEFAULT 0,
  `alternative_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`type`,`suppliers_id`),
  KEY `group` (`suppliers_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changes_tickets definition

CREATE TABLE `glpi_changes_tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`tickets_id`),
  KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changes_users definition

CREATE TABLE `glpi_changes_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  `use_notification` tinyint(4) NOT NULL DEFAULT 0,
  `alternative_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changes_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changetasks definition

CREATE TABLE `glpi_changetasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `changes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `taskcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NULL DEFAULT NULL,
  `begin` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_editor` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `tasktemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `timeline_position` tinyint(4) NOT NULL DEFAULT 0,
  `is_private` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `changes_id` (`changes_id`),
  KEY `state` (`state`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `tasktemplates_id` (`tasktemplates_id`),
  KEY `is_private` (`is_private`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changetemplatehiddenfields definition

CREATE TABLE `glpi_changetemplatehiddenfields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changetemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changetemplates_id`,`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changetemplatemandatoryfields definition

CREATE TABLE `glpi_changetemplatemandatoryfields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changetemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`changetemplates_id`,`num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changetemplatepredefinedfields definition

CREATE TABLE `glpi_changetemplatepredefinedfields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `changetemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `changetemplates_id` (`changetemplates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changetemplates definition

CREATE TABLE `glpi_changetemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_changevalidations definition

CREATE TABLE `glpi_changevalidations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `changes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_validate` int(10) unsigned NOT NULL DEFAULT 0,
  `comment_submission` text DEFAULT NULL,
  `comment_validation` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `submission_date` timestamp NULL DEFAULT NULL,
  `validation_date` timestamp NULL DEFAULT NULL,
  `timeline_position` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `users_id` (`users_id`),
  KEY `users_id_validate` (`users_id_validate`),
  KEY `changes_id` (`changes_id`),
  KEY `submission_date` (`submission_date`),
  KEY `validation_date` (`validation_date`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_clusters definition

CREATE TABLE `glpi_clusters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to states (id)',
  `comment` text DEFAULT NULL,
  `clustertypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `autoupdatesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `group_id_tech` (`groups_id_tech`),
  KEY `is_deleted` (`is_deleted`),
  KEY `states_id` (`states_id`),
  KEY `clustertypes_id` (`clustertypes_id`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_clustertypes definition

CREATE TABLE `glpi_clustertypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_computerantiviruses definition

CREATE TABLE `glpi_computerantiviruses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `computers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `antivirus_version` varchar(255) DEFAULT NULL,
  `signature_version` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_uptodate` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `date_expiration` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `antivirus_version` (`antivirus_version`),
  KEY `signature_version` (`signature_version`),
  KEY `is_active` (`is_active`),
  KEY `is_uptodate` (`is_uptodate`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `is_deleted` (`is_deleted`),
  KEY `computers_id` (`computers_id`),
  KEY `date_expiration` (`date_expiration`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_computermodels definition

CREATE TABLE `glpi_computermodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `required_units` int(11) NOT NULL DEFAULT 1,
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT 0,
  `power_consumption` int(11) NOT NULL DEFAULT 0,
  `is_half_rack` tinyint(4) NOT NULL DEFAULT 0,
  `picture_front` text DEFAULT NULL,
  `picture_rear` text DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_computers definition

CREATE TABLE `glpi_computers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `autoupdatesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `computermodels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `computertypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ticket_tco` decimal(20,4) DEFAULT 0.0000,
  `uuid` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `last_inventory_update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `computermodels_id` (`computermodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `computertypes_id` (`computertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `uuid` (`uuid`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_computers_items definition

CREATE TABLE `glpi_computers_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to various table, according to itemtype (ID)',
  `computers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_computertypes definition

CREATE TABLE `glpi_computertypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_computervirtualmachines definition

CREATE TABLE `glpi_computervirtualmachines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `computers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `virtualmachinestates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `virtualmachinesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `virtualmachinetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `vcpu` int(11) NOT NULL DEFAULT 0,
  `ram` varchar(255) NOT NULL DEFAULT '',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `computers_id` (`computers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `virtualmachinestates_id` (`virtualmachinestates_id`),
  KEY `virtualmachinesystems_id` (`virtualmachinesystems_id`),
  KEY `vcpu` (`vcpu`),
  KEY `ram` (`ram`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `uuid` (`uuid`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `virtualmachinetypes_id` (`virtualmachinetypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_configs definition

CREATE TABLE `glpi_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `context` varchar(150) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`context`,`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=294 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_consumableitems definition

CREATE TABLE `glpi_consumableitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `consumableitemtypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `alarm_threshold` int(11) NOT NULL DEFAULT 10,
  `stock_target` int(11) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `consumableitemtypes_id` (`consumableitemtypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `alarm_threshold` (`alarm_threshold`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `otherserial` (`otherserial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_consumableitemtypes definition

CREATE TABLE `glpi_consumableitemtypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_consumables definition

CREATE TABLE `glpi_consumables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `consumableitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_in` (`date_in`),
  KEY `date_out` (`date_out`),
  KEY `consumableitems_id` (`consumableitems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_contacts definition

CREATE TABLE `glpi_contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contacttypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `usertitles_id` int(10) unsigned NOT NULL DEFAULT 0,
  `address` text DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `contacttypes_id` (`contacttypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `usertitles_id` (`usertitles_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_contacts_suppliers definition

CREATE TABLE `glpi_contacts_suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suppliers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `contacts_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`suppliers_id`,`contacts_id`),
  KEY `contacts_id` (`contacts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_contacttypes definition

CREATE TABLE `glpi_contacttypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_contractcosts definition

CREATE TABLE `glpi_contractcosts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contracts_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `budgets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `contracts_id` (`contracts_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_contracts definition

CREATE TABLE `glpi_contracts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `contracttypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `begin_date` date DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `notice` int(11) NOT NULL DEFAULT 0,
  `periodicity` int(11) NOT NULL DEFAULT 0,
  `billing` int(11) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `accounting_number` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `week_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `week_end_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `saturday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_saturday` tinyint(4) NOT NULL DEFAULT 0,
  `sunday_begin_hour` time NOT NULL DEFAULT '00:00:00',
  `sunday_end_hour` time NOT NULL DEFAULT '00:00:00',
  `use_sunday` tinyint(4) NOT NULL DEFAULT 0,
  `max_links_allowed` int(11) NOT NULL DEFAULT 0,
  `alert` int(11) NOT NULL DEFAULT 0,
  `renewal` int(11) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `begin_date` (`begin_date`),
  KEY `name` (`name`),
  KEY `contracttypes_id` (`contracttypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_template` (`is_template`),
  KEY `use_sunday` (`use_sunday`),
  KEY `use_saturday` (`use_saturday`),
  KEY `alert` (`alert`),
  KEY `states_id` (`states_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_contracts_items definition

CREATE TABLE `glpi_contracts_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contracts_id` int(10) unsigned NOT NULL DEFAULT 0,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`contracts_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_contracts_suppliers definition

CREATE TABLE `glpi_contracts_suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suppliers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `contracts_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`suppliers_id`,`contracts_id`),
  KEY `contracts_id` (`contracts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_contracttypes definition

CREATE TABLE `glpi_contracttypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_crontasklogs definition

CREATE TABLE `glpi_crontasklogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crontasks_id` int(10) unsigned NOT NULL,
  `crontasklogs_id` int(10) unsigned NOT NULL COMMENT 'id of ''start'' event',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `state` int(11) NOT NULL COMMENT '0:start, 1:run, 2:stop',
  `elapsed` float NOT NULL COMMENT 'time elapsed since start',
  `volume` int(11) NOT NULL COMMENT 'for statistics',
  `content` varchar(255) DEFAULT NULL COMMENT 'message',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `crontasks_id` (`crontasks_id`),
  KEY `crontasklogs_id_state` (`crontasklogs_id`,`state`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_crontasks definition

CREATE TABLE `glpi_crontasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) NOT NULL,
  `name` varchar(150) NOT NULL COMMENT 'task name',
  `frequency` int(11) NOT NULL COMMENT 'second between launch',
  `param` int(11) DEFAULT NULL COMMENT 'task specify parameter',
  `state` int(11) NOT NULL DEFAULT 1 COMMENT '0:disabled, 1:waiting, 2:running',
  `mode` int(11) NOT NULL DEFAULT 1 COMMENT '1:internal, 2:external',
  `allowmode` int(11) NOT NULL DEFAULT 3 COMMENT '1:internal, 2:external, 3:both',
  `hourmin` int(11) NOT NULL DEFAULT 0,
  `hourmax` int(11) NOT NULL DEFAULT 24,
  `logs_lifetime` int(11) NOT NULL DEFAULT 30 COMMENT 'number of days',
  `lastrun` timestamp NULL DEFAULT NULL COMMENT 'last run date',
  `lastcode` int(11) DEFAULT NULL COMMENT 'last run return code',
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`name`),
  KEY `name` (`name`),
  KEY `mode` (`mode`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Task run by internal / external cron.';


-- glpi_dev.glpi_dashboards_dashboards definition

CREATE TABLE `glpi_dashboards_dashboards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `context` varchar(100) NOT NULL DEFAULT 'core',
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `name` (`name`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_dashboards_filters definition

CREATE TABLE `glpi_dashboards_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dashboards_dashboards_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `filter` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboards_dashboards_id` (`dashboards_dashboards_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_dashboards_items definition

CREATE TABLE `glpi_dashboards_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dashboards_dashboards_id` int(10) unsigned NOT NULL,
  `gridstack_id` varchar(100) NOT NULL,
  `card_id` varchar(100) NOT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `card_options` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboards_dashboards_id` (`dashboards_dashboards_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_dashboards_rights definition

CREATE TABLE `glpi_dashboards_rights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dashboards_dashboards_id` int(10) unsigned NOT NULL,
  `itemtype` varchar(100) NOT NULL,
  `items_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`dashboards_dashboards_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_databaseinstancecategories definition

CREATE TABLE `glpi_databaseinstancecategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_databaseinstances definition

CREATE TABLE `glpi_databaseinstances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(255) NOT NULL DEFAULT '',
  `port` varchar(10) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `size` int(11) NOT NULL DEFAULT 0,
  `databaseinstancetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `databaseinstancecategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL DEFAULT '',
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_onbackup` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_helpdesk_visible` tinyint(4) NOT NULL DEFAULT 1,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `autoupdatesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_lastboot` timestamp NULL DEFAULT NULL,
  `date_lastbackup` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `databaseinstancetypes_id` (`databaseinstancetypes_id`),
  KEY `databaseinstancecategories_id` (`databaseinstancecategories_id`),
  KEY `locations_id` (`locations_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `states_id` (`states_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `is_active` (`is_active`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_databaseinstancetypes definition

CREATE TABLE `glpi_databaseinstancetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_databases definition

CREATE TABLE `glpi_databases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `size` int(11) NOT NULL DEFAULT 0,
  `databaseinstances_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_onbackup` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_update` timestamp NULL DEFAULT NULL,
  `date_lastbackup` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`),
  KEY `databaseinstances_id` (`databaseinstances_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_datacenters definition

CREATE TABLE `glpi_datacenters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_dcrooms definition

CREATE TABLE `glpi_dcrooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `vis_cols` int(11) DEFAULT NULL,
  `vis_rows` int(11) DEFAULT NULL,
  `blueprint` text DEFAULT NULL,
  `datacenters_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `datacenters_id` (`datacenters_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicebatteries definition

CREATE TABLE `glpi_devicebatteries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `voltage` int(11) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `devicebatterytypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicebatterymodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicebatterymodels_id` (`devicebatterymodels_id`),
  KEY `devicebatterytypes_id` (`devicebatterytypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicebatterymodels definition

CREATE TABLE `glpi_devicebatterymodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicebatterytypes definition

CREATE TABLE `glpi_devicebatterytypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicecameramodels definition

CREATE TABLE `glpi_devicecameramodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicecameras definition

CREATE TABLE `glpi_devicecameras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `flashunit` tinyint(4) NOT NULL DEFAULT 0,
  `lensfacing` varchar(255) DEFAULT NULL,
  `orientation` varchar(255) DEFAULT NULL,
  `focallength` varchar(255) DEFAULT NULL,
  `sensorsize` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicecameramodels_id` int(10) unsigned DEFAULT NULL,
  `support` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicecameramodels_id` (`devicecameramodels_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicecasemodels definition

CREATE TABLE `glpi_devicecasemodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicecases definition

CREATE TABLE `glpi_devicecases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `devicecasetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicecasemodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicecasetypes_id` (`devicecasetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicecasemodels_id` (`devicecasemodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicecasetypes definition

CREATE TABLE `glpi_devicecasetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicecontrolmodels definition

CREATE TABLE `glpi_devicecontrolmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicecontrols definition

CREATE TABLE `glpi_devicecontrols` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `is_raid` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `interfacetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicecontrolmodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicecontrolmodels_id` (`devicecontrolmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicedrivemodels definition

CREATE TABLE `glpi_devicedrivemodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicedrives definition

CREATE TABLE `glpi_devicedrives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `is_writer` tinyint(4) NOT NULL DEFAULT 1,
  `speed` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `interfacetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicedrivemodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicedrivemodels_id` (`devicedrivemodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicefirmwaremodels definition

CREATE TABLE `glpi_devicefirmwaremodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicefirmwares definition

CREATE TABLE `glpi_devicefirmwares` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `devicefirmwaretypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicefirmwaremodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicefirmwaremodels_id` (`devicefirmwaremodels_id`),
  KEY `devicefirmwaretypes_id` (`devicefirmwaretypes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicefirmwaretypes definition

CREATE TABLE `glpi_devicefirmwaretypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicegenericmodels definition

CREATE TABLE `glpi_devicegenericmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicegenerics definition

CREATE TABLE `glpi_devicegenerics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `devicegenerictypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `devicegenericmodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicegenerictypes_id` (`devicegenerictypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicegenericmodels_id` (`devicegenericmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicegenerictypes definition

CREATE TABLE `glpi_devicegenerictypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicegraphiccardmodels definition

CREATE TABLE `glpi_devicegraphiccardmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicegraphiccards definition

CREATE TABLE `glpi_devicegraphiccards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `interfacetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `memory_default` int(11) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicegraphiccardmodels_id` int(10) unsigned DEFAULT NULL,
  `chipset` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `chipset` (`chipset`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicegraphiccardmodels_id` (`devicegraphiccardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_deviceharddrivemodels definition

CREATE TABLE `glpi_deviceharddrivemodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_deviceharddrives definition

CREATE TABLE `glpi_deviceharddrives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `rpm` varchar(255) DEFAULT NULL,
  `interfacetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `cache` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `capacity_default` int(11) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `deviceharddrivemodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `interfacetypes_id` (`interfacetypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `deviceharddrivemodels_id` (`deviceharddrivemodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicememories definition

CREATE TABLE `glpi_devicememories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `frequence` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `size_default` int(11) NOT NULL DEFAULT 0,
  `devicememorytypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicememorymodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicememorytypes_id` (`devicememorytypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicememorymodels_id` (`devicememorymodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicememorymodels definition

CREATE TABLE `glpi_devicememorymodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicememorytypes definition

CREATE TABLE `glpi_devicememorytypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicemotherboardmodels definition

CREATE TABLE `glpi_devicemotherboardmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicemotherboards definition

CREATE TABLE `glpi_devicemotherboards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `chipset` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicemotherboardmodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicemotherboardmodels_id` (`devicemotherboardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicenetworkcardmodels definition

CREATE TABLE `glpi_devicenetworkcardmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicenetworkcards definition

CREATE TABLE `glpi_devicenetworkcards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `bandwidth` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mac_default` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicenetworkcardmodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicenetworkcardmodels_id` (`devicenetworkcardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicepcimodels definition

CREATE TABLE `glpi_devicepcimodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicepcis definition

CREATE TABLE `glpi_devicepcis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `devicenetworkcardmodels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicepcimodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicenetworkcardmodels_id` (`devicenetworkcardmodels_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicepcimodels_id` (`devicepcimodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicepowersupplies definition

CREATE TABLE `glpi_devicepowersupplies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `power` varchar(255) DEFAULT NULL,
  `is_atx` tinyint(4) NOT NULL DEFAULT 1,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicepowersupplymodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicepowersupplymodels_id` (`devicepowersupplymodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicepowersupplymodels definition

CREATE TABLE `glpi_devicepowersupplymodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_deviceprocessormodels definition

CREATE TABLE `glpi_deviceprocessormodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_deviceprocessors definition

CREATE TABLE `glpi_deviceprocessors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `frequence` int(11) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `frequency_default` int(11) NOT NULL DEFAULT 0,
  `nbcores_default` int(11) DEFAULT NULL,
  `nbthreads_default` int(11) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `deviceprocessormodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `deviceprocessormodels_id` (`deviceprocessormodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicesensormodels definition

CREATE TABLE `glpi_devicesensormodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicesensors definition

CREATE TABLE `glpi_devicesensors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `devicesensortypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `devicesensormodels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `devicesensortypes_id` (`devicesensortypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicesensormodels_id` (`devicesensormodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicesensortypes definition

CREATE TABLE `glpi_devicesensortypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicesimcards definition

CREATE TABLE `glpi_devicesimcards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `voltage` int(11) DEFAULT NULL,
  `devicesimcardtypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `allow_voip` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `devicesimcardtypes_id` (`devicesimcardtypes_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `manufacturers_id` (`manufacturers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicesimcardtypes definition

CREATE TABLE `glpi_devicesimcardtypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicesoundcardmodels definition

CREATE TABLE `glpi_devicesoundcardmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_devicesoundcards definition

CREATE TABLE `glpi_devicesoundcards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `devicesoundcardmodels_id` int(10) unsigned DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `designation` (`designation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `devicesoundcardmodels_id` (`devicesoundcardmodels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_displaypreferences definition

CREATE TABLE `glpi_displaypreferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) NOT NULL,
  `num` int(11) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`itemtype`,`num`),
  KEY `rank` (`rank`),
  KEY `num` (`num`),
  KEY `itemtype` (`itemtype`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_documentcategories definition

CREATE TABLE `glpi_documentcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `documentcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `completename` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `ancestors_cache` longtext DEFAULT NULL,
  `sons_cache` longtext DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`documentcategories_id`,`name`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_documents definition

CREATE TABLE `glpi_documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL COMMENT 'for display and transfert',
  `filepath` varchar(255) DEFAULT NULL COMMENT 'file storage path',
  `documentcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mime` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `link` varchar(255) DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sha1sum` char(40) DEFAULT NULL,
  `is_blacklisted` tinyint(4) NOT NULL DEFAULT 0,
  `tag` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `tickets_id` (`tickets_id`),
  KEY `users_id` (`users_id`),
  KEY `documentcategories_id` (`documentcategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `sha1sum` (`sha1sum`),
  KEY `tag` (`tag`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_documents_items definition

CREATE TABLE `glpi_documents_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `documents_id` int(10) unsigned NOT NULL DEFAULT 0,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned DEFAULT 0,
  `timeline_position` tinyint(4) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`documents_id`,`itemtype`,`items_id`,`timeline_position`),
  KEY `item` (`itemtype`,`items_id`,`entities_id`,`is_recursive`),
  KEY `users_id` (`users_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_documenttypes definition

CREATE TABLE `glpi_documenttypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `is_uploadable` tinyint(4) NOT NULL DEFAULT 1,
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`ext`),
  KEY `name` (`name`),
  KEY `is_uploadable` (`is_uploadable`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_domainrecords definition

CREATE TABLE `glpi_domainrecords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `data_obj` text DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `domains_id` int(10) unsigned NOT NULL DEFAULT 0,
  `domainrecordtypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ttl` int(11) NOT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `domains_id` (`domains_id`),
  KEY `domainrecordtypes_id` (`domainrecordtypes_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_mod` (`date_mod`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_domainrecordtypes definition

CREATE TABLE `glpi_domainrecordtypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `fields` text DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_domainrelations definition

CREATE TABLE `glpi_domainrelations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_domains definition

CREATE TABLE `glpi_domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `domaintypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_expiration` timestamp NULL DEFAULT NULL,
  `date_domaincreation` timestamp NULL DEFAULT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `domaintypes_id` (`domaintypes_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_mod` (`date_mod`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_template` (`is_template`),
  KEY `is_active` (`is_active`),
  KEY `date_expiration` (`date_expiration`),
  KEY `date_domaincreation` (`date_domaincreation`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_domains_items definition

CREATE TABLE `glpi_domains_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domains_id` int(10) unsigned NOT NULL DEFAULT 0,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `domainrelations_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`domains_id`,`itemtype`,`items_id`),
  KEY `domainrelations_id` (`domainrelations_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_domaintypes definition

CREATE TABLE `glpi_domaintypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_dropdowntranslations definition

CREATE TABLE `glpi_dropdowntranslations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`language`,`field`),
  KEY `language` (`language`),
  KEY `field` (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_enclosuremodels definition

CREATE TABLE `glpi_enclosuremodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `required_units` int(11) NOT NULL DEFAULT 1,
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT 0,
  `power_consumption` int(11) NOT NULL DEFAULT 0,
  `is_half_rack` tinyint(4) NOT NULL DEFAULT 0,
  `picture_front` text DEFAULT NULL,
  `picture_rear` text DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_enclosures definition

CREATE TABLE `glpi_enclosures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `enclosuremodels_id` int(10) unsigned DEFAULT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `orientation` tinyint(4) DEFAULT NULL,
  `power_supplies` tinyint(4) NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to states (id)',
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `enclosuremodels_id` (`enclosuremodels_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `group_id_tech` (`groups_id_tech`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `states_id` (`states_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_entities definition

CREATE TABLE `glpi_entities` (
  `id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned DEFAULT 0,
  `completename` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `sons_cache` longtext DEFAULT NULL,
  `ancestors_cache` longtext DEFAULT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `admin_email` varchar(255) DEFAULT NULL,
  `admin_email_name` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `from_email_name` varchar(255) DEFAULT NULL,
  `noreply_email` varchar(255) DEFAULT NULL,
  `noreply_email_name` varchar(255) DEFAULT NULL,
  `replyto_email` varchar(255) DEFAULT NULL,
  `replyto_email_name` varchar(255) DEFAULT NULL,
  `notification_subject_tag` varchar(255) DEFAULT NULL,
  `ldap_dn` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `authldaps_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mail_domain` varchar(255) DEFAULT NULL,
  `entity_ldapfilter` text DEFAULT NULL,
  `mailing_signature` text DEFAULT NULL,
  `cartridges_alert_repeat` int(11) NOT NULL DEFAULT -2,
  `consumables_alert_repeat` int(11) NOT NULL DEFAULT -2,
  `use_licenses_alert` int(11) NOT NULL DEFAULT -2,
  `send_licenses_alert_before_delay` int(11) NOT NULL DEFAULT -2,
  `use_certificates_alert` int(11) NOT NULL DEFAULT -2,
  `send_certificates_alert_before_delay` int(11) NOT NULL DEFAULT -2,
  `certificates_alert_repeat_interval` int(11) NOT NULL DEFAULT -2,
  `use_contracts_alert` int(11) NOT NULL DEFAULT -2,
  `send_contracts_alert_before_delay` int(11) NOT NULL DEFAULT -2,
  `use_infocoms_alert` int(11) NOT NULL DEFAULT -2,
  `send_infocoms_alert_before_delay` int(11) NOT NULL DEFAULT -2,
  `use_reservations_alert` int(11) NOT NULL DEFAULT -2,
  `use_domains_alert` int(11) NOT NULL DEFAULT -2,
  `send_domains_alert_close_expiries_delay` int(11) NOT NULL DEFAULT -2,
  `send_domains_alert_expired_delay` int(11) NOT NULL DEFAULT -2,
  `autoclose_delay` int(11) NOT NULL DEFAULT -2,
  `autopurge_delay` int(11) NOT NULL DEFAULT -10,
  `notclosed_delay` int(11) NOT NULL DEFAULT -2,
  `calendars_strategy` tinyint(4) NOT NULL DEFAULT -2,
  `calendars_id` int(10) unsigned NOT NULL DEFAULT 0,
  `auto_assign_mode` int(11) NOT NULL DEFAULT -2,
  `tickettype` int(11) NOT NULL DEFAULT -2,
  `max_closedate` timestamp NULL DEFAULT NULL,
  `inquest_config` int(11) NOT NULL DEFAULT -2,
  `inquest_rate` int(11) NOT NULL DEFAULT 0,
  `inquest_delay` int(11) NOT NULL DEFAULT -10,
  `inquest_URL` varchar(255) DEFAULT NULL,
  `autofill_warranty_date` varchar(255) NOT NULL DEFAULT '-2',
  `autofill_use_date` varchar(255) NOT NULL DEFAULT '-2',
  `autofill_buy_date` varchar(255) NOT NULL DEFAULT '-2',
  `autofill_delivery_date` varchar(255) NOT NULL DEFAULT '-2',
  `autofill_order_date` varchar(255) NOT NULL DEFAULT '-2',
  `tickettemplates_strategy` tinyint(4) NOT NULL DEFAULT -2,
  `tickettemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `changetemplates_strategy` tinyint(4) NOT NULL DEFAULT -2,
  `changetemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `problemtemplates_strategy` tinyint(4) NOT NULL DEFAULT -2,
  `problemtemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_strategy_software` tinyint(4) NOT NULL DEFAULT -2,
  `entities_id_software` int(10) unsigned NOT NULL DEFAULT 0,
  `default_contract_alert` int(11) NOT NULL DEFAULT -2,
  `default_infocom_alert` int(11) NOT NULL DEFAULT -2,
  `default_cartridges_alarm_threshold` int(11) NOT NULL DEFAULT -2,
  `default_consumables_alarm_threshold` int(11) NOT NULL DEFAULT -2,
  `delay_send_emails` int(11) NOT NULL DEFAULT -2,
  `is_notif_enable_default` int(11) NOT NULL DEFAULT -2,
  `inquest_duration` int(11) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `autofill_decommission_date` varchar(255) NOT NULL DEFAULT '-2',
  `suppliers_as_private` int(11) NOT NULL DEFAULT -2,
  `anonymize_support_agents` int(11) NOT NULL DEFAULT -2,
  `display_users_initials` int(11) NOT NULL DEFAULT -2,
  `contracts_strategy_default` tinyint(4) NOT NULL DEFAULT -2,
  `contracts_id_default` int(10) unsigned NOT NULL DEFAULT 0,
  `enable_custom_css` int(11) NOT NULL DEFAULT -2,
  `custom_css_code` text DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `altitude` varchar(255) DEFAULT NULL,
  `transfers_strategy` tinyint(4) NOT NULL DEFAULT -2,
  `transfers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `agent_base_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`name`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `tickettemplates_id` (`tickettemplates_id`),
  KEY `changetemplates_id` (`changetemplates_id`),
  KEY `problemtemplates_id` (`problemtemplates_id`),
  KEY `transfers_id` (`transfers_id`),
  KEY `authldaps_id` (`authldaps_id`),
  KEY `calendars_id` (`calendars_id`),
  KEY `entities_id_software` (`entities_id_software`),
  KEY `contracts_id_default` (`contracts_id_default`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_entities_knowbaseitems definition

CREATE TABLE `glpi_entities_knowbaseitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_entities_reminders definition

CREATE TABLE `glpi_entities_reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reminders_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_entities_rssfeeds definition

CREATE TABLE `glpi_entities_rssfeeds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_events definition

CREATE TABLE `glpi_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `message` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `level` (`level`),
  KEY `item` (`type`,`items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_fieldblacklists definition

CREATE TABLE `glpi_fieldblacklists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `field` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `itemtype` varchar(255) NOT NULL DEFAULT '',
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_fieldunicities definition

CREATE TABLE `glpi_fieldunicities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `itemtype` varchar(255) NOT NULL DEFAULT '',
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `fields` text DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `action_refuse` tinyint(4) NOT NULL DEFAULT 0,
  `action_notify` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Stores field unicity criterias';


-- glpi_dev.glpi_filesystems definition

CREATE TABLE `glpi_filesystems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_fqdns definition

CREATE TABLE `glpi_fqdns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `fqdn` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `fqdn` (`fqdn`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_groups definition

CREATE TABLE `glpi_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `ldap_field` varchar(255) DEFAULT NULL,
  `ldap_value` text DEFAULT NULL,
  `ldap_group_dn` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `completename` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `ancestors_cache` longtext DEFAULT NULL,
  `sons_cache` longtext DEFAULT NULL,
  `is_requester` tinyint(4) NOT NULL DEFAULT 1,
  `is_watcher` tinyint(4) NOT NULL DEFAULT 1,
  `is_assign` tinyint(4) NOT NULL DEFAULT 1,
  `is_task` tinyint(4) NOT NULL DEFAULT 1,
  `is_notify` tinyint(4) NOT NULL DEFAULT 1,
  `is_itemgroup` tinyint(4) NOT NULL DEFAULT 1,
  `is_usergroup` tinyint(4) NOT NULL DEFAULT 1,
  `is_manager` tinyint(4) NOT NULL DEFAULT 1,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `ldap_field` (`ldap_field`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `ldap_value` (`ldap_value`(200)),
  KEY `ldap_group_dn` (`ldap_group_dn`(200)),
  KEY `groups_id` (`groups_id`),
  KEY `is_requester` (`is_requester`),
  KEY `is_watcher` (`is_watcher`),
  KEY `is_assign` (`is_assign`),
  KEY `is_notify` (`is_notify`),
  KEY `is_itemgroup` (`is_itemgroup`),
  KEY `is_usergroup` (`is_usergroup`),
  KEY `is_manager` (`is_manager`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_groups_knowbaseitems definition

CREATE TABLE `glpi_groups_knowbaseitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `no_entity_restriction` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_groups_problems definition

CREATE TABLE `glpi_groups_problems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `problems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_groups_reminders definition

CREATE TABLE `glpi_groups_reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reminders_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `no_entity_restriction` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_groups_rssfeeds definition

CREATE TABLE `glpi_groups_rssfeeds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `no_entity_restriction` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `groups_id` (`groups_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_groups_tickets definition

CREATE TABLE `glpi_groups_tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`groups_id`),
  KEY `group` (`groups_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_groups_users definition

CREATE TABLE `glpi_groups_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `is_manager` tinyint(4) NOT NULL DEFAULT 0,
  `is_userdelegate` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`groups_id`),
  KEY `groups_id` (`groups_id`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `is_manager` (`is_manager`),
  KEY `is_userdelegate` (`is_userdelegate`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_holidays definition

CREATE TABLE `glpi_holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_perpetual` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `is_perpetual` (`is_perpetual`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_imageformats definition

CREATE TABLE `glpi_imageformats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_imageresolutions definition

CREATE TABLE `glpi_imageresolutions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `is_video` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `is_video` (`is_video`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_impactcompounds definition

CREATE TABLE `glpi_impactcompounds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `color` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_impactcontexts definition

CREATE TABLE `glpi_impactcontexts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `positions` mediumtext NOT NULL,
  `zoom` float NOT NULL DEFAULT 0,
  `pan_x` float NOT NULL DEFAULT 0,
  `pan_y` float NOT NULL DEFAULT 0,
  `impact_color` varchar(255) NOT NULL DEFAULT '',
  `depends_color` varchar(255) NOT NULL DEFAULT '',
  `impact_and_depends_color` varchar(255) NOT NULL DEFAULT '',
  `show_depends` tinyint(4) NOT NULL DEFAULT 1,
  `show_impact` tinyint(4) NOT NULL DEFAULT 1,
  `max_depth` int(11) NOT NULL DEFAULT 5,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_impactitems definition

CREATE TABLE `glpi_impactitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(255) NOT NULL DEFAULT '',
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `parent_id` int(10) unsigned NOT NULL DEFAULT 0,
  `impactcontexts_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_slave` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`),
  KEY `source` (`itemtype`,`items_id`),
  KEY `parent_id` (`parent_id`),
  KEY `impactcontexts_id` (`impactcontexts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_impactrelations definition

CREATE TABLE `glpi_impactrelations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype_source` varchar(255) NOT NULL DEFAULT '',
  `items_id_source` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype_impacted` varchar(255) NOT NULL DEFAULT '',
  `items_id_impacted` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype_source`,`items_id_source`,`itemtype_impacted`,`items_id_impacted`),
  KEY `impacted_asset` (`itemtype_impacted`,`items_id_impacted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_infocoms definition

CREATE TABLE `glpi_infocoms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `buy_date` date DEFAULT NULL,
  `use_date` date DEFAULT NULL,
  `warranty_duration` int(11) NOT NULL DEFAULT 0,
  `warranty_info` varchar(255) DEFAULT NULL,
  `suppliers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `order_number` varchar(255) DEFAULT NULL,
  `delivery_number` varchar(255) DEFAULT NULL,
  `immo_number` varchar(255) DEFAULT NULL,
  `value` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `warranty_value` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `sink_time` int(11) NOT NULL DEFAULT 0,
  `sink_type` int(11) NOT NULL DEFAULT 0,
  `sink_coeff` float NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `bill` varchar(255) DEFAULT NULL,
  `budgets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `alert` int(11) NOT NULL DEFAULT 0,
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `inventory_date` date DEFAULT NULL,
  `warranty_date` date DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `decommission_date` timestamp NULL DEFAULT NULL,
  `businesscriticities_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`),
  KEY `buy_date` (`buy_date`),
  KEY `alert` (`alert`),
  KEY `budgets_id` (`budgets_id`),
  KEY `suppliers_id` (`suppliers_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `businesscriticities_id` (`businesscriticities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_interfacetypes definition

CREATE TABLE `glpi_interfacetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_ipaddresses definition

CREATE TABLE `glpi_ipaddresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `version` tinyint(3) unsigned DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `binary_0` int(10) unsigned NOT NULL DEFAULT 0,
  `binary_1` int(10) unsigned NOT NULL DEFAULT 0,
  `binary_2` int(10) unsigned NOT NULL DEFAULT 0,
  `binary_3` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `mainitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mainitemtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `binary` (`binary_0`,`binary_1`,`binary_2`,`binary_3`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  KEY `mainitem` (`mainitemtype`,`mainitems_id`,`is_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_ipaddresses_ipnetworks definition

CREATE TABLE `glpi_ipaddresses_ipnetworks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddresses_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ipnetworks_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`ipaddresses_id`,`ipnetworks_id`),
  KEY `ipnetworks_id` (`ipnetworks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_ipnetworks definition

CREATE TABLE `glpi_ipnetworks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `ipnetworks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `completename` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `ancestors_cache` longtext DEFAULT NULL,
  `sons_cache` longtext DEFAULT NULL,
  `addressable` tinyint(4) NOT NULL DEFAULT 0,
  `version` tinyint(3) unsigned DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `address_0` int(10) unsigned NOT NULL DEFAULT 0,
  `address_1` int(10) unsigned NOT NULL DEFAULT 0,
  `address_2` int(10) unsigned NOT NULL DEFAULT 0,
  `address_3` int(10) unsigned NOT NULL DEFAULT 0,
  `netmask` varchar(40) DEFAULT NULL,
  `netmask_0` int(10) unsigned NOT NULL DEFAULT 0,
  `netmask_1` int(10) unsigned NOT NULL DEFAULT 0,
  `netmask_2` int(10) unsigned NOT NULL DEFAULT 0,
  `netmask_3` int(10) unsigned NOT NULL DEFAULT 0,
  `gateway` varchar(40) DEFAULT NULL,
  `gateway_0` int(10) unsigned NOT NULL DEFAULT 0,
  `gateway_1` int(10) unsigned NOT NULL DEFAULT 0,
  `gateway_2` int(10) unsigned NOT NULL DEFAULT 0,
  `gateway_3` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `network_definition` (`entities_id`,`address`,`netmask`),
  KEY `address` (`address_0`,`address_1`,`address_2`,`address_3`),
  KEY `netmask` (`netmask_0`,`netmask_1`,`netmask_2`,`netmask_3`),
  KEY `gateway` (`gateway_0`,`gateway_1`,`gateway_2`,`gateway_3`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `ipnetworks_id` (`ipnetworks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_ipnetworks_vlans definition

CREATE TABLE `glpi_ipnetworks_vlans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipnetworks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `vlans_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`ipnetworks_id`,`vlans_id`),
  KEY `vlans_id` (`vlans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_clusters definition

CREATE TABLE `glpi_items_clusters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clusters_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`clusters_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicebatteries definition

CREATE TABLE `glpi_items_devicebatteries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicebatteries_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manufacturing_date` date DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `real_capacity` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicebatteries_id` (`devicebatteries_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicecameras definition

CREATE TABLE `glpi_items_devicecameras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicecameras_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `items_id` (`items_id`),
  KEY `devicecameras_id` (`devicecameras_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicecameras_imageformats definition

CREATE TABLE `glpi_items_devicecameras_imageformats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_devicecameras_id` int(10) unsigned NOT NULL DEFAULT 0,
  `imageformats_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `item_devicecameras_id` (`item_devicecameras_id`),
  KEY `imageformats_id` (`imageformats_id`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicecameras_imageresolutions definition

CREATE TABLE `glpi_items_devicecameras_imageresolutions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_devicecameras_id` int(10) unsigned NOT NULL DEFAULT 0,
  `imageresolutions_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `item_devicecameras_id` (`item_devicecameras_id`),
  KEY `imageresolutions_id` (`imageresolutions_id`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicecases definition

CREATE TABLE `glpi_items_devicecases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicecases_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicecases_id` (`devicecases_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicecontrols definition

CREATE TABLE `glpi_items_devicecontrols` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicecontrols_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicecontrols_id` (`devicecontrols_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicedrives definition

CREATE TABLE `glpi_items_devicedrives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicedrives_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicedrives_id` (`devicedrives_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicefirmwares definition

CREATE TABLE `glpi_items_devicefirmwares` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicefirmwares_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicefirmwares_id` (`devicefirmwares_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicegenerics definition

CREATE TABLE `glpi_items_devicegenerics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicegenerics_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicegenerics_id` (`devicegenerics_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicegraphiccards definition

CREATE TABLE `glpi_items_devicegraphiccards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicegraphiccards_id` int(10) unsigned NOT NULL DEFAULT 0,
  `memory` int(11) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicegraphiccards_id` (`devicegraphiccards_id`),
  KEY `specificity` (`memory`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_deviceharddrives definition

CREATE TABLE `glpi_items_deviceharddrives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `deviceharddrives_id` int(10) unsigned NOT NULL DEFAULT 0,
  `capacity` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deviceharddrives_id` (`deviceharddrives_id`),
  KEY `specificity` (`capacity`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicememories definition

CREATE TABLE `glpi_items_devicememories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicememories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicememories_id` (`devicememories_id`),
  KEY `specificity` (`size`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicemotherboards definition

CREATE TABLE `glpi_items_devicemotherboards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicemotherboards_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicemotherboards_id` (`devicemotherboards_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicenetworkcards definition

CREATE TABLE `glpi_items_devicenetworkcards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicenetworkcards_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mac` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicenetworkcards_id` (`devicenetworkcards_id`),
  KEY `specificity` (`mac`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicepcis definition

CREATE TABLE `glpi_items_devicepcis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicepcis_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicepcis_id` (`devicepcis_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicepowersupplies definition

CREATE TABLE `glpi_items_devicepowersupplies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicepowersupplies_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicepowersupplies_id` (`devicepowersupplies_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_deviceprocessors definition

CREATE TABLE `glpi_items_deviceprocessors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `deviceprocessors_id` int(10) unsigned NOT NULL DEFAULT 0,
  `frequency` int(11) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `nbcores` int(11) DEFAULT NULL,
  `nbthreads` int(11) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `deviceprocessors_id` (`deviceprocessors_id`),
  KEY `specificity` (`frequency`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `nbcores` (`nbcores`),
  KEY `nbthreads` (`nbthreads`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicesensors definition

CREATE TABLE `glpi_items_devicesensors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicesensors_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicesensors_id` (`devicesensors_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicesimcards definition

CREATE TABLE `glpi_items_devicesimcards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to various table, according to itemtype (id)',
  `itemtype` varchar(100) NOT NULL,
  `devicesimcards_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lines_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `pin` varchar(255) NOT NULL DEFAULT '',
  `pin2` varchar(255) NOT NULL DEFAULT '',
  `puk` varchar(255) NOT NULL DEFAULT '',
  `puk2` varchar(255) NOT NULL DEFAULT '',
  `msin` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `devicesimcards_id` (`devicesimcards_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `states_id` (`states_id`),
  KEY `locations_id` (`locations_id`),
  KEY `lines_id` (`lines_id`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_devicesoundcards definition

CREATE TABLE `glpi_items_devicesoundcards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `devicesoundcards_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `busID` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `devicesoundcards_id` (`devicesoundcards_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `serial` (`serial`),
  KEY `busID` (`busID`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `otherserial` (`otherserial`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_disks definition

CREATE TABLE `glpi_items_disks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `mountpoint` varchar(255) DEFAULT NULL,
  `filesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `totalsize` int(11) NOT NULL DEFAULT 0,
  `freesize` int(11) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `encryption_status` int(11) NOT NULL DEFAULT 0,
  `encryption_tool` varchar(255) DEFAULT NULL,
  `encryption_algorithm` varchar(255) DEFAULT NULL,
  `encryption_type` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `device` (`device`),
  KEY `mountpoint` (`mountpoint`),
  KEY `totalsize` (`totalsize`),
  KEY `freesize` (`freesize`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `filesystems_id` (`filesystems_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_enclosures definition

CREATE TABLE `glpi_items_enclosures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enclosures_id` int(10) unsigned NOT NULL,
  `itemtype` varchar(255) NOT NULL,
  `items_id` int(10) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`itemtype`,`items_id`),
  KEY `relation` (`enclosures_id`,`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_kanbans definition

CREATE TABLE `glpi_items_kanbans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) NOT NULL,
  `items_id` int(10) unsigned DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `state` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`users_id`),
  KEY `users_id` (`users_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_operatingsystems definition

CREATE TABLE `glpi_items_operatingsystems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `operatingsystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `operatingsystemversions_id` int(10) unsigned NOT NULL DEFAULT 0,
  `operatingsystemservicepacks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `operatingsystemarchitectures_id` int(10) unsigned NOT NULL DEFAULT 0,
  `operatingsystemkernelversions_id` int(10) unsigned NOT NULL DEFAULT 0,
  `license_number` varchar(255) DEFAULT NULL,
  `licenseid` varchar(255) DEFAULT NULL,
  `operatingsystemeditions_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`items_id`,`itemtype`,`operatingsystems_id`,`operatingsystemarchitectures_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `operatingsystems_id` (`operatingsystems_id`),
  KEY `operatingsystemservicepacks_id` (`operatingsystemservicepacks_id`),
  KEY `operatingsystemversions_id` (`operatingsystemversions_id`),
  KEY `operatingsystemarchitectures_id` (`operatingsystemarchitectures_id`),
  KEY `operatingsystemkernelversions_id` (`operatingsystemkernelversions_id`),
  KEY `operatingsystemeditions_id` (`operatingsystemeditions_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_problems definition

CREATE TABLE `glpi_items_problems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `problems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_projects definition

CREATE TABLE `glpi_items_projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `projects_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`projects_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_racks definition

CREATE TABLE `glpi_items_racks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `racks_id` int(10) unsigned NOT NULL,
  `itemtype` varchar(255) NOT NULL,
  `items_id` int(10) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  `orientation` tinyint(4) DEFAULT NULL,
  `bgcolor` varchar(7) DEFAULT NULL,
  `hpos` tinyint(4) NOT NULL DEFAULT 0,
  `is_reserved` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`itemtype`,`items_id`,`is_reserved`),
  KEY `relation` (`racks_id`,`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_remotemanagements definition

CREATE TABLE `glpi_items_remotemanagements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `remoteid` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_softwarelicenses definition

CREATE TABLE `glpi_items_softwarelicenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `softwarelicenses_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `softwarelicenses_id` (`softwarelicenses_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_softwareversions definition

CREATE TABLE `glpi_items_softwareversions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `softwareversions_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted_item` tinyint(4) NOT NULL DEFAULT 0,
  `is_template_item` tinyint(4) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `date_install` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`softwareversions_id`),
  KEY `softwareversions_id` (`softwareversions_id`),
  KEY `computers_info` (`entities_id`,`is_template_item`,`is_deleted_item`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `is_deleted_item` (`is_deleted_item`),
  KEY `is_template_item` (`is_template_item`),
  KEY `date_install` (`date_install`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_items_tickets definition

CREATE TABLE `glpi_items_tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(255) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`tickets_id`),
  KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_itilcategories definition

CREATE TABLE `glpi_itilcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `itilcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `completename` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `knowbaseitemcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `code` varchar(255) DEFAULT NULL,
  `ancestors_cache` longtext DEFAULT NULL,
  `sons_cache` longtext DEFAULT NULL,
  `is_helpdeskvisible` tinyint(4) NOT NULL DEFAULT 1,
  `tickettemplates_id_incident` int(10) unsigned NOT NULL DEFAULT 0,
  `tickettemplates_id_demand` int(10) unsigned NOT NULL DEFAULT 0,
  `changetemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `problemtemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_incident` int(11) NOT NULL DEFAULT 1,
  `is_request` int(11) NOT NULL DEFAULT 1,
  `is_problem` int(11) NOT NULL DEFAULT 1,
  `is_change` tinyint(4) NOT NULL DEFAULT 1,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `is_helpdeskvisible` (`is_helpdeskvisible`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `tickettemplates_id_incident` (`tickettemplates_id_incident`),
  KEY `tickettemplates_id_demand` (`tickettemplates_id_demand`),
  KEY `changetemplates_id` (`changetemplates_id`),
  KEY `problemtemplates_id` (`problemtemplates_id`),
  KEY `is_incident` (`is_incident`),
  KEY `is_request` (`is_request`),
  KEY `is_problem` (`is_problem`),
  KEY `is_change` (`is_change`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_itilfollowups definition

CREATE TABLE `glpi_itilfollowups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) NOT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_editor` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `is_private` tinyint(4) NOT NULL DEFAULT 0,
  `requesttypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `timeline_position` tinyint(4) NOT NULL DEFAULT 0,
  `sourceitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sourceof_items_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `is_private` (`is_private`),
  KEY `requesttypes_id` (`requesttypes_id`),
  KEY `sourceitems_id` (`sourceitems_id`),
  KEY `sourceof_items_id` (`sourceof_items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_itilfollowuptemplates definition

CREATE TABLE `glpi_itilfollowuptemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `requesttypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_private` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `requesttypes_id` (`requesttypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `is_private` (`is_private`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_itils_projects definition

CREATE TABLE `glpi_itils_projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) NOT NULL DEFAULT '',
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `projects_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`projects_id`),
  KEY `projects_id` (`projects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_itilsolutions definition

CREATE TABLE `glpi_itilsolutions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) NOT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `solutiontypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `solutiontype_name` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_approval` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `user_name` varchar(255) DEFAULT NULL,
  `users_id_editor` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_approval` int(10) unsigned NOT NULL DEFAULT 0,
  `user_name_approval` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `itilfollowups_id` int(10) unsigned DEFAULT NULL COMMENT 'Followup reference on reject or approve a solution',
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `users_id_approval` (`users_id_approval`),
  KEY `status` (`status`),
  KEY `itilfollowups_id` (`itilfollowups_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_knowbaseitemcategories definition

CREATE TABLE `glpi_knowbaseitemcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `knowbaseitemcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `completename` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `sons_cache` longtext DEFAULT NULL,
  `ancestors_cache` longtext DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`knowbaseitemcategories_id`,`name`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_knowbaseitems definition

CREATE TABLE `glpi_knowbaseitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `is_faq` tinyint(4) NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `view` int(11) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `begin_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `is_faq` (`is_faq`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  FULLTEXT KEY `fulltext` (`name`,`answer`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `answer` (`answer`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_knowbaseitems_comments definition

CREATE TABLE `glpi_knowbaseitems_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(10) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `parent_comment_id` int(10) unsigned DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `parent_comment_id` (`parent_comment_id`),
  KEY `users_id` (`users_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_knowbaseitems_items definition

CREATE TABLE `glpi_knowbaseitems_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(10) unsigned NOT NULL,
  `itemtype` varchar(100) NOT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`knowbaseitems_id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_knowbaseitems_knowbaseitemcategories definition

CREATE TABLE `glpi_knowbaseitems_knowbaseitemcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `knowbaseitemcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_knowbaseitems_profiles definition

CREATE TABLE `glpi_knowbaseitems_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `profiles_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `no_entity_restriction` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_knowbaseitems_revisions definition

CREATE TABLE `glpi_knowbaseitems_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(10) unsigned NOT NULL,
  `revision` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`knowbaseitems_id`,`revision`,`language`),
  KEY `revision` (`revision`),
  KEY `users_id` (`users_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_knowbaseitems_users definition

CREATE TABLE `glpi_knowbaseitems_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `knowbaseitems_id` (`knowbaseitems_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_knowbaseitemtranslations definition

CREATE TABLE `glpi_knowbaseitemtranslations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `knowbaseitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(10) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`knowbaseitems_id`,`language`),
  KEY `users_id` (`users_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`),
  FULLTEXT KEY `fulltext` (`name`,`answer`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `answer` (`answer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_lineoperators definition

CREATE TABLE `glpi_lineoperators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `comment` text DEFAULT NULL,
  `mcc` int(11) DEFAULT NULL,
  `mnc` int(11) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`mcc`,`mnc`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_lines definition

CREATE TABLE `glpi_lines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `caller_num` varchar(255) NOT NULL DEFAULT '',
  `caller_name` varchar(255) NOT NULL DEFAULT '',
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `lineoperators_id` int(10) unsigned NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `linetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `users_id` (`users_id`),
  KEY `lineoperators_id` (`lineoperators_id`),
  KEY `groups_id` (`groups_id`),
  KEY `linetypes_id` (`linetypes_id`),
  KEY `locations_id` (`locations_id`),
  KEY `states_id` (`states_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_linetypes definition

CREATE TABLE `glpi_linetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_links definition

CREATE TABLE `glpi_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 1,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `open_window` tinyint(4) NOT NULL DEFAULT 1,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_links_itemtypes definition

CREATE TABLE `glpi_links_itemtypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `links_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`links_id`),
  KEY `links_id` (`links_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_locations definition

CREATE TABLE `glpi_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `completename` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `ancestors_cache` longtext DEFAULT NULL,
  `sons_cache` longtext DEFAULT NULL,
  `address` text DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `building` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `altitude` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`entities_id`,`locations_id`,`name`),
  KEY `locations_id` (`locations_id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_lockedfields definition

CREATE TABLE `glpi_lockedfields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `field` varchar(50) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `is_global` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`field`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `is_global` (`is_global`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_logs definition

CREATE TABLE `glpi_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) NOT NULL DEFAULT '',
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype_link` varchar(100) NOT NULL DEFAULT '',
  `linked_action` int(11) NOT NULL DEFAULT 0 COMMENT 'see define.php HISTORY_* constant',
  `user_name` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `id_search_option` int(11) NOT NULL DEFAULT 0 COMMENT 'see search.constant.php for value',
  `old_value` varchar(255) DEFAULT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `itemtype_link` (`itemtype_link`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `id_search_option` (`id_search_option`)
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_mailcollectors definition

CREATE TABLE `glpi_mailcollectors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `filesize_max` int(11) NOT NULL DEFAULT 2097152,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `accepted` varchar(255) DEFAULT NULL,
  `refused` varchar(255) DEFAULT NULL,
  `errors` int(11) NOT NULL DEFAULT 0,
  `use_mail_date` tinyint(4) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `requester_field` int(11) NOT NULL DEFAULT 0,
  `add_cc_to_observer` tinyint(4) NOT NULL DEFAULT 0,
  `collect_only_unread` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_manuallinks definition

CREATE TABLE `glpi_manuallinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(8096) NOT NULL,
  `open_window` tinyint(4) NOT NULL DEFAULT 1,
  `icon` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `items_id` (`items_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_manufacturers definition

CREATE TABLE `glpi_manufacturers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_monitormodels definition

CREATE TABLE `glpi_monitormodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `required_units` int(11) NOT NULL DEFAULT 1,
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT 0,
  `power_consumption` int(11) NOT NULL DEFAULT 0,
  `is_half_rack` tinyint(4) NOT NULL DEFAULT 0,
  `picture_front` text DEFAULT NULL,
  `picture_rear` text DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_monitors definition

CREATE TABLE `glpi_monitors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `size` decimal(5,2) NOT NULL DEFAULT 0.00,
  `have_micro` tinyint(4) NOT NULL DEFAULT 0,
  `have_speaker` tinyint(4) NOT NULL DEFAULT 0,
  `have_subd` tinyint(4) NOT NULL DEFAULT 0,
  `have_bnc` tinyint(4) NOT NULL DEFAULT 0,
  `have_dvi` tinyint(4) NOT NULL DEFAULT 0,
  `have_pivot` tinyint(4) NOT NULL DEFAULT 0,
  `have_hdmi` tinyint(4) NOT NULL DEFAULT 0,
  `have_displayport` tinyint(4) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `monitortypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `monitormodels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_global` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ticket_tco` decimal(20,4) DEFAULT 0.0000,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `autoupdatesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `uuid` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `monitormodels_id` (`monitormodels_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `monitortypes_id` (`monitortypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `uuid` (`uuid`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_monitortypes definition

CREATE TABLE `glpi_monitortypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkaliases definition

CREATE TABLE `glpi_networkaliases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networknames_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `fqdns_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `name` (`name`),
  KEY `networknames_id` (`networknames_id`),
  KEY `fqdns_id` (`fqdns_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkequipmentmodels definition

CREATE TABLE `glpi_networkequipmentmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `required_units` int(11) NOT NULL DEFAULT 1,
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT 0,
  `power_consumption` int(11) NOT NULL DEFAULT 0,
  `is_half_rack` tinyint(4) NOT NULL DEFAULT 0,
  `picture_front` text DEFAULT NULL,
  `picture_rear` text DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkequipments definition

CREATE TABLE `glpi_networkequipments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networkequipmenttypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networkequipmentmodels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ticket_tco` decimal(20,4) DEFAULT 0.0000,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `uuid` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `autoupdatesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sysdescr` text DEFAULT NULL,
  `cpu` int(11) NOT NULL DEFAULT 0,
  `uptime` varchar(255) NOT NULL DEFAULT '0',
  `last_inventory_update` timestamp NULL DEFAULT NULL,
  `snmpcredentials_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `networkequipmentmodels_id` (`networkequipmentmodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `networkequipmenttypes_id` (`networkequipmenttypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `uuid` (`uuid`),
  KEY `date_creation` (`date_creation`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `snmpcredentials_id` (`snmpcredentials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkequipmenttypes definition

CREATE TABLE `glpi_networkequipmenttypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkinterfaces definition

CREATE TABLE `glpi_networkinterfaces` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networknames definition

CREATE TABLE `glpi_networknames` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `fqdns_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ipnetworks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `FQDN` (`name`,`fqdns_id`),
  KEY `fqdns_id` (`fqdns_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `item` (`itemtype`,`items_id`,`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `ipnetworks_id` (`ipnetworks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkportaggregates definition

CREATE TABLE `glpi_networkportaggregates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `networkports_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networkports_id_list` text DEFAULT NULL COMMENT 'array of associated networkports_id',
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkportaliases definition

CREATE TABLE `glpi_networkportaliases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `networkports_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networkports_id_alias` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `networkports_id_alias` (`networkports_id_alias`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkportconnectionlogs definition

CREATE TABLE `glpi_networkportconnectionlogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT NULL,
  `connected` tinyint(4) NOT NULL DEFAULT 0,
  `networkports_id_source` int(10) unsigned NOT NULL DEFAULT 0,
  `networkports_id_destination` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `networkports_id_source` (`networkports_id_source`),
  KEY `networkports_id_destination` (`networkports_id_destination`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkportdialups definition

CREATE TABLE `glpi_networkportdialups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `networkports_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkportethernets definition

CREATE TABLE `glpi_networkportethernets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `networkports_id` int(10) unsigned NOT NULL DEFAULT 0,
  `items_devicenetworkcards_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` varchar(10) DEFAULT '' COMMENT 'T, LX, SX',
  `speed` int(11) NOT NULL DEFAULT 10 COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `card` (`items_devicenetworkcards_id`),
  KEY `type` (`type`),
  KEY `speed` (`speed`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkportfiberchannels definition

CREATE TABLE `glpi_networkportfiberchannels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `networkports_id` int(10) unsigned NOT NULL DEFAULT 0,
  `items_devicenetworkcards_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networkportfiberchanneltypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `wwn` varchar(16) DEFAULT '',
  `speed` int(11) NOT NULL DEFAULT 10 COMMENT 'Mbit/s: 10, 100, 1000, 10000',
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `card` (`items_devicenetworkcards_id`),
  KEY `type` (`networkportfiberchanneltypes_id`),
  KEY `wwn` (`wwn`),
  KEY `speed` (`speed`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkportfiberchanneltypes definition

CREATE TABLE `glpi_networkportfiberchanneltypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkportlocals definition

CREATE TABLE `glpi_networkportlocals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `networkports_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkportmetrics definition

CREATE TABLE `glpi_networkportmetrics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `ifinbytes` bigint(20) NOT NULL DEFAULT 0,
  `ifinerrors` bigint(20) NOT NULL DEFAULT 0,
  `ifoutbytes` bigint(20) NOT NULL DEFAULT 0,
  `ifouterrors` bigint(20) NOT NULL DEFAULT 0,
  `networkports_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`networkports_id`,`date`),
  KEY `date` (`date`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkports definition

CREATE TABLE `glpi_networkports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `logical_number` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `instantiation_type` varchar(255) DEFAULT NULL,
  `mac` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `ifmtu` int(11) NOT NULL DEFAULT 0,
  `ifspeed` bigint(20) NOT NULL DEFAULT 0,
  `ifinternalstatus` varchar(255) DEFAULT NULL,
  `ifconnectionstatus` int(11) NOT NULL DEFAULT 0,
  `iflastchange` varchar(255) DEFAULT NULL,
  `ifinbytes` bigint(20) NOT NULL DEFAULT 0,
  `ifinerrors` bigint(20) NOT NULL DEFAULT 0,
  `ifoutbytes` bigint(20) NOT NULL DEFAULT 0,
  `ifouterrors` bigint(20) NOT NULL DEFAULT 0,
  `ifstatus` varchar(255) DEFAULT NULL,
  `ifdescr` varchar(255) DEFAULT NULL,
  `ifalias` varchar(255) DEFAULT NULL,
  `portduplex` varchar(255) DEFAULT NULL,
  `trunk` tinyint(4) NOT NULL DEFAULT 0,
  `lastup` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `mac` (`mac`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkports_networkports definition

CREATE TABLE `glpi_networkports_networkports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `networkports_id_1` int(10) unsigned NOT NULL DEFAULT 0,
  `networkports_id_2` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`networkports_id_1`,`networkports_id_2`),
  KEY `networkports_id_2` (`networkports_id_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkports_vlans definition

CREATE TABLE `glpi_networkports_vlans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `networkports_id` int(10) unsigned NOT NULL DEFAULT 0,
  `vlans_id` int(10) unsigned NOT NULL DEFAULT 0,
  `tagged` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`networkports_id`,`vlans_id`),
  KEY `vlans_id` (`vlans_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkporttypes definition

CREATE TABLE `glpi_networkporttypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `value_decimal` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_importable` tinyint(4) NOT NULL DEFAULT 0,
  `instantiation_type` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `value_decimal` (`value_decimal`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_importable` (`is_importable`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networkportwifis definition

CREATE TABLE `glpi_networkportwifis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `networkports_id` int(10) unsigned NOT NULL DEFAULT 0,
  `items_devicenetworkcards_id` int(10) unsigned NOT NULL DEFAULT 0,
  `wifinetworks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networkportwifis_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'only useful in case of Managed node',
  `version` varchar(20) DEFAULT NULL COMMENT 'a, a/b, a/b/g, a/b/g/n, a/b/g/n/y',
  `mode` varchar(20) DEFAULT NULL COMMENT 'ad-hoc, managed, master, repeater, secondary, monitor, auto',
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `networkports_id` (`networkports_id`),
  KEY `card` (`items_devicenetworkcards_id`),
  KEY `essid` (`wifinetworks_id`),
  KEY `version` (`version`),
  KEY `mode` (`mode`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `networkportwifis_id` (`networkportwifis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_networks definition

CREATE TABLE `glpi_networks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_notepads definition

CREATE TABLE `glpi_notepads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_lastupdater` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_notifications definition

CREATE TABLE `glpi_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `event` varchar(255) NOT NULL,
  `comment` text DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `allow_response` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `itemtype` (`itemtype`),
  KEY `entities_id` (`entities_id`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_notifications_notificationtemplates definition

CREATE TABLE `glpi_notifications_notificationtemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notifications_id` int(10) unsigned NOT NULL DEFAULT 0,
  `mode` varchar(20) NOT NULL COMMENT 'See Notification_NotificationTemplate::MODE_* constants',
  `notificationtemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`notifications_id`,`mode`,`notificationtemplates_id`),
  KEY `notificationtemplates_id` (`notificationtemplates_id`),
  KEY `mode` (`mode`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_notificationtargets definition

CREATE TABLE `glpi_notificationtargets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `notifications_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `items` (`type`,`items_id`),
  KEY `notifications_id` (`notifications_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_notificationtemplates definition

CREATE TABLE `glpi_notificationtemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `itemtype` varchar(100) NOT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `css` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `itemtype` (`itemtype`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_notificationtemplatetranslations definition

CREATE TABLE `glpi_notificationtemplatetranslations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notificationtemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL,
  `content_text` text DEFAULT NULL,
  `content_html` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notificationtemplates_id` (`notificationtemplates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_notimportedemails definition

CREATE TABLE `glpi_notimportedemails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `mailcollectors_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `subject` text DEFAULT NULL,
  `messageid` varchar(255) NOT NULL,
  `reason` int(11) NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`),
  KEY `mailcollectors_id` (`mailcollectors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_objectlocks definition

CREATE TABLE `glpi_objectlocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) NOT NULL COMMENT 'Type of locked object',
  `items_id` int(10) unsigned NOT NULL COMMENT 'RELATION to various tables, according to itemtype (ID)',
  `users_id` int(10) unsigned NOT NULL COMMENT 'id of the locker',
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `item` (`itemtype`,`items_id`),
  KEY `users_id` (`users_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_olalevelactions definition

CREATE TABLE `glpi_olalevelactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `olalevels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `action_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `olalevels_id` (`olalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_olalevelcriterias definition

CREATE TABLE `glpi_olalevelcriterias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `olalevels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `criteria` varchar(255) DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT 0 COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `olalevels_id` (`olalevels_id`),
  KEY `condition` (`condition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_olalevels definition

CREATE TABLE `glpi_olalevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `olas_id` int(10) unsigned NOT NULL DEFAULT 0,
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `match` char(10) DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `olas_id` (`olas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_olalevels_tickets definition

CREATE TABLE `glpi_olalevels_tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `olalevels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`olalevels_id`),
  KEY `olalevels_id` (`olalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_olas definition

CREATE TABLE `glpi_olas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `number_time` int(11) NOT NULL,
  `use_ticket_calendar` tinyint(4) NOT NULL DEFAULT 0,
  `calendars_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `definition_time` varchar(255) DEFAULT NULL,
  `end_of_working_day` tinyint(4) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `slms_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `calendars_id` (`calendars_id`),
  KEY `slms_id` (`slms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_operatingsystemarchitectures definition

CREATE TABLE `glpi_operatingsystemarchitectures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_operatingsystemeditions definition

CREATE TABLE `glpi_operatingsystemeditions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_operatingsystemkernels definition

CREATE TABLE `glpi_operatingsystemkernels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_operatingsystemkernelversions definition

CREATE TABLE `glpi_operatingsystemkernelversions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operatingsystemkernels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `operatingsystemkernels_id` (`operatingsystemkernels_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_operatingsystems definition

CREATE TABLE `glpi_operatingsystems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_operatingsystemservicepacks definition

CREATE TABLE `glpi_operatingsystemservicepacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_operatingsystemversions definition

CREATE TABLE `glpi_operatingsystemversions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_passivedcequipmentmodels definition

CREATE TABLE `glpi_passivedcequipmentmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `required_units` int(11) NOT NULL DEFAULT 1,
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT 0,
  `power_consumption` int(11) NOT NULL DEFAULT 0,
  `is_half_rack` tinyint(4) NOT NULL DEFAULT 0,
  `picture_front` text DEFAULT NULL,
  `picture_rear` text DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_passivedcequipments definition

CREATE TABLE `glpi_passivedcequipments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `passivedcequipmentmodels_id` int(10) unsigned DEFAULT NULL,
  `passivedcequipmenttypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to states (id)',
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `passivedcequipmentmodels_id` (`passivedcequipmentmodels_id`),
  KEY `passivedcequipmenttypes_id` (`passivedcequipmenttypes_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `group_id_tech` (`groups_id_tech`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `states_id` (`states_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_passivedcequipmenttypes definition

CREATE TABLE `glpi_passivedcequipmenttypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_pcivendors definition

CREATE TABLE `glpi_pcivendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `vendorid` varchar(4) NOT NULL,
  `deviceid` varchar(4) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`vendorid`,`deviceid`),
  KEY `deviceid` (`deviceid`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_pdumodels definition

CREATE TABLE `glpi_pdumodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `required_units` int(11) NOT NULL DEFAULT 1,
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT 0,
  `max_power` int(11) NOT NULL DEFAULT 0,
  `is_half_rack` tinyint(4) NOT NULL DEFAULT 0,
  `picture_front` text DEFAULT NULL,
  `picture_rear` text DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  `is_rackable` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_rackable` (`is_rackable`),
  KEY `product_number` (`product_number`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_pdus definition

CREATE TABLE `glpi_pdus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `pdumodels_id` int(10) unsigned DEFAULT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'RELATION to states (id)',
  `comment` text DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `pdutypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `pdumodels_id` (`pdumodels_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `group_id_tech` (`groups_id_tech`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `states_id` (`states_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `pdutypes_id` (`pdutypes_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_pdus_plugs definition

CREATE TABLE `glpi_pdus_plugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugs_id` int(10) unsigned NOT NULL DEFAULT 0,
  `pdus_id` int(10) unsigned NOT NULL DEFAULT 0,
  `number_plugs` int(11) DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `plugs_id` (`plugs_id`),
  KEY `pdus_id` (`pdus_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_pdus_racks definition

CREATE TABLE `glpi_pdus_racks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `racks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `pdus_id` int(10) unsigned NOT NULL DEFAULT 0,
  `side` int(11) DEFAULT 0,
  `position` int(11) NOT NULL,
  `bgcolor` varchar(7) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `racks_id` (`racks_id`),
  KEY `pdus_id` (`pdus_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_pdutypes definition

CREATE TABLE `glpi_pdutypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_pendingreasons definition

CREATE TABLE `glpi_pendingreasons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `followup_frequency` int(11) NOT NULL DEFAULT 0,
  `followups_before_resolution` int(11) NOT NULL DEFAULT 0,
  `itilfollowuptemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `solutiontemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `itilfollowuptemplates_id` (`itilfollowuptemplates_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `solutiontemplates_id` (`solutiontemplates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_pendingreasons_items definition

CREATE TABLE `glpi_pendingreasons_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pendingreasons_id` int(10) unsigned NOT NULL DEFAULT 0,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL DEFAULT '',
  `followup_frequency` int(11) NOT NULL DEFAULT 0,
  `followups_before_resolution` int(11) NOT NULL DEFAULT 0,
  `bump_count` int(11) NOT NULL DEFAULT 0,
  `last_bump_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`items_id`,`itemtype`),
  KEY `pendingreasons_id` (`pendingreasons_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_peripheralmodels definition

CREATE TABLE `glpi_peripheralmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `required_units` int(11) NOT NULL DEFAULT 1,
  `depth` float NOT NULL DEFAULT 1,
  `power_connections` int(11) NOT NULL DEFAULT 0,
  `power_consumption` int(11) NOT NULL DEFAULT 0,
  `is_half_rack` tinyint(4) NOT NULL DEFAULT 0,
  `picture_front` text DEFAULT NULL,
  `picture_rear` text DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_peripherals definition

CREATE TABLE `glpi_peripherals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `peripheraltypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `peripheralmodels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `brand` varchar(255) DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_global` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ticket_tco` decimal(20,4) DEFAULT 0.0000,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `autoupdatesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `uuid` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `peripheralmodels_id` (`peripheralmodels_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `peripheraltypes_id` (`peripheraltypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `uuid` (`uuid`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_peripheraltypes definition

CREATE TABLE `glpi_peripheraltypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_phonemodels definition

CREATE TABLE `glpi_phonemodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `picture_front` text DEFAULT NULL,
  `picture_rear` text DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_phonepowersupplies definition

CREATE TABLE `glpi_phonepowersupplies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_phones definition

CREATE TABLE `glpi_phones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `phonetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `phonemodels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `brand` varchar(255) DEFAULT NULL,
  `phonepowersupplies_id` int(10) unsigned NOT NULL DEFAULT 0,
  `number_line` varchar(255) DEFAULT NULL,
  `have_headset` tinyint(4) NOT NULL DEFAULT 0,
  `have_hp` tinyint(4) NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_global` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ticket_tco` decimal(20,4) DEFAULT 0.0000,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `autoupdatesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `uuid` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `last_inventory_update` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `phonemodels_id` (`phonemodels_id`),
  KEY `phonepowersupplies_id` (`phonepowersupplies_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `phonetypes_id` (`phonetypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `uuid` (`uuid`),
  KEY `date_creation` (`date_creation`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_phonetypes definition

CREATE TABLE `glpi_phonetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_planningeventcategories definition

CREATE TABLE `glpi_planningeventcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_planningexternalevents definition

CREATE TABLE `glpi_planningexternalevents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `planningexternaleventtemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 1,
  `date` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_guests` text DEFAULT NULL,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `begin` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `rrule` text DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `planningeventcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `background` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `name` (`name`),
  KEY `planningexternaleventtemplates_id` (`planningexternaleventtemplates_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date` (`date`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `state` (`state`),
  KEY `planningeventcategories_id` (`planningeventcategories_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_planningexternaleventtemplates definition

CREATE TABLE `glpi_planningexternaleventtemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `before_time` int(11) NOT NULL DEFAULT 0,
  `rrule` text DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `planningeventcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `background` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `state` (`state`),
  KEY `planningeventcategories_id` (`planningeventcategories_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_planningrecalls definition

CREATE TABLE `glpi_planningrecalls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `before_time` int(11) NOT NULL DEFAULT -10,
  `when` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`,`users_id`),
  KEY `users_id` (`users_id`),
  KEY `before_time` (`before_time`),
  KEY `when` (`when`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_plugins definition

CREATE TABLE `glpi_plugins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `directory` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  `state` int(11) NOT NULL DEFAULT 0 COMMENT 'see define.php PLUGIN_* constant',
  `author` varchar(255) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  `license` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`directory`),
  KEY `name` (`name`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_plugs definition

CREATE TABLE `glpi_plugs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_printerlogs definition

CREATE TABLE `glpi_printerlogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `printers_id` int(10) unsigned NOT NULL,
  `total_pages` int(11) NOT NULL DEFAULT 0,
  `bw_pages` int(11) NOT NULL DEFAULT 0,
  `color_pages` int(11) NOT NULL DEFAULT 0,
  `rv_pages` int(11) NOT NULL DEFAULT 0,
  `prints` int(11) NOT NULL DEFAULT 0,
  `bw_prints` int(11) NOT NULL DEFAULT 0,
  `color_prints` int(11) NOT NULL DEFAULT 0,
  `copies` int(11) NOT NULL DEFAULT 0,
  `bw_copies` int(11) NOT NULL DEFAULT 0,
  `color_copies` int(11) NOT NULL DEFAULT 0,
  `scanned` int(11) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `faxed` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`printers_id`,`date`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_printermodels definition

CREATE TABLE `glpi_printermodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `picture_front` text DEFAULT NULL,
  `picture_rear` text DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `product_number` (`product_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_printers definition

CREATE TABLE `glpi_printers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `have_serial` tinyint(4) NOT NULL DEFAULT 0,
  `have_parallel` tinyint(4) NOT NULL DEFAULT 0,
  `have_usb` tinyint(4) NOT NULL DEFAULT 0,
  `have_wifi` tinyint(4) NOT NULL DEFAULT 0,
  `have_ethernet` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `memory_size` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `printertypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `printermodels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_global` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `init_pages_counter` int(11) NOT NULL DEFAULT 0,
  `last_pages_counter` int(11) NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ticket_tco` decimal(20,4) DEFAULT 0.0000,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `uuid` varchar(255) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `sysdescr` text DEFAULT NULL,
  `last_inventory_update` timestamp NULL DEFAULT NULL,
  `snmpcredentials_id` int(10) unsigned NOT NULL DEFAULT 0,
  `autoupdatesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_global` (`is_global`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `printermodels_id` (`printermodels_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `printertypes_id` (`printertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `last_pages_counter` (`last_pages_counter`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `uuid` (`uuid`),
  KEY `date_creation` (`date_creation`),
  KEY `snmpcredentials_id` (`snmpcredentials_id`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_printers_cartridgeinfos definition

CREATE TABLE `glpi_printers_cartridgeinfos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `printers_id` int(10) unsigned NOT NULL,
  `property` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `printers_id` (`printers_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_printertypes definition

CREATE TABLE `glpi_printertypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_problemcosts definition

CREATE TABLE `glpi_problemcosts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `problems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT 0,
  `cost_time` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `cost_material` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `budgets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `problems_id` (`problems_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_problems definition

CREATE TABLE `glpi_problems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `content` longtext DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `solvedate` timestamp NULL DEFAULT NULL,
  `closedate` timestamp NULL DEFAULT NULL,
  `time_to_resolve` timestamp NULL DEFAULT NULL,
  `users_id_recipient` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_lastupdater` int(10) unsigned NOT NULL DEFAULT 0,
  `urgency` int(11) NOT NULL DEFAULT 1,
  `impact` int(11) NOT NULL DEFAULT 1,
  `priority` int(11) NOT NULL DEFAULT 1,
  `itilcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `impactcontent` longtext DEFAULT NULL,
  `causecontent` longtext DEFAULT NULL,
  `symptomcontent` longtext DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT 0,
  `begin_waiting_date` timestamp NULL DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT 0,
  `close_delay_stat` int(11) NOT NULL DEFAULT 0,
  `solve_delay_stat` int(11) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `date_mod` (`date_mod`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `solvedate` (`solvedate`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `time_to_resolve` (`time_to_resolve`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_problems_suppliers definition

CREATE TABLE `glpi_problems_suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `problems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `suppliers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  `use_notification` tinyint(4) NOT NULL DEFAULT 0,
  `alternative_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`suppliers_id`),
  KEY `group` (`suppliers_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_problems_tickets definition

CREATE TABLE `glpi_problems_tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `problems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`tickets_id`),
  KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_problems_users definition

CREATE TABLE `glpi_problems_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `problems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  `use_notification` tinyint(4) NOT NULL DEFAULT 0,
  `alternative_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problems_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_problemtasks definition

CREATE TABLE `glpi_problemtasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `problems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `taskcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date` timestamp NULL DEFAULT NULL,
  `begin` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_editor` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `tasktemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `timeline_position` tinyint(4) NOT NULL DEFAULT 0,
  `is_private` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `problems_id` (`problems_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `state` (`state`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `tasktemplates_id` (`tasktemplates_id`),
  KEY `is_private` (`is_private`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_problemtemplatehiddenfields definition

CREATE TABLE `glpi_problemtemplatehiddenfields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `problemtemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problemtemplates_id`,`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_problemtemplatemandatoryfields definition

CREATE TABLE `glpi_problemtemplatemandatoryfields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `problemtemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`problemtemplates_id`,`num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_problemtemplatepredefinedfields definition

CREATE TABLE `glpi_problemtemplatepredefinedfields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `problemtemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `problemtemplates_id` (`problemtemplates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_problemtemplates definition

CREATE TABLE `glpi_problemtemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_profilerights definition

CREATE TABLE `glpi_profilerights` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profiles_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `rights` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`profiles_id`,`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=803 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_profilerights_bu definition

CREATE TABLE `glpi_profilerights_bu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profiles_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `rights` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`profiles_id`,`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=713 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_profiles definition

CREATE TABLE `glpi_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `interface` varchar(255) DEFAULT 'helpdesk',
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `helpdesk_hardware` int(11) NOT NULL DEFAULT 0,
  `helpdesk_item_type` text DEFAULT NULL,
  `ticket_status` text DEFAULT NULL COMMENT 'json encoded array of from/dest allowed status change',
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `problem_status` text DEFAULT NULL COMMENT 'json encoded array of from/dest allowed status change',
  `create_ticket_on_login` tinyint(4) NOT NULL DEFAULT 0,
  `tickettemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `changetemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `problemtemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `change_status` text DEFAULT NULL COMMENT 'json encoded array of from/dest allowed status change',
  `managed_domainrecordtypes` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `interface` (`interface`),
  KEY `is_default` (`is_default`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `tickettemplates_id` (`tickettemplates_id`),
  KEY `changetemplates_id` (`changetemplates_id`),
  KEY `problemtemplates_id` (`problemtemplates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_profiles_bu definition

CREATE TABLE `glpi_profiles_bu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `interface` varchar(255) DEFAULT 'helpdesk',
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `helpdesk_hardware` int(11) NOT NULL DEFAULT 0,
  `helpdesk_item_type` text DEFAULT NULL,
  `ticket_status` text DEFAULT NULL COMMENT 'json encoded array of from/dest allowed status change',
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `problem_status` text DEFAULT NULL COMMENT 'json encoded array of from/dest allowed status change',
  `create_ticket_on_login` tinyint(4) NOT NULL DEFAULT 0,
  `tickettemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `changetemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `problemtemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `change_status` text DEFAULT NULL COMMENT 'json encoded array of from/dest allowed status change',
  `managed_domainrecordtypes` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `interface` (`interface`),
  KEY `is_default` (`is_default`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `tickettemplates_id` (`tickettemplates_id`),
  KEY `changetemplates_id` (`changetemplates_id`),
  KEY `problemtemplates_id` (`problemtemplates_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_profiles_reminders definition

CREATE TABLE `glpi_profiles_reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reminders_id` int(10) unsigned NOT NULL DEFAULT 0,
  `profiles_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `no_entity_restriction` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_profiles_rssfeeds definition

CREATE TABLE `glpi_profiles_rssfeeds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(10) unsigned NOT NULL DEFAULT 0,
  `profiles_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `no_entity_restriction` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_profiles_users definition

CREATE TABLE `glpi_profiles_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `profiles_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 1,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `is_default_profile` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `users_id` (`users_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_projectcosts definition

CREATE TABLE `glpi_projectcosts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `projects_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `cost` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `budgets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `projects_id` (`projects_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_projects definition

CREATE TABLE `glpi_projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 1,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `projects_id` int(10) unsigned NOT NULL DEFAULT 0,
  `projectstates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `projecttypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `plan_start_date` timestamp NULL DEFAULT NULL,
  `plan_end_date` timestamp NULL DEFAULT NULL,
  `real_start_date` timestamp NULL DEFAULT NULL,
  `real_end_date` timestamp NULL DEFAULT NULL,
  `percent_done` int(11) NOT NULL DEFAULT 0,
  `auto_percent_done` tinyint(4) NOT NULL DEFAULT 0,
  `show_on_global_gantt` tinyint(4) NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `projecttemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `code` (`code`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_deleted` (`is_deleted`),
  KEY `projects_id` (`projects_id`),
  KEY `projectstates_id` (`projectstates_id`),
  KEY `projecttypes_id` (`projecttypes_id`),
  KEY `priority` (`priority`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `users_id` (`users_id`),
  KEY `groups_id` (`groups_id`),
  KEY `plan_start_date` (`plan_start_date`),
  KEY `plan_end_date` (`plan_end_date`),
  KEY `real_start_date` (`real_start_date`),
  KEY `real_end_date` (`real_end_date`),
  KEY `percent_done` (`percent_done`),
  KEY `show_on_global_gantt` (`show_on_global_gantt`),
  KEY `date_creation` (`date_creation`),
  KEY `projecttemplates_id` (`projecttemplates_id`),
  KEY `is_template` (`is_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_projectstates definition

CREATE TABLE `glpi_projectstates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `is_finished` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_finished` (`is_finished`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_projecttasklinks definition

CREATE TABLE `glpi_projecttasklinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `projecttasks_id_source` int(10) unsigned NOT NULL,
  `source_uuid` varchar(255) NOT NULL,
  `projecttasks_id_target` int(10) unsigned NOT NULL,
  `target_uuid` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `lag` smallint(6) DEFAULT 0,
  `lead` smallint(6) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `projecttasks_id_source` (`projecttasks_id_source`),
  KEY `projecttasks_id_target` (`projecttasks_id_target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_projecttasks definition

CREATE TABLE `glpi_projecttasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `projects_id` int(10) unsigned NOT NULL DEFAULT 0,
  `projecttasks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `plan_start_date` timestamp NULL DEFAULT NULL,
  `plan_end_date` timestamp NULL DEFAULT NULL,
  `real_start_date` timestamp NULL DEFAULT NULL,
  `real_end_date` timestamp NULL DEFAULT NULL,
  `planned_duration` int(11) NOT NULL DEFAULT 0,
  `effective_duration` int(11) NOT NULL DEFAULT 0,
  `projectstates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `projecttasktypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `percent_done` int(11) NOT NULL DEFAULT 0,
  `auto_percent_done` tinyint(4) NOT NULL DEFAULT 0,
  `is_milestone` tinyint(4) NOT NULL DEFAULT 0,
  `projecttasktemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `projects_id` (`projects_id`),
  KEY `projecttasks_id` (`projecttasks_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`),
  KEY `users_id` (`users_id`),
  KEY `plan_start_date` (`plan_start_date`),
  KEY `plan_end_date` (`plan_end_date`),
  KEY `real_start_date` (`real_start_date`),
  KEY `real_end_date` (`real_end_date`),
  KEY `percent_done` (`percent_done`),
  KEY `projectstates_id` (`projectstates_id`),
  KEY `projecttasktypes_id` (`projecttasktypes_id`),
  KEY `projecttasktemplates_id` (`projecttasktemplates_id`),
  KEY `is_template` (`is_template`),
  KEY `is_milestone` (`is_milestone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_projecttasks_tickets definition

CREATE TABLE `glpi_projecttasks_tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `projecttasks_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`projecttasks_id`),
  KEY `projects_id` (`projecttasks_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_projecttaskteams definition

CREATE TABLE `glpi_projecttaskteams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `projecttasks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`projecttasks_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_projecttasktemplates definition

CREATE TABLE `glpi_projecttasktemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `projects_id` int(10) unsigned NOT NULL DEFAULT 0,
  `projecttasks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `plan_start_date` timestamp NULL DEFAULT NULL,
  `plan_end_date` timestamp NULL DEFAULT NULL,
  `real_start_date` timestamp NULL DEFAULT NULL,
  `real_end_date` timestamp NULL DEFAULT NULL,
  `planned_duration` int(11) NOT NULL DEFAULT 0,
  `effective_duration` int(11) NOT NULL DEFAULT 0,
  `projectstates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `projecttasktypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `percent_done` int(11) NOT NULL DEFAULT 0,
  `is_milestone` tinyint(4) NOT NULL DEFAULT 0,
  `comments` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `projects_id` (`projects_id`),
  KEY `projecttasks_id` (`projecttasks_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`),
  KEY `users_id` (`users_id`),
  KEY `plan_start_date` (`plan_start_date`),
  KEY `plan_end_date` (`plan_end_date`),
  KEY `real_start_date` (`real_start_date`),
  KEY `real_end_date` (`real_end_date`),
  KEY `percent_done` (`percent_done`),
  KEY `projectstates_id` (`projectstates_id`),
  KEY `projecttasktypes_id` (`projecttasktypes_id`),
  KEY `is_milestone` (`is_milestone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_projecttasktypes definition

CREATE TABLE `glpi_projecttasktypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_projectteams definition

CREATE TABLE `glpi_projectteams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `projects_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`projects_id`,`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_projecttypes definition

CREATE TABLE `glpi_projecttypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_queuednotifications definition

CREATE TABLE `glpi_queuednotifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `notificationtemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `sent_try` int(11) NOT NULL DEFAULT 0,
  `create_time` timestamp NULL DEFAULT NULL,
  `send_time` timestamp NULL DEFAULT NULL,
  `sent_time` timestamp NULL DEFAULT NULL,
  `name` text DEFAULT NULL,
  `sender` text DEFAULT NULL,
  `sendername` text DEFAULT NULL,
  `recipient` text DEFAULT NULL,
  `recipientname` text DEFAULT NULL,
  `replyto` text DEFAULT NULL,
  `replytoname` text DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `body_html` longtext DEFAULT NULL,
  `body_text` longtext DEFAULT NULL,
  `messageid` text DEFAULT NULL,
  `documents` text DEFAULT NULL,
  `mode` varchar(20) NOT NULL COMMENT 'See Notification_NotificationTemplate::MODE_* constants',
  PRIMARY KEY (`id`),
  KEY `item` (`itemtype`,`items_id`,`notificationtemplates_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `entities_id` (`entities_id`),
  KEY `sent_try` (`sent_try`),
  KEY `create_time` (`create_time`),
  KEY `send_time` (`send_time`),
  KEY `sent_time` (`sent_time`),
  KEY `mode` (`mode`),
  KEY `notificationtemplates_id` (`notificationtemplates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_rackmodels definition

CREATE TABLE `glpi_rackmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `product_number` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `product_number` (`product_number`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_racks definition

CREATE TABLE `glpi_racks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `rackmodels_id` int(10) unsigned DEFAULT NULL,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `racktypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `number_units` int(11) DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `dcrooms_id` int(10) unsigned NOT NULL DEFAULT 0,
  `room_orientation` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) DEFAULT NULL,
  `bgcolor` varchar(7) DEFAULT NULL,
  `max_power` int(11) NOT NULL DEFAULT 0,
  `mesured_power` int(11) NOT NULL DEFAULT 0,
  `max_weight` int(11) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `locations_id` (`locations_id`),
  KEY `rackmodels_id` (`rackmodels_id`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `racktypes_id` (`racktypes_id`),
  KEY `states_id` (`states_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `group_id_tech` (`groups_id_tech`),
  KEY `is_template` (`is_template`),
  KEY `is_deleted` (`is_deleted`),
  KEY `dcrooms_id` (`dcrooms_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_racktypes definition

CREATE TABLE `glpi_racktypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `name` (`name`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_recurrentchanges definition

CREATE TABLE `glpi_recurrentchanges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `changetemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `begin_date` timestamp NULL DEFAULT NULL,
  `periodicity` varchar(255) DEFAULT NULL,
  `create_before` int(11) NOT NULL DEFAULT 0,
  `next_creation_date` timestamp NULL DEFAULT NULL,
  `calendars_id` int(10) unsigned NOT NULL DEFAULT 0,
  `end_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `changetemplates_id` (`changetemplates_id`),
  KEY `next_creation_date` (`next_creation_date`),
  KEY `calendars_id` (`calendars_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_refusedequipments definition

CREATE TABLE `glpi_refusedequipments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `itemtype` varchar(100) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ip` varchar(255) DEFAULT NULL,
  `mac` varchar(255) DEFAULT NULL,
  `rules_id` int(10) unsigned NOT NULL DEFAULT 0,
  `method` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `agents_id` int(10) unsigned NOT NULL DEFAULT 0,
  `autoupdatesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `agents_id` (`agents_id`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `rules_id` (`rules_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_registeredids definition

CREATE TABLE `glpi_registeredids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `device_type` varchar(100) NOT NULL COMMENT 'USB, PCI ...',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `device_type` (`device_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_reminders definition

CREATE TABLE `glpi_reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `begin` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `is_planned` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `begin_view_date` timestamp NULL DEFAULT NULL,
  `end_view_date` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `name` (`name`),
  KEY `date` (`date`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `users_id` (`users_id`),
  KEY `is_planned` (`is_planned`),
  KEY `state` (`state`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_reminders_users definition

CREATE TABLE `glpi_reminders_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reminders_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `reminders_id` (`reminders_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_remindertranslations definition

CREATE TABLE `glpi_remindertranslations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reminders_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` varchar(5) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`reminders_id`,`language`),
  KEY `users_id` (`users_id`),
  KEY `date_creation` (`date_creation`),
  KEY `date_mod` (`date_mod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_requesttypes definition

CREATE TABLE `glpi_requesttypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `is_helpdesk_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_followup_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_mail_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_mailfollowup_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_ticketheader` tinyint(4) NOT NULL DEFAULT 1,
  `is_itilfollowup` tinyint(4) NOT NULL DEFAULT 1,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_helpdesk_default` (`is_helpdesk_default`),
  KEY `is_followup_default` (`is_followup_default`),
  KEY `is_mail_default` (`is_mail_default`),
  KEY `is_mailfollowup_default` (`is_mailfollowup_default`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `is_active` (`is_active`),
  KEY `is_ticketheader` (`is_ticketheader`),
  KEY `is_itilfollowup` (`is_itilfollowup`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_reservationitems definition

CREATE TABLE `glpi_reservationitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) NOT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`),
  KEY `is_active` (`is_active`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_reservations definition

CREATE TABLE `glpi_reservations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reservationitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `begin` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `users_id` (`users_id`),
  KEY `resagroup` (`reservationitems_id`,`group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_rssfeeds definition

CREATE TABLE `glpi_rssfeeds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `refresh_rate` int(11) NOT NULL DEFAULT 86400,
  `max_items` int(11) NOT NULL DEFAULT 20,
  `have_error` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `users_id` (`users_id`),
  KEY `date_mod` (`date_mod`),
  KEY `have_error` (`have_error`),
  KEY `is_active` (`is_active`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_rssfeeds_users definition

CREATE TABLE `glpi_rssfeeds_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rssfeeds_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `rssfeeds_id` (`rssfeeds_id`),
  KEY `users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_ruleactions definition

CREATE TABLE `glpi_ruleactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rules_id` int(10) unsigned NOT NULL DEFAULT 0,
  `action_type` varchar(255) DEFAULT NULL COMMENT 'VALUE IN (assign, regex_result, append_regex_result, affectbyip, affectbyfqdn, affectbymac)',
  `field` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rules_id` (`rules_id`),
  KEY `field_value` (`field`(50),`value`(50))
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_rulecriterias definition

CREATE TABLE `glpi_rulecriterias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rules_id` int(10) unsigned NOT NULL DEFAULT 0,
  `criteria` varchar(255) DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT 0 COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rules_id` (`rules_id`),
  KEY `condition` (`condition`)
) ENGINE=InnoDB AUTO_INCREMENT=677 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_rulematchedlogs definition

CREATE TABLE `glpi_rulematchedlogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) DEFAULT NULL,
  `rules_id` int(10) unsigned DEFAULT NULL,
  `agents_id` int(10) unsigned NOT NULL DEFAULT 0,
  `method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `agents_id` (`agents_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `rules_id` (`rules_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_rulerightparameters definition

CREATE TABLE `glpi_rulerightparameters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_rules definition

CREATE TABLE `glpi_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sub_type` varchar(255) NOT NULL DEFAULT '',
  `ranking` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `match` char(10) DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `uuid` varchar(255) DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_active` (`is_active`),
  KEY `sub_type` (`sub_type`),
  KEY `date_mod` (`date_mod`),
  KEY `is_recursive` (`is_recursive`),
  KEY `condition` (`condition`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_savedsearches definition

CREATE TABLE `glpi_savedsearches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 0 COMMENT 'see SavedSearch:: constants',
  `itemtype` varchar(100) NOT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_private` tinyint(4) NOT NULL DEFAULT 1,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `query` text DEFAULT NULL,
  `last_execution_time` int(11) DEFAULT NULL,
  `do_count` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Do or do not count results on list display see SavedSearch::COUNT_* constants',
  `last_execution_date` timestamp NULL DEFAULT NULL,
  `counter` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `itemtype` (`itemtype`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `is_private` (`is_private`),
  KEY `is_recursive` (`is_recursive`),
  KEY `last_execution_time` (`last_execution_time`),
  KEY `last_execution_date` (`last_execution_date`),
  KEY `do_count` (`do_count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_savedsearches_alerts definition

CREATE TABLE `glpi_savedsearches_alerts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `savedsearches_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `operator` tinyint(4) NOT NULL,
  `value` int(11) NOT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `frequency` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`savedsearches_id`,`operator`,`value`),
  KEY `name` (`name`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_savedsearches_users definition

CREATE TABLE `glpi_savedsearches_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) NOT NULL,
  `savedsearches_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`itemtype`),
  KEY `savedsearches_id` (`savedsearches_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_slalevelactions definition

CREATE TABLE `glpi_slalevelactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slalevels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `action_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slalevels_id` (`slalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_slalevelcriterias definition

CREATE TABLE `glpi_slalevelcriterias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slalevels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `criteria` varchar(255) DEFAULT NULL,
  `condition` int(11) NOT NULL DEFAULT 0 COMMENT 'see define.php PATTERN_* and REGEX_* constant',
  `pattern` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slalevels_id` (`slalevels_id`),
  KEY `condition` (`condition`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_slalevels definition

CREATE TABLE `glpi_slalevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slas_id` int(10) unsigned NOT NULL DEFAULT 0,
  `execution_time` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `match` char(10) DEFAULT NULL COMMENT 'see define.php *_MATCHING constant',
  `uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `slas_id` (`slas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_slalevels_tickets definition

CREATE TABLE `glpi_slalevels_tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `slalevels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`slalevels_id`),
  KEY `slalevels_id` (`slalevels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_slas definition

CREATE TABLE `glpi_slas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `number_time` int(11) NOT NULL,
  `use_ticket_calendar` tinyint(4) NOT NULL DEFAULT 0,
  `calendars_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `definition_time` varchar(255) DEFAULT NULL,
  `end_of_working_day` tinyint(4) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `slms_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `calendars_id` (`calendars_id`),
  KEY `slms_id` (`slms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_slms definition

CREATE TABLE `glpi_slms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `use_ticket_calendar` tinyint(4) NOT NULL DEFAULT 0,
  `calendars_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `calendars_id` (`calendars_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_snmpcredentials definition

CREATE TABLE `glpi_snmpcredentials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `snmpversion` varchar(8) NOT NULL DEFAULT '1',
  `community` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `authentication` varchar(255) DEFAULT NULL,
  `auth_passphrase` varchar(255) DEFAULT NULL,
  `encryption` varchar(255) DEFAULT NULL,
  `priv_passphrase` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `snmpversion` (`snmpversion`),
  KEY `is_deleted` (`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_socketmodels definition

CREATE TABLE `glpi_socketmodels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_sockets definition

CREATE TABLE `glpi_sockets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `socketmodels_id` int(10) unsigned NOT NULL DEFAULT 0,
  `wiring_side` tinyint(4) DEFAULT 1,
  `itemtype` varchar(255) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networkports_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `socketmodels_id` (`socketmodels_id`),
  KEY `location_name` (`locations_id`,`name`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `networkports_id` (`networkports_id`),
  KEY `wiring_side` (`wiring_side`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_softwarecategories definition

CREATE TABLE `glpi_softwarecategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `softwarecategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `completename` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `ancestors_cache` longtext DEFAULT NULL,
  `sons_cache` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `softwarecategories_id` (`softwarecategories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_softwarelicenses definition

CREATE TABLE `glpi_softwarelicenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `softwares_id` int(10) unsigned NOT NULL DEFAULT 0,
  `softwarelicenses_id` int(10) unsigned NOT NULL DEFAULT 0,
  `completename` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0,
  `softwarelicensetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `softwareversions_id_buy` int(10) unsigned NOT NULL DEFAULT 0,
  `softwareversions_id_use` int(10) unsigned NOT NULL DEFAULT 0,
  `expire` date DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `is_valid` tinyint(4) NOT NULL DEFAULT 1,
  `date_creation` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_helpdesk_visible` tinyint(4) NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `allow_overquota` tinyint(4) NOT NULL DEFAULT 0,
  `pictures` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `expire` (`expire`),
  KEY `softwareversions_id_buy` (`softwareversions_id_buy`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`),
  KEY `softwareversions_id_use` (`softwareversions_id_use`),
  KEY `date_mod` (`date_mod`),
  KEY `softwares_id_expire_number` (`softwares_id`,`expire`,`number`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `users_id` (`users_id`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `groups_id` (`groups_id`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_creation` (`date_creation`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `states_id` (`states_id`),
  KEY `allow_overquota` (`allow_overquota`),
  KEY `softwarelicenses_id` (`softwarelicenses_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_softwarelicensetypes definition

CREATE TABLE `glpi_softwarelicensetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `softwarelicensetypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 0,
  `ancestors_cache` longtext DEFAULT NULL,
  `sons_cache` longtext DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `completename` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `softwarelicensetypes_id` (`softwarelicensetypes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_softwares definition

CREATE TABLE `glpi_softwares` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `is_update` tinyint(4) NOT NULL DEFAULT 0,
  `softwares_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `is_template` tinyint(4) NOT NULL DEFAULT 0,
  `template_name` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `ticket_tco` decimal(20,4) DEFAULT 0.0000,
  `is_helpdesk_visible` tinyint(4) NOT NULL DEFAULT 1,
  `softwarecategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_valid` tinyint(4) NOT NULL DEFAULT 1,
  `date_creation` timestamp NULL DEFAULT NULL,
  `pictures` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_mod` (`date_mod`),
  KEY `name` (`name`),
  KEY `is_template` (`is_template`),
  KEY `is_update` (`is_update`),
  KEY `softwarecategories_id` (`softwarecategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `softwares_id` (`softwares_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_helpdesk_visible` (`is_helpdesk_visible`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_softwareversions definition

CREATE TABLE `glpi_softwareversions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `softwares_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `arch` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `operatingsystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `arch` (`arch`),
  KEY `softwares_id` (`softwares_id`),
  KEY `states_id` (`states_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `operatingsystems_id` (`operatingsystems_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_solutiontemplates definition

CREATE TABLE `glpi_solutiontemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `solutiontypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `solutiontypes_id` (`solutiontypes_id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_solutiontypes definition

CREATE TABLE `glpi_solutiontypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 1,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_ssovariables definition

CREATE TABLE `glpi_ssovariables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_states definition

CREATE TABLE `glpi_states` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `completename` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `ancestors_cache` longtext DEFAULT NULL,
  `sons_cache` longtext DEFAULT NULL,
  `is_visible_computer` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_monitor` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_networkequipment` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_peripheral` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_phone` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_printer` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_softwareversion` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_softwarelicense` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_line` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_certificate` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_rack` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_passivedcequipment` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_enclosure` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_pdu` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_cluster` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_contract` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_appliance` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_databaseinstance` tinyint(4) NOT NULL DEFAULT 1,
  `is_visible_cable` tinyint(4) NOT NULL DEFAULT 1,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`states_id`,`name`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_visible_computer` (`is_visible_computer`),
  KEY `is_visible_monitor` (`is_visible_monitor`),
  KEY `is_visible_networkequipment` (`is_visible_networkequipment`),
  KEY `is_visible_peripheral` (`is_visible_peripheral`),
  KEY `is_visible_phone` (`is_visible_phone`),
  KEY `is_visible_printer` (`is_visible_printer`),
  KEY `is_visible_softwareversion` (`is_visible_softwareversion`),
  KEY `is_visible_softwarelicense` (`is_visible_softwarelicense`),
  KEY `is_visible_line` (`is_visible_line`),
  KEY `is_visible_certificate` (`is_visible_certificate`),
  KEY `is_visible_rack` (`is_visible_rack`),
  KEY `is_visible_passivedcequipment` (`is_visible_passivedcequipment`),
  KEY `is_visible_enclosure` (`is_visible_enclosure`),
  KEY `is_visible_pdu` (`is_visible_pdu`),
  KEY `is_visible_cluster` (`is_visible_cluster`),
  KEY `is_visible_contract` (`is_visible_contract`),
  KEY `is_visible_appliance` (`is_visible_appliance`),
  KEY `is_visible_databaseinstance` (`is_visible_databaseinstance`),
  KEY `is_visible_cable` (`is_visible_cable`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_suppliers definition

CREATE TABLE `glpi_suppliers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `suppliertypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `registration_number` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `pictures` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `suppliertypes_id` (`suppliertypes_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `is_active` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_suppliers_tickets definition

CREATE TABLE `glpi_suppliers_tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `suppliers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  `use_notification` tinyint(4) NOT NULL DEFAULT 1,
  `alternative_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`suppliers_id`),
  KEY `group` (`suppliers_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_suppliertypes definition

CREATE TABLE `glpi_suppliertypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_taskcategories definition

CREATE TABLE `glpi_taskcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `taskcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `completename` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `ancestors_cache` longtext DEFAULT NULL,
  `sons_cache` longtext DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `is_helpdeskvisible` tinyint(4) NOT NULL DEFAULT 1,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `knowbaseitemcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `is_helpdeskvisible` (`is_helpdeskvisible`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `knowbaseitemcategories_id` (`knowbaseitemcategories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_tasktemplates definition

CREATE TABLE `glpi_tasktemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `taskcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `actiontime` int(11) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `is_private` tinyint(4) NOT NULL DEFAULT 0,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `is_recursive` (`is_recursive`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `entities_id` (`entities_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `is_private` (`is_private`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_ticketcosts definition

CREATE TABLE `glpi_ticketcosts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `begin_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `actiontime` int(11) NOT NULL DEFAULT 0,
  `cost_time` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `cost_fixed` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `cost_material` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `budgets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `tickets_id` (`tickets_id`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `entities_id` (`entities_id`),
  KEY `budgets_id` (`budgets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_ticketrecurrents definition

CREATE TABLE `glpi_ticketrecurrents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `tickettemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `begin_date` timestamp NULL DEFAULT NULL,
  `periodicity` varchar(255) DEFAULT NULL,
  `create_before` int(11) NOT NULL DEFAULT 0,
  `next_creation_date` timestamp NULL DEFAULT NULL,
  `calendars_id` int(10) unsigned NOT NULL DEFAULT 0,
  `end_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `is_active` (`is_active`),
  KEY `tickettemplates_id` (`tickettemplates_id`),
  KEY `next_creation_date` (`next_creation_date`),
  KEY `calendars_id` (`calendars_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_tickets definition

CREATE TABLE `glpi_tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `closedate` timestamp NULL DEFAULT NULL,
  `solvedate` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `users_id_lastupdater` int(10) unsigned NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `users_id_recipient` int(10) unsigned NOT NULL DEFAULT 0,
  `requesttypes_id` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `urgency` int(11) NOT NULL DEFAULT 1,
  `impact` int(11) NOT NULL DEFAULT 1,
  `priority` int(11) NOT NULL DEFAULT 1,
  `itilcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  `global_validation` int(11) NOT NULL DEFAULT 1,
  `slas_id_ttr` int(10) unsigned NOT NULL DEFAULT 0,
  `slas_id_tto` int(10) unsigned NOT NULL DEFAULT 0,
  `slalevels_id_ttr` int(10) unsigned NOT NULL DEFAULT 0,
  `time_to_resolve` timestamp NULL DEFAULT NULL,
  `time_to_own` timestamp NULL DEFAULT NULL,
  `begin_waiting_date` timestamp NULL DEFAULT NULL,
  `sla_waiting_duration` int(11) NOT NULL DEFAULT 0,
  `ola_waiting_duration` int(11) NOT NULL DEFAULT 0,
  `olas_id_tto` int(10) unsigned NOT NULL DEFAULT 0,
  `olas_id_ttr` int(10) unsigned NOT NULL DEFAULT 0,
  `olalevels_id_ttr` int(10) unsigned NOT NULL DEFAULT 0,
  `ola_ttr_begin_date` timestamp NULL DEFAULT NULL,
  `internal_time_to_resolve` timestamp NULL DEFAULT NULL,
  `internal_time_to_own` timestamp NULL DEFAULT NULL,
  `waiting_duration` int(11) NOT NULL DEFAULT 0,
  `close_delay_stat` int(11) NOT NULL DEFAULT 0,
  `solve_delay_stat` int(11) NOT NULL DEFAULT 0,
  `takeintoaccount_delay_stat` int(11) NOT NULL DEFAULT 0,
  `actiontime` int(11) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `validation_percent` int(11) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `closedate` (`closedate`),
  KEY `status` (`status`),
  KEY `priority` (`priority`),
  KEY `request_type` (`requesttypes_id`),
  KEY `date_mod` (`date_mod`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id_recipient` (`users_id_recipient`),
  KEY `solvedate` (`solvedate`),
  KEY `urgency` (`urgency`),
  KEY `impact` (`impact`),
  KEY `global_validation` (`global_validation`),
  KEY `slas_id_tto` (`slas_id_tto`),
  KEY `slas_id_ttr` (`slas_id_ttr`),
  KEY `time_to_resolve` (`time_to_resolve`),
  KEY `time_to_own` (`time_to_own`),
  KEY `olas_id_tto` (`olas_id_tto`),
  KEY `olas_id_ttr` (`olas_id_ttr`),
  KEY `slalevels_id_ttr` (`slalevels_id_ttr`),
  KEY `internal_time_to_resolve` (`internal_time_to_resolve`),
  KEY `internal_time_to_own` (`internal_time_to_own`),
  KEY `users_id_lastupdater` (`users_id_lastupdater`),
  KEY `type` (`type`),
  KEY `itilcategories_id` (`itilcategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `name` (`name`),
  KEY `locations_id` (`locations_id`),
  KEY `date_creation` (`date_creation`),
  KEY `ola_waiting_duration` (`ola_waiting_duration`),
  KEY `olalevels_id_ttr` (`olalevels_id_ttr`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_tickets_contracts definition

CREATE TABLE `glpi_tickets_contracts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `contracts_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`contracts_id`),
  KEY `contracts_id` (`contracts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_tickets_tickets definition

CREATE TABLE `glpi_tickets_tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickets_id_1` int(10) unsigned NOT NULL DEFAULT 0,
  `tickets_id_2` int(10) unsigned NOT NULL DEFAULT 0,
  `link` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id_1`,`tickets_id_2`),
  KEY `tickets_id_2` (`tickets_id_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_tickets_users definition

CREATE TABLE `glpi_tickets_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  `use_notification` tinyint(4) NOT NULL DEFAULT 1,
  `alternative_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickets_id`,`type`,`users_id`,`alternative_email`),
  KEY `user` (`users_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_ticketsatisfactions definition

CREATE TABLE `glpi_ticketsatisfactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 1,
  `date_begin` timestamp NULL DEFAULT NULL,
  `date_answered` timestamp NULL DEFAULT NULL,
  `satisfaction` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tickets_id` (`tickets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_tickettasks definition

CREATE TABLE `glpi_tickettasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `taskcategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date` timestamp NULL DEFAULT NULL,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_editor` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longtext DEFAULT NULL,
  `is_private` tinyint(4) NOT NULL DEFAULT 0,
  `actiontime` int(11) NOT NULL DEFAULT 0,
  `begin` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 1,
  `users_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id_tech` int(10) unsigned NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `tasktemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `timeline_position` tinyint(4) NOT NULL DEFAULT 0,
  `sourceitems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sourceof_items_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uuid` (`uuid`),
  KEY `date` (`date`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`),
  KEY `users_id` (`users_id`),
  KEY `users_id_editor` (`users_id_editor`),
  KEY `tickets_id` (`tickets_id`),
  KEY `is_private` (`is_private`),
  KEY `taskcategories_id` (`taskcategories_id`),
  KEY `state` (`state`),
  KEY `users_id_tech` (`users_id_tech`),
  KEY `groups_id_tech` (`groups_id_tech`),
  KEY `begin` (`begin`),
  KEY `end` (`end`),
  KEY `tasktemplates_id` (`tasktemplates_id`),
  KEY `sourceitems_id` (`sourceitems_id`),
  KEY `sourceof_items_id` (`sourceof_items_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_tickettemplatehiddenfields definition

CREATE TABLE `glpi_tickettemplatehiddenfields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_tickettemplatemandatoryfields definition

CREATE TABLE `glpi_tickettemplatemandatoryfields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`tickettemplates_id`,`num`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_tickettemplatepredefinedfields definition

CREATE TABLE `glpi_tickettemplatepredefinedfields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tickettemplates_id` int(10) unsigned NOT NULL DEFAULT 0,
  `num` int(11) NOT NULL DEFAULT 0,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tickettemplates_id` (`tickettemplates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_tickettemplates definition

CREATE TABLE `glpi_tickettemplates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_ticketvalidations definition

CREATE TABLE `glpi_ticketvalidations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `tickets_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_validate` int(10) unsigned NOT NULL DEFAULT 0,
  `comment_submission` text DEFAULT NULL,
  `comment_validation` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `submission_date` timestamp NULL DEFAULT NULL,
  `validation_date` timestamp NULL DEFAULT NULL,
  `timeline_position` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `users_id` (`users_id`),
  KEY `users_id_validate` (`users_id_validate`),
  KEY `tickets_id` (`tickets_id`),
  KEY `submission_date` (`submission_date`),
  KEY `validation_date` (`validation_date`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_transfers definition

CREATE TABLE `glpi_transfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `keep_ticket` int(11) NOT NULL DEFAULT 0,
  `keep_networklink` int(11) NOT NULL DEFAULT 0,
  `keep_reservation` int(11) NOT NULL DEFAULT 0,
  `keep_history` int(11) NOT NULL DEFAULT 0,
  `keep_device` int(11) NOT NULL DEFAULT 0,
  `keep_infocom` int(11) NOT NULL DEFAULT 0,
  `keep_dc_monitor` int(11) NOT NULL DEFAULT 0,
  `clean_dc_monitor` int(11) NOT NULL DEFAULT 0,
  `keep_dc_phone` int(11) NOT NULL DEFAULT 0,
  `clean_dc_phone` int(11) NOT NULL DEFAULT 0,
  `keep_dc_peripheral` int(11) NOT NULL DEFAULT 0,
  `clean_dc_peripheral` int(11) NOT NULL DEFAULT 0,
  `keep_dc_printer` int(11) NOT NULL DEFAULT 0,
  `clean_dc_printer` int(11) NOT NULL DEFAULT 0,
  `keep_supplier` int(11) NOT NULL DEFAULT 0,
  `clean_supplier` int(11) NOT NULL DEFAULT 0,
  `keep_contact` int(11) NOT NULL DEFAULT 0,
  `clean_contact` int(11) NOT NULL DEFAULT 0,
  `keep_contract` int(11) NOT NULL DEFAULT 0,
  `clean_contract` int(11) NOT NULL DEFAULT 0,
  `keep_software` int(11) NOT NULL DEFAULT 0,
  `clean_software` int(11) NOT NULL DEFAULT 0,
  `keep_document` int(11) NOT NULL DEFAULT 0,
  `clean_document` int(11) NOT NULL DEFAULT 0,
  `keep_cartridgeitem` int(11) NOT NULL DEFAULT 0,
  `clean_cartridgeitem` int(11) NOT NULL DEFAULT 0,
  `keep_cartridge` int(11) NOT NULL DEFAULT 0,
  `keep_consumable` int(11) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `keep_disk` int(11) NOT NULL DEFAULT 0,
  `keep_certificate` int(11) NOT NULL DEFAULT 0,
  `clean_certificate` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_unmanageds definition

CREATE TABLE `glpi_unmanageds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `serial` varchar(255) DEFAULT NULL,
  `otherserial` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `contact_num` varchar(255) DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `networks_id` int(10) unsigned NOT NULL DEFAULT 0,
  `manufacturers_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `states_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `date_creation` timestamp NULL DEFAULT NULL,
  `autoupdatesystems_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sysdescr` text DEFAULT NULL,
  `domains_id` int(10) unsigned NOT NULL DEFAULT 0,
  `agents_id` int(10) unsigned NOT NULL DEFAULT 0,
  `itemtype` varchar(100) DEFAULT NULL,
  `accepted` tinyint(4) NOT NULL DEFAULT 0,
  `hub` tinyint(4) NOT NULL DEFAULT 0,
  `ip` varchar(255) DEFAULT NULL,
  `snmpcredentials_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `manufacturers_id` (`manufacturers_id`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id` (`users_id`),
  KEY `locations_id` (`locations_id`),
  KEY `networks_id` (`networks_id`),
  KEY `states_id` (`states_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `date_mod` (`date_mod`),
  KEY `is_dynamic` (`is_dynamic`),
  KEY `serial` (`serial`),
  KEY `otherserial` (`otherserial`),
  KEY `date_creation` (`date_creation`),
  KEY `autoupdatesystems_id` (`autoupdatesystems_id`),
  KEY `domains_id` (`domains_id`),
  KEY `agents_id` (`agents_id`),
  KEY `snmpcredentials_id` (`snmpcredentials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_usbvendors definition

CREATE TABLE `glpi_usbvendors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `vendorid` varchar(4) NOT NULL,
  `deviceid` varchar(4) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`vendorid`,`deviceid`),
  KEY `deviceid` (`deviceid`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_usercategories definition

CREATE TABLE `glpi_usercategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_useremails definition

CREATE TABLE `glpi_useremails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_dynamic` tinyint(4) NOT NULL DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`users_id`,`email`),
  KEY `email` (`email`),
  KEY `is_default` (`is_default`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_users definition

CREATE TABLE `glpi_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_last_update` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `locations_id` int(10) unsigned NOT NULL DEFAULT 0,
  `language` char(10) DEFAULT NULL COMMENT 'see define.php CFG_GLPI[language] array',
  `use_mode` int(11) NOT NULL DEFAULT 0,
  `list_limit` int(11) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `comment` text DEFAULT NULL,
  `auths_id` int(10) unsigned NOT NULL DEFAULT 0,
  `authtype` int(11) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_sync` timestamp NULL DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `profiles_id` int(10) unsigned NOT NULL DEFAULT 0,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `usertitles_id` int(10) unsigned NOT NULL DEFAULT 0,
  `usercategories_id` int(10) unsigned NOT NULL DEFAULT 0,
  `date_format` int(11) DEFAULT NULL,
  `number_format` int(11) DEFAULT NULL,
  `names_format` int(11) DEFAULT NULL,
  `csv_delimiter` char(1) DEFAULT NULL,
  `is_ids_visible` tinyint(4) DEFAULT NULL,
  `use_flat_dropdowntree` tinyint(4) DEFAULT NULL,
  `show_jobs_at_login` tinyint(4) DEFAULT NULL,
  `priority_1` char(20) DEFAULT NULL,
  `priority_2` char(20) DEFAULT NULL,
  `priority_3` char(20) DEFAULT NULL,
  `priority_4` char(20) DEFAULT NULL,
  `priority_5` char(20) DEFAULT NULL,
  `priority_6` char(20) DEFAULT NULL,
  `followup_private` tinyint(4) DEFAULT NULL,
  `task_private` tinyint(4) DEFAULT NULL,
  `default_requesttypes_id` int(10) unsigned DEFAULT NULL,
  `password_forget_token` char(40) DEFAULT NULL,
  `password_forget_token_date` timestamp NULL DEFAULT NULL,
  `user_dn` text DEFAULT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  `show_count_on_tabs` tinyint(4) DEFAULT NULL,
  `refresh_views` int(11) DEFAULT NULL,
  `set_default_tech` tinyint(4) DEFAULT NULL,
  `personal_token` varchar(255) DEFAULT NULL,
  `personal_token_date` timestamp NULL DEFAULT NULL,
  `api_token` varchar(255) DEFAULT NULL,
  `api_token_date` timestamp NULL DEFAULT NULL,
  `cookie_token` varchar(255) DEFAULT NULL,
  `cookie_token_date` timestamp NULL DEFAULT NULL,
  `display_count_on_home` int(11) DEFAULT NULL,
  `notification_to_myself` tinyint(4) DEFAULT NULL,
  `duedateok_color` varchar(255) DEFAULT NULL,
  `duedatewarning_color` varchar(255) DEFAULT NULL,
  `duedatecritical_color` varchar(255) DEFAULT NULL,
  `duedatewarning_less` int(11) DEFAULT NULL,
  `duedatecritical_less` int(11) DEFAULT NULL,
  `duedatewarning_unit` varchar(255) DEFAULT NULL,
  `duedatecritical_unit` varchar(255) DEFAULT NULL,
  `display_options` text DEFAULT NULL,
  `is_deleted_ldap` tinyint(4) NOT NULL DEFAULT 0,
  `pdffont` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `begin_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `keep_devices_when_purging_item` tinyint(4) DEFAULT NULL,
  `privatebookmarkorder` longtext DEFAULT NULL,
  `backcreated` tinyint(4) DEFAULT NULL,
  `task_state` int(11) DEFAULT NULL,
  `palette` char(20) DEFAULT NULL,
  `page_layout` char(20) DEFAULT NULL,
  `fold_menu` tinyint(4) DEFAULT NULL,
  `fold_search` tinyint(4) DEFAULT NULL,
  `savedsearches_pinned` text DEFAULT NULL,
  `timeline_order` char(20) DEFAULT NULL,
  `itil_layout` text DEFAULT NULL,
  `richtext_layout` char(20) DEFAULT NULL,
  `set_default_requester` tinyint(4) DEFAULT NULL,
  `lock_autolock_mode` tinyint(4) DEFAULT NULL,
  `lock_directunlock_notification` tinyint(4) DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  `highcontrast_css` tinyint(4) DEFAULT 0,
  `plannings` text DEFAULT NULL,
  `sync_field` varchar(255) DEFAULT NULL,
  `groups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `users_id_supervisor` int(10) unsigned NOT NULL DEFAULT 0,
  `timezone` varchar(50) DEFAULT NULL,
  `default_dashboard_central` varchar(100) DEFAULT NULL,
  `default_dashboard_assets` varchar(100) DEFAULT NULL,
  `default_dashboard_helpdesk` varchar(100) DEFAULT NULL,
  `default_dashboard_mini_ticket` varchar(100) DEFAULT NULL,
  `default_central_tab` tinyint(4) DEFAULT 0,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicityloginauth` (`name`,`authtype`,`auths_id`),
  KEY `firstname` (`firstname`),
  KEY `realname` (`realname`),
  KEY `entities_id` (`entities_id`),
  KEY `profiles_id` (`profiles_id`),
  KEY `locations_id` (`locations_id`),
  KEY `usertitles_id` (`usertitles_id`),
  KEY `usercategories_id` (`usercategories_id`),
  KEY `is_deleted` (`is_deleted`),
  KEY `is_active` (`is_active`),
  KEY `date_mod` (`date_mod`),
  KEY `authitem` (`authtype`,`auths_id`),
  KEY `is_deleted_ldap` (`is_deleted_ldap`),
  KEY `date_creation` (`date_creation`),
  KEY `begin_date` (`begin_date`),
  KEY `end_date` (`end_date`),
  KEY `sync_field` (`sync_field`),
  KEY `groups_id` (`groups_id`),
  KEY `users_id_supervisor` (`users_id_supervisor`),
  KEY `auths_id` (`auths_id`),
  KEY `default_requesttypes_id` (`default_requesttypes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_usertitles definition

CREATE TABLE `glpi_usertitles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_virtualmachinestates definition

CREATE TABLE `glpi_virtualmachinestates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_virtualmachinesystems definition

CREATE TABLE `glpi_virtualmachinesystems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_virtualmachinetypes definition

CREATE TABLE `glpi_virtualmachinetypes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_vlans definition

CREATE TABLE `glpi_vlans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `tag` int(11) NOT NULL DEFAULT 0,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `tag` (`tag`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_vobjects definition

CREATE TABLE `glpi_vobjects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `itemtype` varchar(100) DEFAULT NULL,
  `items_id` int(10) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unicity` (`itemtype`,`items_id`),
  KEY `item` (`itemtype`,`items_id`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


-- glpi_dev.glpi_wifinetworks definition

CREATE TABLE `glpi_wifinetworks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entities_id` int(10) unsigned NOT NULL DEFAULT 0,
  `is_recursive` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `essid` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL COMMENT 'ad-hoc, access_point',
  `comment` text DEFAULT NULL,
  `date_mod` timestamp NULL DEFAULT NULL,
  `date_creation` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entities_id` (`entities_id`),
  KEY `is_recursive` (`is_recursive`),
  KEY `essid` (`essid`),
  KEY `name` (`name`),
  KEY `date_mod` (`date_mod`),
  KEY `date_creation` (`date_creation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;