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
-- Table structure for table `user_has_hobbit`
--

DROP TABLE IF EXISTS `user_has_hobbit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_has_hobbit` (
  `id_hobbit` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_hobbit`,`id_user`),
  KEY `FK10hwrrtpeh3u2ujtqseb4kuna` (`id_user`),
  CONSTRAINT `FK10hwrrtpeh3u2ujtqseb4kuna` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKcxbsetsg41styu77p405bv7m8` FOREIGN KEY (`id_hobbit`) REFERENCES `hobbit` (`id_hobbit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_has_hobbit`
--

LOCK TABLES `user_has_hobbit` WRITE;
/*!40000 ALTER TABLE `user_has_hobbit` DISABLE KEYS */;
INSERT INTO `user_has_hobbit` VALUES (4,1),(7,1),(9,1),(2,2),(6,2),(5,3),(7,3),(8,3),(3,4),(5,4),(9,4),(6,5),(7,6),(3,7),(9,7),(4,8),(9,8),(10,8),(1,9),(3,9),(2,10),(3,11),(4,11),(1,12),(5,12),(4,13),(5,13),(7,14),(6,15),(2,16),(8,16),(9,17),(10,18),(3,19),(1,20),(1,21),(2,21),(3,21),(1,22),(3,22),(5,22),(6,22),(9,22),(10,22),(2,23),(3,23),(6,23),(7,23),(8,23),(10,23),(2,24),(3,24),(4,24),(6,24),(7,24),(8,24),(10,24),(1,25),(5,25),(9,25),(1,26),(2,26),(5,26),(6,26),(2,27),(6,27),(10,27),(1,28),(2,28),(3,28),(4,28),(5,28),(6,28),(7,28),(8,28),(9,28),(10,28),(5,29),(6,29),(9,29),(4,30),(6,30),(7,30),(8,30),(10,30),(2,31),(6,31),(10,31),(1,32),(5,32),(9,32),(2,34),(3,34),(6,34),(7,34),(10,34),(2,35),(3,35),(6,35),(7,35),(10,35),(2,36),(6,36),(10,36),(2,37),(6,37),(10,37),(2,38),(3,38),(6,38),(7,38),(2,40),(6,40),(10,40),(1,42),(2,42),(3,42),(4,42),(5,42),(6,42),(7,42),(8,42),(9,42),(10,42),(1,43),(1,44),(2,44),(5,44),(10,44);
/*!40000 ALTER TABLE `user_has_hobbit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-26 16:59:54
