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
use lefti_davitoiuaugustin;
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

INSERT INTO Addresses (line_1, line_2, line_3, city, zip_postcode, state_province_country, country, other_address_details) VALUES
('123 Main Street', 'Apt 101', '', 'Springfield', '12345', 'Ohio', 'USA', 'Near the park'),
('456 Elm Street', '', '', 'Riverside', '54321', 'California', 'USA', 'Corner house'),
('789 Oak Street', 'Suite 201', '', 'Lexington', '67890', 'Kentucky', 'USA', 'Office building'),
('321 Pine Street', '', '', 'Portland', '98765', 'Oregon', 'USA', 'Downtown area'),
('555 Maple Street', 'Unit B', '', 'Baltimore', '13579', 'Maryland', 'USA', 'Close to the harbor');

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

INSERT INTO Badges_and_Awards (badge_name, badge_description, swimming_awards, first_aid_awards) VALUES
('Gold Medal', 'Awarded for outstanding performance', 'Gold Swimmer', 'Gold First Aid'),
('Silver Medal', 'Awarded for excellent performance', 'Silver Swimmer', 'Silver First Aid'),
('Bronze Medal', 'Awarded for commendable performance', 'Bronze Swimmer', 'Bronze First Aid'),
('Life Saver', 'Awarded for saving lives', '', 'Life Saver Certification'),
('Dolphin Badge', 'Awarded for advanced swimming skills', 'Dolphin Swimmer', ''),
('Eagle Scout', 'Awarded for exceptional service and leadership', '', 'Eagle Scout Award');


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

INSERT INTO Ref_Staff_Roles (role_code, role_description, Head_of_Troop) VALUES
(1, 'Scout Leader', 'Yes'),
(2, 'Assistant Scout Leader', 'No'),
(3, 'Treasurer', 'No'),
(4, 'Secretary', 'No'),
(5, 'Quartermaster', 'No');

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

INSERT INTO Scout_Badges (scout_id, badge_id, date_obtained) VALUES
(1, 1, '2023-05-15'),
(2, 2, '2023-06-20'),
(3, 3, '2023-07-25'),
(1, 4, '2023-08-30'),
(2, 5, '2023-09-05');

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

INSERT INTO Scout_Meeting_Attendance (troop_id, scout_id, date_time_of_meeting, attended_yn, no_of_meetings) 
VALUES 
(1, 1, '2023-05-15 18:00:00', 'Yes', 1), 
(1, 2, '2023-05-15 18:00:00', 'Yes', 1), 
(1, 3, '2023-05-15 18:00:00', 'No', 1), 
(1, 1, '2023-05-22 18:00:00', 'Yes', 2), 
(1, 2, '2023-05-22 18:00:00', 'Yes', 2);


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

INSERT INTO Scouts (address_id, troop_id, first_name, middle_name, last_name, cell_mobile_number, email_address, date_joined_troop, date_left_troop) VALUES
(1, 1, 'John', 'Edward', 'Doe', 1234567890, 'john@example.com', '2022-01-01', '2023-12-31'),
(2, 1, 'Alice', 'Marie', 'Smith', 9876543210, 'alice@example.com', '2022-02-01', '2023-12-31'),
(3, 2, 'Michael', 'David', 'Johnson', 4567891230, 'michael@example.com', '2022-03-01', '2023-12-31'),
(4, 2, 'Emily', 'Elizabeth', 'Brown', 7891234560, 'emily@example.com', '2022-04-01', '2023-12-31'),
(5, 1, 'Daniel', 'Thomas', 'Wilson', 3216549870, 'daniel@example.com', '2022-05-01', '2023-12-31');

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

INSERT INTO Scouts_Troops (hq_address_id, troop_name, cell_mobile_number, email_address, date_formed, other_details, date_and_time_of_meetings, frequency_of_meetings) VALUES
(1, 'Troop 1', 1234567890, 'troop1@example.com', '2022-01-01', 'Meeting in the community hall', '2023-01-01 18:00:00', 1),
(2, 'Troop 2', 9876543210, 'troop2@example.com', '2022-02-01', 'Meeting in the school gymnasium', '2023-01-01 18:30:00', 2),
(3, 'Troop 3', 4567891230, 'troop3@example.com', '2022-03-01', 'Meeting in the church basement', '2023-01-01 19:00:00', 1),
(4, 'Troop 4', 7891234560, 'troop4@example.com', '2022-04-01', 'Meeting in the scout hut', '2023-01-01 19:30:00', 2),
(5, 'Troop 5', 3216549870, 'troop5@example.com', '2022-05-01', 'Meeting in the community center', '2023-01-01 20:00:00', 1);

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

INSERT INTO Staff (address_id, first_name, middle_name, last_name, gender, cell_mobile_number, email_address, other_details) VALUES
(1, 'John', 'Edward', 'Smith', 'Male', 1234567890, 'john@example.com', 'Scout Leader'),
(2, 'Alice', 'Marie', 'Johnson', 'Female', 9876543210, 'alice@example.com', 'Assistant Scout Leader'),
(3, 'Michael', 'David', 'Brown', 'Male', 4567891230, 'michael@example.com', 'Treasurer'),
(4, 'Emily', 'Elizabeth', 'Davis', 'Female', 7891234560, 'emily@example.com', 'Secretary'),
(5, 'Daniel', 'Thomas', 'Wilson', 'Male', 3216549870, 'daniel@example.com', 'Quartermaster');

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

INSERT INTO Troop_Staff (troop_id, staff_id, date_to, role_code, date_from) VALUES
(3, 11, '2023-02-01', 6, '2022-01-06'),
(4, 12, '2023-03-01', 2, '2022-01-07'),
(6, 13, '2023-05-01', 1, '2022-01-08'),
(7, 14, '2023-06-01', 3, '2022-01-09'),
(8, 15, '2023-07-01', 1, '2022-01-10');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-12 21:46:31
