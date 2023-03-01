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
-- Table structure for table `user_target`
--

DROP TABLE IF EXISTS `user_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_target` (
  `id_target` int NOT NULL,
  `id_user` int NOT NULL,
  PRIMARY KEY (`id_target`,`id_user`),
  KEY `FK6jpt5gbvaej6fyu23bsd50vv7` (`id_user`),
  CONSTRAINT `FK6jpt5gbvaej6fyu23bsd50vv7` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `FKab5gy3l4w674sltd5efxm3q81` FOREIGN KEY (`id_target`) REFERENCES `target` (`id_target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_target`
--

LOCK TABLES `user_target` WRITE;
/*!40000 ALTER TABLE `user_target` DISABLE KEYS */;
INSERT INTO `user_target` VALUES (2,1),(3,1),(1,2),(2,3),(1,4),(1,5),(4,5),(2,6),(1,7),(4,7),(1,8),(2,8),(1,9),(2,9),(3,9),(1,10),(4,11),(1,12),(2,12),(3,12),(1,13),(2,14),(4,14),(1,15),(3,15),(1,16),(1,17),(4,17),(1,18),(3,18),(1,19),(2,19),(3,19),(1,20),(2,20),(3,20),(4,20),(2,21),(2,22),(2,23),(3,23),(2,24),(1,25),(2,25),(3,25),(4,25),(2,26),(2,27),(1,28),(2,28),(3,28),(4,28),(2,29),(1,30),(4,30),(2,31),(2,32),(2,34),(3,35),(4,35),(2,36),(2,37),(2,38),(3,38),(4,38),(2,40),(3,40),(1,42),(2,42),(3,42),(4,42),(2,43),(1,44),(2,44);
/*!40000 ALTER TABLE `user_target` ENABLE KEYS */;
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
