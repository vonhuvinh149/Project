CREATE DATABASE  IF NOT EXISTS `dating_c04` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dating_c04`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: dating_c04
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `gift_user`
--

DROP TABLE IF EXISTS `gift_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_user` (
  `id_gift` int NOT NULL,
  `id_user_receiver` int NOT NULL,
  `id_user_sender` int NOT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id_gift`,`id_user_receiver`,`id_user_sender`),
  KEY `FKmqrpmviae7lpvfc50aywwak4v` (`id_user_receiver`),
  KEY `FK6plq75513cpvfetruhetekjhv` (`id_user_sender`),
  CONSTRAINT `FK1sihfuhx0la2lxwdg4ic1exh` FOREIGN KEY (`id_gift`) REFERENCES `gift` (`id_gift`),
  CONSTRAINT `FK6plq75513cpvfetruhetekjhv` FOREIGN KEY (`id_user_sender`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKmqrpmviae7lpvfc50aywwak4v` FOREIGN KEY (`id_user_receiver`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_user`
--

LOCK TABLES `gift_user` WRITE;
/*!40000 ALTER TABLE `gift_user` DISABLE KEYS */;
INSERT INTO `gift_user` VALUES (1,1,2,3),(1,2,1,1),(1,2,7,1),(1,9,1,1),(1,37,7,1),(1,38,7,1),(2,1,2,5),(2,2,1,4),(2,2,2,3),(2,5,1,5),(3,1,2,2),(3,3,1,3),(3,7,2,2);
/*!40000 ALTER TABLE `gift_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-26 16:59:55
