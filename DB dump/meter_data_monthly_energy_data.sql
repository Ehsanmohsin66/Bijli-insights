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
-- Table structure for table `monthly_energy_data`
--

DROP TABLE IF EXISTS `monthly_energy_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `monthly_energy_data` (
  `msn` char(20) NOT NULL,
  `date_time` datetime NOT NULL,
  `start_year` int DEFAULT NULL,
  `start_month` int DEFAULT NULL,
  `end_year` int DEFAULT NULL,
  `end_month` int DEFAULT NULL,
  `kwh_consumed` double DEFAULT NULL,
  `kwh_consumed_t1` double DEFAULT NULL,
  `kwh_consumed_t2` double DEFAULT NULL,
  `kwh_consumed_t3` double DEFAULT NULL,
  `kwh_consumed_t4` double DEFAULT NULL,
  PRIMARY KEY (`msn`,`date_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
/*!50100 PARTITION BY LIST (month(`date_time`))
(PARTITION January VALUES IN (1) ENGINE = InnoDB,
 PARTITION February VALUES IN (2) ENGINE = InnoDB,
 PARTITION March VALUES IN (3) ENGINE = InnoDB,
 PARTITION April VALUES IN (4) ENGINE = InnoDB,
 PARTITION May VALUES IN (5) ENGINE = InnoDB,
 PARTITION June VALUES IN (6) ENGINE = InnoDB,
 PARTITION July VALUES IN (7) ENGINE = InnoDB,
 PARTITION August VALUES IN (8) ENGINE = InnoDB,
 PARTITION September VALUES IN (9) ENGINE = InnoDB,
 PARTITION October VALUES IN (10) ENGINE = InnoDB,
 PARTITION November VALUES IN (11) ENGINE = InnoDB,
 PARTITION December VALUES IN (12) ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_energy_data`
--

LOCK TABLES `monthly_energy_data` WRITE;
/*!40000 ALTER TABLE `monthly_energy_data` DISABLE KEYS */;
INSERT INTO `monthly_energy_data` VALUES ('22040801','2022-05-09 01:38:44',22,5,22,5,0.85,0.85,0,0,0),('testing','2022-05-08 21:11:26',22,3,22,4,120.34,10.34,10,40.6,50.4),('testing','2022-05-08 21:12:15',22,3,22,4,120.34,10.34,10,40.6,50.4);
/*!40000 ALTER TABLE `monthly_energy_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-02 23:08:01
