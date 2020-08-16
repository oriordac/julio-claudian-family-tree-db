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
-- Table structure for table `eventrole_t`
--

DROP TABLE IF EXISTS `eventrole_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventrole_t` (
  `EventName` varchar(50) NOT NULL,
  `PersonID` int(11) NOT NULL,
  `AllyID` int(11) DEFAULT NULL,
  `RoleInEvent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EventName`,`PersonID`),
  KEY `eventrole_fk2` (`PersonID`),
  KEY `eventrole_fk` (`AllyID`),
  CONSTRAINT `eventrole_fk` FOREIGN KEY (`AllyID`) REFERENCES `ally_t` (`AllyID`),
  CONSTRAINT `eventrole_fk1` FOREIGN KEY (`EventName`) REFERENCES `famousevent_t` (`EventName`),
  CONSTRAINT `eventrole_fk2` FOREIGN KEY (`PersonID`) REFERENCES `person_t` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventrole_t`
--

LOCK TABLES `eventrole_t` WRITE;
/*!40000 ALTER TABLE `eventrole_t` DISABLE KEYS */;
INSERT INTO `eventrole_t` VALUES ('Assassination of Caligula',66,NULL,'Murdered alongside her husband Caligula'),('Assassination of Caligula',67,NULL,'Assassinated'),('Assassination of Caligula',69,NULL,'Murdered alongside her parents'),('Assassination of Julius Caesar',14,1,'Assassinated'),('Battle of Actium',28,3,'Defeated at Actium'),('Battle of Actium',31,NULL,'Victorious at Actium'),('Battle of Actium',41,NULL,'General for Octavian'),('Death of Claudius',52,NULL,'The emperor dies from poison administered by his wife'),('Death of Claudius',64,NULL,'Agrippina poisons her husband'),('Great Fire of Rome',70,NULL,'Nero uses the fire to build his golden palace on the ashes'),('Siege of Jerusalem',25,NULL,'Judea is defeated and became a client kingdom of the Roman Republic'),('Start of the Gallic Wars',14,2,'As governor, Julius Caesar launches his campaign'),('Start of the Gallic Wars',25,NULL,'Pompey supports Julius Caesar as a member of the First Triumvirate'),('Start of the Gallic Wars',28,NULL,'Marc Antony aids Julius Caesar as a general');
/*!40000 ALTER TABLE `eventrole_t` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-15 21:17:36
