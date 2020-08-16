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
-- Table structure for table `adoptionlist_t`
--

DROP TABLE IF EXISTS `adoptionlist_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adoptionlist_t` (
  `FatherID` int(11) NOT NULL,
  `ChildID` int(11) NOT NULL,
  `YearOfAdoption` int(11) DEFAULT NULL,
  PRIMARY KEY (`FatherID`,`ChildID`),
  KEY `adoptionlist_fk2` (`ChildID`),
  CONSTRAINT `adoptionlist_fk1` FOREIGN KEY (`FatherID`) REFERENCES `person_t` (`PersonID`),
  CONSTRAINT `adoptionlist_fk2` FOREIGN KEY (`ChildID`) REFERENCES `person_t` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adoptionlist_t`
--

LOCK TABLES `adoptionlist_t` WRITE;
/*!40000 ALTER TABLE `adoptionlist_t` DISABLE KEYS */;
INSERT INTO `adoptionlist_t` VALUES (14,31,-44),(31,37,4),(31,47,4),(31,48,-17),(31,49,-17),(37,51,4),(37,62,23),(37,68,23),(52,70,50),(67,44,37);
/*!40000 ALTER TABLE `adoptionlist_t` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-15 21:17:34
