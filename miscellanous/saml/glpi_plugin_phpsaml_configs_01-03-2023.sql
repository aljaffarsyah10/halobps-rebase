-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: 10.0.26.6    Database: glpi_dev
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `glpi_plugin_phpsaml_configs`
--

DROP TABLE IF EXISTS `glpi_plugin_phpsaml_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glpi_plugin_phpsaml_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(15) NOT NULL,
  `enforced` int(2) NOT NULL,
  `strict` int(2) NOT NULL,
  `debug` int(2) NOT NULL,
  `jit` int(2) NOT NULL,
  `saml_sp_certificate` text NOT NULL,
  `saml_sp_certificate_key` text NOT NULL,
  `saml_sp_nameid_format` varchar(128) NOT NULL,
  `saml_idp_entity_id` varchar(128) NOT NULL,
  `saml_idp_single_sign_on_service` varchar(128) NOT NULL,
  `saml_idp_single_logout_service` varchar(128) NOT NULL,
  `saml_idp_certificate` text NOT NULL,
  `requested_authn_context` text NOT NULL,
  `requested_authn_context_comparison` varchar(25) NOT NULL,
  `saml_security_nameidencrypted` int(2) NOT NULL,
  `saml_security_authnrequestssigned` int(2) NOT NULL,
  `saml_security_logoutrequestsigned` int(2) NOT NULL,
  `saml_security_logoutresponsesigned` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glpi_plugin_phpsaml_configs`
--

LOCK TABLES `glpi_plugin_phpsaml_configs` WRITE;
/*!40000 ALTER TABLE `glpi_plugin_phpsaml_configs` DISABLE KEYS */;
INSERT INTO `glpi_plugin_phpsaml_configs` VALUES (1,'1.2.1',0,0,0,1,'','','unspecified','https://sso.bps.go.id/auth/realms/pegawai-bps/protocol/saml','https://sso.bps.go.id/auth/realms/pegawai-bps/protocol/saml','https://sso.bps.go.id/auth/realms/pegawai-bps/protocol/saml','MIICpTCCAY0CBgFvkz7EBzANBgkqhkiG9w0BAQsFADAWMRQwEgYDVQQDDAtwZWdhd2FpLWJwczAeFw0yMDAxMTEwNjE0MjFaFw0zMDAxMTEwNjE2MDFaMBYxFDASBgNVBAMMC3BlZ2F3YWktYnBzMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlXNUXGdWBglPs3dy03w9VcEcIv17OlBNQxJcTWwoaRlmLsSHjrC0zbj6Q31jQSQQvSc8NbbnIhBI/7Ej02VFmoDmc4D8QIcliNEdTDiw9QDlYX8yNh6sxwTHWwZQ6VFDrkNj5ayDYiEOU1vibczI1HiJnIijrwnldu+fo0N5rPg0Er9QXk22Losk2rVFQk0Z5zm3EsKhRn17HkRqzToqEgr/SXAVHd7qt9FwaUS3efIoT/yVicup8p/h0zBP5P8PchFqJkc4Ha44AaXVj3/bMM3MfoXL7oAcBYCJe5QE79hznNxPGmCdDWXI1ZSVj1RdZ4fOYtleCgB45qIVnWm1mQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQCQmGT68FQypfgjXUjEDJXeyCeh1/iBxxlzhjgEn02jq2dhHI6SSh6iYxe/wqyFpvV3X3N5TAeHC/8ttYc4251Ceyxv50UkGHKzDLgvX113lWwmpe+R3lAuB9jgMfh8jMvsdgPplFVozBcPEhZ7SpwviEAaIkQCDznj+XHJxssI1c8WYSxvOFjyIP/ZItVxJ3HcJ5Y808rSGXF6k3RLO+pD3rtlzsqwvAQsFp9exdErN66H6mjWdoVC8H4N+wU120XqLHwP/7fuqq0Yu2nhQhmhxigcp34we/rep4UQ+mh9aAuarFBgI1AtzeKDqsF4vlJswjkLQaGc8QT17kKva5/2','','exact',0,0,0,0);
/*!40000 ALTER TABLE `glpi_plugin_phpsaml_configs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-01 20:06:34
