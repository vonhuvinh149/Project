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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `id_account` int NOT NULL AUTO_INCREMENT,
  `auth_provider` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  PRIMARY KEY (`id_account`),
  KEY `FKr738a8wol7on2r69xf3iuvggx` (`id_user`),
  CONSTRAINT `FKr738a8wol7on2r69xf3iuvggx` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,NULL,'nguyentuan.1004@gmail.com','$2a$10$GTznweq/Wkq0OAuX0jv8zuGeTAlOzUXDG0dV6p1WrwhCetk3XAS7e','0344323457',1,1),(2,NULL,'lehongphu4293@gmail.com','$2a$10$GTznweq/Wkq0OAuX0jv8zuGeTAlOzUXDG0dV6p1WrwhCetk3XAS7e','0934435567',15,2),(3,NULL,'quoctrung12@gmail.com','$2a$10$GTznweq/Wkq0OAuX0jv8zuGeTAlOzUXDG0dV6p1WrwhCetk3XAS7e','0943542345',1,3),(4,NULL,'nhuvinhvo@gmail.com','$2a$10$GTznweq/Wkq0OAuX0jv8zuGeTAlOzUXDG0dV6p1WrwhCetk3XAS7e','007435678943',1,4),(5,NULL,'phihung23@gmail.com','$2a$10$GTznweq/Wkq0OAuX0jv8zuGeTAlOzUXDG0dV6p1WrwhCetk3XAS7e','0905328493',1,5),(6,NULL,'minhtam@gmail.com','$2a$10$GTznweq/Wkq0OAuX0jv8zuGeTAlOzUXDG0dV6p1WrwhCetk3XAS7e','0845353384',1,6),(7,NULL,'minhhuyyy@gmail.com','$2a$10$HBd8EWwjpsCMRdOYP2uQ6e0YemlivJEhMFTlJXMPGeJCHSv1tKX6u','0344848457',1,7),(8,NULL,'huuthuc09@gmail.com','$2a$10$GTznweq/Wkq0OAuX0jv8zuGeTAlOzUXDG0dV6p1WrwhCetk3XAS7e','0934586743',1,8),(9,NULL,'dat09@gmail.com','$2a$10$GTznweq/Wkq0OAuX0jv8zuGeTAlOzUXDG0dV6p1WrwhCetk3XAS7e','0368743457',1,9),(10,NULL,'hoangthai23@gmail.com','$2a$10$GTznweq/Wkq0OAuX0jv8zuGeTAlOzUXDG0dV6p1WrwhCetk3XAS7e','0743545473',1,10),(11,NULL,'test@gmail.com','$2a$10$oqkA7t4ofJtLTPsVkNMLYex0.ea38tp8UzTCWDiARNHukSNGAJxUe','0934432123',1,21),(12,NULL,'nhien@gmail.com','$2a$10$5XBD71UtmrpRPk8632MPLuiR1adWC2bsr10HYw3FJvnoNximLgShS','0935555555',1,22),(13,NULL,'hungtest@gmail.com','$2a$10$KXbMtR14./M9WeMTK/HCT.Kot5sCux5ekVTqrgEUii98A6d8RGqSO','0939999999',1,23),(14,NULL,'tam1@gmail.com','$2a$10$W60wk2QC8ZpF0vMlQSY4PehjdFjfaKboc4xPyQwR34t8JHzXZWFzq','0901231231',1,24),(15,NULL,'tam2@gmail.com','$2a$10$hcOkTD9Dghn2l0PMJ7udjeF3dFjVZ0kxr8Q1coaiYQl2Z.WX5b.WC','0901236747',1,25),(16,NULL,'vinh1@gmail.com','$2a$10$7ADxOtjlqOBPH/qFA.kvRuqMW9CsmaBnqfp43PZZmcCHcoePds6uG','0908768765',1,26),(17,NULL,'vinh2@gmail.com','$2a$10$v6Qr6hcFfjk7l5HDTO3N1Ou69dw4uo1EBCVpqNioII.wF1bHhbQ3O','0901232211',1,27),(18,NULL,'bon@gmail.com','$2a$10$a5sykptxWXp815tOaDSqH.7QxgUkUBc1gTafZ9Tx4gk4ZDD5gzlly','0901234567',1,28),(19,NULL,'thanhtrang@gmail.com','$10$GTznweq/Wkq0OAuX0jv8zuGeTAlOzUXDG0dV6p1WrwhCetk3XAS7e','0932234555',1,29),(20,NULL,'phule@gmail.com','$2a$10$qsgweyDF661WZpHzcqlScOlCVVLeXFl3AyrR5LqK/3NqvWPol0I4q','0905123456',1,30),(21,NULL,'phule2@gmail.com','$2a$10$piam2GSxQI.kvBcMls2g8.mFVv3hK5eC1yw0Gapr1MPFMfEEHxuae','0905123789',1,31),(22,NULL,'yoshinori@gmail.com','$2a$10$6M0KHFtLIthaNrZrg/57v.KkYFWuTNJfWxvLmyi8x0P6raUWkR6iS','0901234567',1,32),(23,NULL,'thaodien@gmail.com','$2a$10$oOXHnAUnhp1znOVgt.GJSeiNwWoV5gqqfGA/2ppMmWI9mierq7iEG','0935555555',1,34),(24,NULL,'testc04@gmail.com','$2a$10$26PBmfpURmK1xUhQALvXBOnU.C7MiKwCfLqdIisvUg.HpCr7txJp2','0934123123',1,35),(25,NULL,'123123@gmail.com','$2a$10$JJCGyQaBCsnPqnq7k3CyxOqd47m1ILymEYBZgG0WudtDONrU5euOK','0901231231',1,36),(26,NULL,'testdating@gmail.com','$2a$10$GHU31CGkqbuHThv.IVivsuc/gdVWSNy0vCbudleOiB7F/bfrM38cC','0932121212',1,37),(27,NULL,'datingfinal@gmail.com','$2a$10$T4AKvommR3nGnaBEHq./E.TnrTdAiZbzB/YNBA3I28CAuA.ow0A4e','0931231231',1,38),(28,NULL,'huynguqa121@gmail.com','$2a$10$myZuQKBtLDWtCOByAAkhpeeyhCL0yXWOXJ/VaXX9.cfRrlN2sxhC.','0933123123',1,39),(29,NULL,'huynguqa@gmail.com','$2a$10$lIQOKEne83U/X/ALiyjxG.7XQyaVUsAVW7bkU9aKHNeOdxxY0w2T6','0935507495',14,40),(30,NULL,'testc0422@gmail.com','$2a$10$oan8ahygThp9juHM1o4xPe9gDrL316MhWRtvw.RN5X6uyFMls4j9C','0934343434',0,41),(31,NULL,'teamc04@gmail.com','$2a$10$.ZONVTCkvn3pmyNl49KWs.cmAaB4Ekg8j.ehnuXl8UCAyQjFymRm2','0934090909',1,42),(32,NULL,'testsothich@gmail.com','$2a$10$MOdNV4W4gKYHWPZ.LA7ov.z0plhK1WfNbvZkg3QbeIpGVekY1PqRa','0934341212',1,43),(33,NULL,'phule5@gmail.com','$2a$10$V/Za4s6HSLiMfDgoiqqMFOIE1Rws6kuCfQ9t2iNBw.sge8Tdkf1wO','0905123123',1,44);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
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
