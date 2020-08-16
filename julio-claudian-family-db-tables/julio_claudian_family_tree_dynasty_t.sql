-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: julio_claudian_family_tree
-- ------------------------------------------------------
-- Server version	8.0.18

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

--
-- Table structure for table `dynasty_t`
--

DROP TABLE IF EXISTS `dynasty_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynasty_t` (
  `PersonID` int(11) NOT NULL,
  `Julius` tinyint(1) DEFAULT '0',
  `Augustus` tinyint(1) DEFAULT '0',
  `Tiberius` tinyint(1) DEFAULT '0',
  `Caligula` tinyint(1) DEFAULT '0',
  `Claudius` tinyint(1) DEFAULT '0',
  `Nero` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`PersonID`),
  CONSTRAINT `dynasty_fk` FOREIGN KEY (`PersonID`) REFERENCES `person_t` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynasty_t`
--

LOCK TABLES `dynasty_t` WRITE;
/*!40000 ALTER TABLE `dynasty_t` DISABLE KEYS */;
INSERT INTO `dynasty_t` VALUES (1,0,0,0,0,0,0),(2,0,0,0,0,0,0),(3,0,0,0,0,0,0),(4,0,0,0,0,0,0),(5,0,0,0,0,0,0),(6,0,0,0,0,0,0),(7,0,0,0,0,0,0),(8,1,0,0,0,0,0),(9,0,0,0,0,0,0),(10,1,0,0,0,0,0),(11,0,0,0,0,0,0),(12,1,0,0,0,0,0),(13,0,0,0,0,0,0),(14,1,0,0,0,0,0),(15,0,0,0,0,0,0),(16,1,0,0,0,0,0),(17,1,0,0,0,0,0),(18,0,0,0,0,0,0),(19,1,0,0,0,0,0),(20,0,0,0,0,0,0),(21,1,0,0,0,0,0),(22,1,0,0,0,0,0),(23,1,1,0,0,0,0),(24,1,0,0,0,0,0),(25,1,0,0,0,0,0),(26,1,1,0,0,0,0),(27,1,0,0,0,0,0),(28,1,1,0,0,0,0),(29,1,1,0,0,0,0),(30,1,1,0,0,0,0),(31,1,1,0,0,0,0),(32,1,1,0,0,0,0),(33,1,1,1,0,0,0),(34,1,1,1,0,0,0),(35,0,1,0,0,0,0),(36,0,1,1,0,0,0),(37,0,1,1,0,0,0),(38,0,1,1,0,0,0),(39,0,1,0,0,0,0),(40,0,1,1,1,0,0),(41,1,1,0,0,0,0),(42,0,1,1,0,0,0),(43,0,1,1,0,0,0),(44,0,0,1,1,0,0),(45,0,1,1,1,1,0),(46,0,1,1,0,0,0),(47,0,1,1,0,0,0),(48,0,1,0,0,0,0),(49,0,1,1,0,0,0),(50,0,1,1,0,0,0),(51,0,1,1,0,0,0),(52,0,1,1,1,1,0),(53,0,0,0,0,0,0),(54,0,0,1,0,0,0),(55,0,0,0,0,0,0),(56,0,0,1,1,1,1),(57,0,0,1,1,1,0),(58,0,0,0,1,1,1),(59,0,0,0,1,1,1),(60,0,0,0,1,0,0),(61,0,0,1,1,0,0),(62,0,1,1,0,0,0),(63,0,0,1,1,1,0),(64,0,0,1,1,1,1),(65,0,0,1,1,1,0),(66,0,0,0,1,1,0),(67,0,1,1,1,0,0),(68,0,1,1,0,0,0),(69,0,0,0,1,1,0),(70,0,0,1,1,1,1),(71,0,0,1,1,1,1),(72,0,0,0,0,0,1),(999,0,0,0,0,0,0);
/*!40000 ALTER TABLE `dynasty_t` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-15 21:17:35
