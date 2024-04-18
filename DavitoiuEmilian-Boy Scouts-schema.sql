-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: lefti.virtualcampus.ro    Database: lefti_davitoiuaugustin
-- ------------------------------------------------------
-- Server version	5.7.44-google-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '847dab35-cd7d-11ee-ba76-42010a400002:1-15561';

--
-- Table structure for table `Addresses`
--

DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Addresses` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `line_1` varchar(50) NOT NULL,
  `line_2` varchar(50) NOT NULL,
  `line_3` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip_postcode` varchar(50) NOT NULL,
  `state_province_country` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `other_address_details` varchar(50) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Badges_and_Awards`
--

DROP TABLE IF EXISTS `Badges_and_Awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Badges_and_Awards` (
  `badge_id` int(11) NOT NULL AUTO_INCREMENT,
  `badge_name` varchar(100) NOT NULL,
  `badge_description` varchar(50) NOT NULL,
  `swimming_awards` varchar(50) NOT NULL,
  `first_aid_awards` varchar(50) NOT NULL,
  PRIMARY KEY (`badge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Ref_Staff_Roles`
--

DROP TABLE IF EXISTS `Ref_Staff_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ref_Staff_Roles` (
  `role_code` int(11) NOT NULL,
  `role_description` varchar(50) NOT NULL,
  `Head_of_Troop` varchar(50) NOT NULL,
  PRIMARY KEY (`role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Scout_Badges`
--

DROP TABLE IF EXISTS `Scout_Badges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Scout_Badges` (
  `scout_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `date_obtained` date NOT NULL,
  PRIMARY KEY (`scout_id`,`badge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Scout_Meeting_Attendance`
--

DROP TABLE IF EXISTS `Scout_Meeting_Attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Scout_Meeting_Attendance` (
  `troop_id` int(11) NOT NULL,
  `scout_id` int(11) NOT NULL,
  `date_time_of_meeting` datetime NOT NULL,
  `attended_yn` varchar(50) NOT NULL,
  `no_of_meetings` int(11) NOT NULL,
  PRIMARY KEY (`troop_id`,`scout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Scouts`
--

DROP TABLE IF EXISTS `Scouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Scouts` (
  `scout_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_id` int(11) NOT NULL,
  `troop_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `cell_mobile_number` bigint(20) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `date_joined_troop` date NOT NULL,
  `date_left_troop` date NOT NULL,
  PRIMARY KEY (`scout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Scouts_Troops`
--

DROP TABLE IF EXISTS `Scouts_Troops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Scouts_Troops` (
  `troop_id` int(11) NOT NULL AUTO_INCREMENT,
  `hq_address_id` int(11) NOT NULL,
  `troop_name` varchar(50) NOT NULL,
  `cell_mobile_number` bigint(20) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `date_formed` date NOT NULL,
  `other_details` varchar(50) NOT NULL,
  `date_and_time_of_meetings` datetime NOT NULL,
  `frequency_of_meetings` int(11) NOT NULL,
  PRIMARY KEY (`troop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `cell_mobile_number` bigint(20) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `other_details` varchar(50) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Troop_Staff`
--

DROP TABLE IF EXISTS `Troop_Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Troop_Staff` (
  `troop_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date_to` int(11) NOT NULL,
  `role_code` int(11) NOT NULL,
  `date_from` date NOT NULL,
  PRIMARY KEY (`troop_id`,`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12 21:46:31
