-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 164.92.148.47    Database: meter_data
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `meter_relay_commands`
--

DROP TABLE IF EXISTS `meter_relay_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `meter_relay_commands` (
  `cmnd_id` int NOT NULL AUTO_INCREMENT,
  `msn` char(20) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `new_status` int DEFAULT NULL,
  `cmnd_sent_flag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`cmnd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meter_relay_commands`
--

LOCK TABLES `meter_relay_commands` WRITE;
/*!40000 ALTER TABLE `meter_relay_commands` DISABLE KEYS */;
INSERT INTO `meter_relay_commands` VALUES (1,'2204081','2022-04-17 18:21:12',1,_binary ''),(2,'2204081','2022-04-17 18:48:44',0,_binary ''),(3,'2204081','2022-04-17 18:50:29',0,_binary ''),(4,'2204081','2022-04-17 18:51:37',0,_binary ''),(5,'2204081','2022-04-18 08:21:47',0,_binary ''),(6,'22040801','2022-04-18 08:23:48',0,_binary ''),(7,'22040801','2022-04-18 08:51:09',0,_binary '');
/*!40000 ALTER TABLE `meter_relay_commands` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-02 23:08:27
