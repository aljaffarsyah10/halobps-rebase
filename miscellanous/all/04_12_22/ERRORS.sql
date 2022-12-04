--- DATABASE ERROR PER 04_12_22 ---

--- Unknown table "glpi_profiles_bu" has been found in the database.
--- Expected database schema
--- +++ Current database schema
--- @@ @@
CREATE TABLE `glpi_profiles_bu` (
    `id` int NOT NULL AUTO_INCREMENT,
    `change_status` text,
    `changetemplates_id` int NOT NULL DEFAULT 0,
    `comment` text,
    `create_ticket_on_login` tinyint NOT NULL DEFAULT 0,
    `date_creation` datetime,
    `date_mod` datetime,
    `helpdesk_hardware` int NOT NULL DEFAULT 0,
    `helpdesk_item_type` text,
    `interface` varchar(255) DEFAULT 'helpdesk',
    `is_default` tinyint NOT NULL DEFAULT 0,
    `managed_domainrecordtypes` text,
    `name` varchar(255),
    `problem_status` text,
    `problemtemplates_id` int NOT NULL DEFAULT 0,
    `ticket_status` text,
    `tickettemplates_id` int NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    KEY `changetemplates_id` (`changetemplates_id`),
    KEY `date_creation` (`date_creation`),
    KEY `date_mod` (`date_mod`),
    KEY `interface` (`interface`),
    KEY `is_default` (`is_default`),
    KEY `name` (`name`),
    KEY `problemtemplates_id` (`problemtemplates_id`),
    KEY `tickettemplates_id` (`tickettemplates_id`)
)


--- Unknown table "glpi_profilerights_bu" has been found in the database.
--- Expected database schema
---+++ Current database schema
--- @@ @@
CREATE TABLE `glpi_profilerights_bu` (
    `id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(255),
    `profiles_id` int NOT NULL DEFAULT 0,
    `rights` int NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    UNIQUE KEY `unicity` (`profiles_id`,`name`),
    KEY `name` (`name`)
)