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
-- Table structure for table `person_t`
--

DROP TABLE IF EXISTS `person_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_t` (
  `PersonID` int(11) NOT NULL AUTO_INCREMENT,
  `KnownName` varchar(30) NOT NULL,
  `Praenomen` varchar(15) DEFAULT 'N/A',
  `Nomen` varchar(15) DEFAULT NULL,
  `Cognomen` varchar(15) DEFAULT NULL,
  `AdditionalCognomen` varchar(15) DEFAULT 'N/A',
  `Father` varchar(30) DEFAULT 'Unknown',
  `FatherID` int(11) NOT NULL,
  `Mother` varchar(30) DEFAULT 'Unknown',
  `MotherID` int(11) NOT NULL,
  `DOB` int(11) DEFAULT NULL,
  `DOD` int(11) DEFAULT NULL,
  `Julian` tinyint(1) NOT NULL,
  `Claudian` tinyint(1) NOT NULL,
  `Barren` tinyint(1) NOT NULL,
  PRIMARY KEY (`PersonID`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_t`
--

LOCK TABLES `person_t` WRITE;
/*!40000 ALTER TABLE `person_t` DISABLE KEYS */;
INSERT INTO `person_t` VALUES (1,'Sextus Julius Caesar I','Sextus','Julius','Caesar','N/A','Unknown',999,'Unknown',999,NULL,NULL,1,0,0),(2,'Gaius Julius Caesar','Gaius','Julius','Caesar','N/A','Sextus Julius Caeser I',1,'Unknown',999,NULL,NULL,1,0,0),(3,'Sextus Julius Caesar II','Sextus','Julius','Caesar','N/A','Sextus Julius Caeser I',1,'Unknown',999,NULL,NULL,1,0,0),(4,'Marcia Regia','N/A','Marcia','Regia','N/A','Unknown',999,'Unknown',999,NULL,NULL,0,0,0),(5,'Gaius Julius Caesar II','Gaius','Julius','Caesar','N/A','Gaius Julius Caeser',2,'Unknown',999,NULL,NULL,1,0,0),(6,'Gaius Julius Caesar III','Gaius','Julius','Caesar','N/A','Gaius Julius Caeser II',5,'Marcia Regia',4,-140,-85,1,0,0),(7,'Sextus Julius Caesar','Sextus','Julius','Caesar','N/A','Gaius Julius Caeser II',5,'Marcia Regia',4,-133,-89,1,0,0),(8,'Julia Maria','N/A','Julia','Maria','N/A','Gaius Julius Caeser II',5,'Marcia Regia',4,-130,-69,1,0,0),(9,'Sextus Julius Caesar','Sextus','Julius','Caesar','N/A','Sextus Julius Caeser',7,'Unknown',999,NULL,NULL,1,0,0),(10,'Sextus Julius Caesar IV','Sextus','Julius','Caesar','N/A','Sextus Julius Caeser',9,'Unknown',999,NULL,-46,1,0,1),(11,'Gaius Marius','Gaius','Marius',NULL,'N/A','Unknown',999,'Unknown',999,-157,-86,0,0,0),(12,'Aurelia Cotta','N/A','Aurelia','Cotta','N/A','Unknown',999,'Unknown',999,-120,-54,0,0,0),(13,'Lucius Julius Caesar II','Lucius','Julius','Caesar','N/A','Sextus Julius Caeser II',3,'Unknown',999,NULL,NULL,1,0,0),(14,'Julius Caesar','Gaius','Julius','Caesar','N/A','Gaius Julius Caeser III',6,'Aurelia Cotta',12,-100,-44,1,0,0),(15,'Julia Major','N/A','Julia ','Major','N/A','Gaius Julius Caeser III',6,'Aurelia Cotta',12,-101,NULL,1,0,1),(16,'Julia Minor','N/A','Julia','Minor','N/A','Gaius Julius Caeser III',6,'Aurelia Cotta',12,-101,-51,1,0,0),(17,'Marcus Atius Balbus','Marcus','Atius','Balbus','N/A','Unknown',999,'Unknown',999,-105,-51,0,0,0),(18,'Lucius Julius Caesar III','Lucius ','Julius','Caesar','N/A','Lucius Julius Caeser II',13,'Unknown',999,-135,-87,1,0,0),(19,'Calpurnia','N/A','Calpurnia',NULL,'N/A','Unknown',999,'Unknown',999,-76,NULL,0,0,1),(20,'Pompeia','N/A','Pompeia',NULL,'N/A','Unknown',999,'Unknown',999,NULL,NULL,0,0,1),(21,'Cornelia','N/A','Cornelia',NULL,'N/A','Unknown',999,'Unknown',999,-97,-69,0,0,0),(22,'Gaius Octavius','Gaius','Octavius',NULL,'N/A','Unknown',999,'Unknown',999,-100,-59,0,0,0),(23,'Atia Balba','N/A','Atia','Balba','N/A','Marcus Atius Balbus',17,'Julia Minor',16,-85,-43,1,0,0),(24,'Julia','N/A','Julia',NULL,'N/A','Julius Caeser',14,'Cornelia',21,-76,-54,1,0,1),(25,'Pompey','Gnaeus','Pompey','Magnus','N/A','Unknown',999,'Unknown',999,-106,-48,0,0,0),(26,'Julia Antonia','N/A','Julia','Antonia','N/A','Lucius Julius Caeser III',18,'Unknown',999,-104,-39,1,0,0),(27,'Marcus Antonius Creticus','Marcus','Antonius','Creticus','N/A','Unknown',999,'Unknown',999,NULL,-72,0,0,0),(28,'Marc Antony','Marcus','Antonius',NULL,'N/A','Marcus Antonius Creticus',27,'Julia Antonia',26,-83,-30,1,0,0),(29,'Octavia Minor','N/A','Octavia','Minor','N/A','Gaius Octavius',22,'Atia Balba',23,-69,-11,1,0,0),(30,'Gaius Claudius Marcellus Minor','Gaius','Claudius','Marcellus','N/A','Unknown',999,'Unknown',999,-88,-40,0,1,0),(31,'Augustus','Gaius','Julius','Caesar','Octavanius','Gaius Octavius',22,'Atia Balba',23,-63,14,1,0,0),(32,'Tiberius Claudius Nero','Tiberius','Claudius','Nero','N/A','Unknown',999,'Unknown',999,-85,-33,0,1,0),(33,'Scribonia','N/A','Scribonia',NULL,'N/A','Unknown',999,'Unknown',999,-70,16,0,0,0),(34,'Livia Drusilla','N/A','Livia','Drusilla','Augusta','Unknown',999,'Unknown',999,-58,29,1,0,0),(35,'Marcus Claudius Marcellus','Marcus','Claudius','Marcellus','N/A','Gaius Claudius Marcellus',30,'Ocatavia Minor',29,-42,-23,1,1,1),(36,'Julia the Elder','N/A','Julia','Major','N/A','Augustus',31,'Scribonia',33,-39,14,1,0,0),(37,'Tiberius','Tiberius','Julius','Caesar','Claudius','Tiberius Claudius Nero',32,'Livia Drusilla',34,-16,37,1,1,0),(38,'Vipsania Agrippina','N/A','Vipsania','Agrippina','N/A','Unknown',999,'Unknown',999,-36,20,0,0,0),(39,'Drusus the Elder','Nero','Claudius','Drusus','N/A','Tiberius Claudius Nero',32,'Livia Drusilla',34,-38,-9,1,1,0),(40,'Antonia Minor','N/A','Antonia','Minor','N/A','Marc Antony',28,'Octavia Minor',29,-36,37,1,0,0),(41,'Marcus Vipsanius Agrippa','Marcus','Vipsanius','Agrippa','N/A','Unknown',999,'Unknown',999,-62,-12,0,0,0),(42,'Livilla ','Livia','Julia',NULL,'N/A','Drusus the Elder',39,'Antonia Minor',40,-13,31,1,1,0),(43,'Drusus the Younger','Drusus','Julius','Caesar','Drusus','Tiberius ',37,'Vipsania Agrippina',38,-14,23,1,1,0),(44,'Tiberius Gemellus','Tiberius','Julius ','Caesar','N/A','Drusus the Younger',43,'Livilla',42,19,37,1,1,1),(45,'Julia Livia','N/A','Julia','Livia','N/A','Drusus the Younger',43,'Livilla',42,7,43,1,1,1),(46,'Julia the Younger','Julia','Vipsania','Agrippina','N/A','Marcus Vipsanius Agrippa',41,'Julia the Elder',36,-19,29,1,0,1),(47,'Agrippa Postumus','Marcus','Julius','Caesar','Agrippa','Marcus Vipsanius Agrippa',41,'Julia the Elder',36,-12,14,1,0,1),(48,'Gaius Julius Caesar','Gaius','Julius','Caesar','Agrippa','Marcus Vipsanius Agrippa',41,'Julia the Elder',36,-20,4,1,0,1),(49,'Lucius Caesar','Lucius','Julius','Caesar','Agrippa','Marcus Vipsanius Agrippa',41,'Julia the Elder',36,-17,4,1,0,1),(50,'Agrippina the Elder','N/A','Vipsania','Agrippina','N/A','Marcus Vipsanius Agrippa',41,'Julia the Elder',36,-14,33,1,1,0),(51,'Germanicus ','Germanicus','Julius','Caesar','Drusus','Drusus the Elder',39,'Antonia Minor',40,-24,19,1,1,0),(52,'Claudius','Tiberius','Claudius','Caesar','Augustus','Drusus the Elder',39,'Antonia Minor',40,-10,54,1,1,0),(53,'Plautia Urgulanilla','N/A','Plautia','Urgulanilla','N/A','Unknown',999,'Unknown',999,NULL,NULL,1,1,0),(54,'Claudius Drusus','Tiberius','Claudius','Drusus','N/A','Claudius',52,'Plautia Urgulanilla',53,16,20,1,1,1),(55,'Aelia Paetina','N/A','Aelia','Paetine','N/A','Unknown',999,'Unknown',999,NULL,NULL,1,1,0),(56,'Claudia Antonia','N/A','Claudia','Antonia','N/A','Claudius',52,'Aelia Paetina',55,30,66,1,1,1),(57,'Valeria Messalina','N/A','Valeria','Messalina','N/A','Unknown',999,'Unknown',999,17,48,1,1,0),(58,'Britannicus','Tiberius','Claudius','Caesar','Britannicus','Claudius',52,'Valeria Messalina',57,41,55,1,1,1),(59,'Claudia Octavia','N/A','Claudia','Octavia','N/A','Claudius',52,'Valeria Messalina',57,40,62,1,1,1),(60,'Lucius Cassius Longinus','Lucius','Cassius','Longinus','N/A','Unknown',999,'Unknown',999,NULL,41,1,1,1),(61,'Julia Drusilla','N/A','Julia','Drusilla','N/A','Germanicus',51,'Agrippina the Elder',50,16,38,1,1,1),(62,'Drusus Caesar','Drusus','Julius','Caesar','Germanicus','Germanicus',51,'Agrippina the Elder',50,8,33,1,1,1),(63,'Julia Livilla','N/A','Julia','Livilla','Lesbia','Germanicus',51,'Agrippina the Elder',50,18,41,1,1,1),(64,'Agrippina the Younger','N/A','Agrippina','Minor','N/A','Germanicus',51,'Agrippina the Elder',50,15,59,1,1,0),(65,'Gnaeus Domitius Ahenobarbus','Gnaeus','Domitius','Ahenobarbus','N/A','Unknown',999,'Unknown',999,17,41,1,1,0),(66,'Milonia Caesonia','N/A','Milonia','Caesonia','N/A','Unknown',999,'Unknown',999,NULL,41,1,1,0),(67,'Caligula','Gaius','Julius','Caesar','Augustus','Germanicus',51,'Agrippina the Elder',50,12,41,1,1,0),(68,'Nero Julius Caesar','Nero','Julius ','Caesar','Germanicus','Germanicus',51,'Agrippina the Elder',50,6,31,1,1,1),(69,'Julia Drusilla','N/A','Julia ','Drusilla','Caligula','Germanicus',51,'Milonia Caesonia',50,39,41,1,1,1),(70,'Nero','Nero','Claudius','Caesar','Augustus','Gnaeus Domitius Ahenobarbus',65,'Agrippina the Younger',64,37,68,1,1,0),(71,'Poppaea Sabina','N/A','Poppaea','Sabina','N/A','Unknown',999,'Unknown',999,30,65,1,1,0),(72,'Claudia Augusta','N/A','Claudia','Augusta','N/A','Nero',70,'Poppaea Sabina',71,63,63,1,1,1),(999,'Unknown','N/A',NULL,NULL,'N/A','Unknown',999,'Unknown',999,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `person_t` ENABLE KEYS */;
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
