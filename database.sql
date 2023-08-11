-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: railway
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `ID` varchar(255) DEFAULT NULL,
  `CITY_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES ('1','MUMBAI'),('2','CHENNAI'),('3','PUNE'),('4','NEW DELHI'),('5','LUCKNOW'),('6','PATNA'),('7','JAIPUR'),('8','BANGLORE'),('9','AHEMDABAD'),('10','BHOPAL'),('11','CSMT');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `CONTACT` varchar(255) DEFAULT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES ('Vikas Vishwakarma','vikas.sahyogcollege@gmail.com','01234567890','GOOD SERVICE , KEEP IT UP'),('Ramazan Rudolph','vikas.sahyogcollege@gmail.com','4789568723','THE SERVER IS DOWN !!!!'),('Ronadlo','r.rudolph20@mailgen.pw','015903910271','BOOKING BUTTON NOT WORKING');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pnr_status`
--

DROP TABLE IF EXISTS `pnr_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pnr_status` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PNR_NO` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `AGE` varchar(255) DEFAULT NULL,
  `GENDER` varchar(255) DEFAULT NULL,
  `BERTH` varchar(255) DEFAULT NULL,
  `COACH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PNR_STATUS_FK` (`PNR_NO`),
  CONSTRAINT `PNR_STATUS_FK` FOREIGN KEY (`PNR_NO`) REFERENCES `ticket_booking_info` (`PNR_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pnr_status`
--

LOCK TABLES `pnr_status` WRITE;
/*!40000 ALTER TABLE `pnr_status` DISABLE KEYS */;
INSERT INTO `pnr_status` VALUES (1,'10002','Vikas','19','Male','Lower',NULL),(2,'10002','Amit','20','Male','Side Upper',NULL),(3,'10412','Navya','19','Male','Lower',NULL),(4,'10299','Vikas','45','Male','Lower','SL');
/*!40000 ALTER TABLE `pnr_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_booking_info`
--

DROP TABLE IF EXISTS `ticket_booking_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_booking_info` (
  `PNR_NO` varchar(255) NOT NULL,
  `TRAIN_CODE` varchar(255) NOT NULL,
  `SOURCE` varchar(255) DEFAULT NULL,
  `DESTINATION` varchar(255) DEFAULT NULL,
  `BOOKING_DATE` varchar(255) DEFAULT NULL,
  `TRANSACTION_ID` varchar(255) DEFAULT NULL,
  `PAID_AMOUNT` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `MOBILE_NO` varchar(255) DEFAULT NULL,
  `CARD_NO` varchar(255) DEFAULT NULL,
  `NAME_ON_CARD` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PNR_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_booking_info`
--

LOCK TABLES `ticket_booking_info` WRITE;
/*!40000 ALTER TABLE `ticket_booking_info` DISABLE KEYS */;
INSERT INTO `ticket_booking_info` VALUES ('10002','Pawan Express','CSMT','PRAYAGRAJ','25-Mar-2022, 2:04:31 pm','371625194','5514','Vikas Vishwakarma','7420962016',NULL,NULL),('10299','Pawan Express','CSMT','CSMT','19-Apr-2022, 10:11:34 pm','541810616','742','Vikas Vishwakarma','7420962016','7451256982','Vikas Vishwakarma'),('10412','Pawan Express','CSMT','CSMT','25-Mar-2022, 3:56:13 pm','206242829','742','null','',NULL,NULL);
/*!40000 ALTER TABLE `ticket_booking_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traildb`
--

DROP TABLE IF EXISTS `traildb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `traildb` (
  `SOURCE` varchar(255) DEFAULT NULL,
  `DATE` varchar(255) DEFAULT NULL,
  `DESTINATION` varchar(255) DEFAULT NULL,
  `CHOICE` varchar(255) DEFAULT NULL,
  `CHOICE2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traildb`
--

LOCK TABLES `traildb` WRITE;
/*!40000 ALTER TABLE `traildb` DISABLE KEYS */;
INSERT INTO `traildb` VALUES ('LUCKNOW','2022-01-23','destination','AC 2 Tier (2A)','GENERAL'),('CHENNAI','2022-01-23','NEW DELHI','AC 3 Tier (3A)','GENERAL');
/*!40000 ALTER TABLE `traildb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train_info`
--

DROP TABLE IF EXISTS `train_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train_info` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TRAIN_NAME` varchar(255) DEFAULT NULL,
  `TRAIN_CODE` varchar(255) NOT NULL,
  `CHOICE` varchar(255) DEFAULT NULL,
  `DISTANCE` varchar(255) DEFAULT NULL,
  `SOURCE` varchar(255) DEFAULT NULL,
  `DESTINATION` varchar(255) DEFAULT NULL,
  `DEPARTURE` varchar(255) DEFAULT NULL,
  `ARRIVAL` varchar(255) DEFAULT NULL,
  `SL_FARE` varchar(255) DEFAULT NULL,
  `IAC_FARE` varchar(255) DEFAULT NULL,
  `IIAC_FARE` varchar(255) DEFAULT NULL,
  `IIIAC_FARE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`TRAIN_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_info`
--

LOCK TABLES `train_info` WRITE;
/*!40000 ALTER TABLE `train_info` DISABLE KEYS */;
INSERT INTO `train_info` VALUES (1,'01062','Pawan Express','SL','973 Km','CSMT','PATNA','12:00 AM','4:30 PM','742','3757','2757','1757');
/*!40000 ALTER TABLE `train_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `train_via`
--

DROP TABLE IF EXISTS `train_via`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train_via` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TRAIN_CODE` varchar(255) DEFAULT NULL,
  `Station_F` varchar(255) DEFAULT NULL,
  `Station_S` varchar(255) DEFAULT NULL,
  `Station_T` varchar(255) DEFAULT NULL,
  `Station_FO` varchar(255) DEFAULT NULL,
  `Station_FI` varchar(255) DEFAULT NULL,
  `Station_SI` varchar(255) DEFAULT NULL,
  `Station_SE` varchar(255) DEFAULT NULL,
  `Station_EI` varchar(255) DEFAULT NULL,
  `Station_N` varchar(255) DEFAULT NULL,
  `Station_TE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_via`
--

LOCK TABLES `train_via` WRITE;
/*!40000 ALTER TABLE `train_via` DISABLE KEYS */;
INSERT INTO `train_via` VALUES (1,'01062','CSMT','KALYAN','NASHIK','BHUSAVAL','JABALPUR','KHANDWA','PRAYAGRAJ','MUGAL SHERAI','PATLIPUTRA','PATNA');
/*!40000 ALTER TABLE `train_via` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `SECURITY` varchar(50) DEFAULT NULL,
  `ANSWER` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES ('Ronaldo','cr7@gmail.com','II','Messi','fuckyou'),('Ankit','ankit.v@gmail.com','SL','nes','nes'),('Ankit','njpvni@hi2.in','I','nes','njpvni@hi2.in'),('Ramazan Rudolph','r.rudolph20@mailgen.pw','II','RONALDO','mcbctmkc'),('Vikas Vishwakarma','vikas.sahyogcollege@gmail.com','III','DELL','sahyogcollege');
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-21 17:38:55
