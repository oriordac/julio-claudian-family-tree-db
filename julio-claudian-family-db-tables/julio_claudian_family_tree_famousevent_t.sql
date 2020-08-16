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
-- Table structure for table `famousevent_t`
--

DROP TABLE IF EXISTS `famousevent_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `famousevent_t` (
  `EventName` varchar(50) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EventName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `famousevent_t`
--

LOCK TABLES `famousevent_t` WRITE;
/*!40000 ALTER TABLE `famousevent_t` DISABLE KEYS */;
INSERT INTO `famousevent_t` VALUES ('Assassination of Caligula',41,'Praetorian Guards assassinate the emperor and his wife and child'),('Assassination of Julius Caesar',-44,'Julius Caesar is assassinated by several senators'),('Battle of Actium',-31,'Decisive naval battle for Octavian aganist Marc Antony'),('Battle of Teutoburg Forest',9,'The Roman commander Varus and three legions are slaughtered in an ambush led by Arminius'),('Crossing the Rubicon',-49,'Julius Caesar crosses the Rubicon River triggering a civil war'),('Death of Claudius',54,'Claudius succumbs to poison at the hands of his wife Agrippina'),('Great Fire of Rome',64,'Nero plays his fiddle as Rome burns'),('Julius Caesar is declared Dictator Perpetuus',-44,'Julius Caesar becomes dictator for life'),('Siege of Jerusalem',-63,'Pompey conquered Jerusalem'),('Start of the Gallic Wars',-58,'A series of wars led by Julius Caesar aganist several Gallic tribes');
/*!40000 ALTER TABLE `famousevent_t` ENABLE KEYS */;
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
