-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','0349174556','$2a$10$vHVpET6R1s241uuulIw2n.WN5SfcRBuGf9lJ3L8QeLVZaLYdiPpzi','admin@gmail.com',_binary '','https://i.pinimg.com/564x/46/63/0e/46630e22923aa721d42d803a4e4e8087.jpg',NULL),(12,'Đào Đức Danh','03924066601','$2a$10$rnNtvfdLQcXv4QtPiTH1kujdgdTZdUnDMF97VnDkDKUvb/PrOzNdS','danh12311@gmail.com',_binary '','image',NULL),(13,'Đào Đức Danh','039d2406660','$2a$10$rnNtvfdLQcXv4QtPiTH1kujdgdTZdUnDMF97VnDkDKUvb/PrOzNdS','danh123@gmail.com',_binary '','image','123123'),(14,'Đào Đức Danh','039240666012','$2a$10$VYigCdx3TNVRpfFgXCss..6AePLOX0QwswMnIKFQN2rn8sAKEPhiC','danh123111@gmail.com',_binary '','https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723384847/zovzpc6d4q2u3a2bjco7.jpg',NULL),(18,'Đào Đức Danh','03924066601123','$2a$10$gSYCsDO1zDuFRw84R6/uVuY988LlGd1YMbSfrJMWkBFWwjjshc7nq','danh1231121@gmail.com',_binary '','https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723429791/ecdhwfjxrgfsa97hfact.jpg',NULL),(30,'Đào Đức Danh','039240666011231','$2a$10$8tUEQIyodl8IFX11KrAkkuQ7pv2Tya28X5vHKmTCdApHLKovpQ4I6','danh12311212@gmail.com',_binary '','https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723430883/jkzojyiiz8mbrjuxvntz.jpg',NULL),(33,'Đào Đức Danh','0392406660112311','$2a$10$BZqVueMRYhSWiPDNZLFu8e1Jrqv4A8igF7IFDYOZ0be0aiMxkhe06','danh123112121@gmail.com',_binary '',NULL,NULL),(36,'Đào Đức Danh','03924066601123112','$2a$10$f6N/1DLqgahkBGwlWWoDley5x/BLn2tzxS52.2585wxmIL8jCT.A.','danh1231121212@gmail.com',_binary '','https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723518862/pun5xfos7bbeiovwawil.png',NULL),(38,'Đào Đức Danh','039240666011231121','$2a$10$qjAUt.WN04A2O.8FG.PExeN36/27tUWjpKAYShPJqJvY3ebYqaxdy','danh12311212112@gmail.com',_binary '','https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723522098/yfxjabzakompynokbpvd.png',NULL),(39,'Dao duc danh','03912390123','$2a$10$IAjRUtMrNiEwNCnNvg9MKeji.qud//lUz0hblpdn0iluMoF2YruIa','danh@gmail.com',_binary '','https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723646842/nahvz2akyb2jghdq1iws.jpg',NULL),(42,'Đào Đức Danh','039d240666066',NULL,'danh123@gmail66.com',_binary '','image','1231233'),(43,'Dao duc danh','039123901231','$2a$10$aL6ahlC5QfVm27SVFNdUr.Eul8Ub6pymnexObwVixcqmAItSJgeDq','danh@gmail1.com',_binary '',NULL,NULL),(44,'Dao duc danh','0391239012312','$2a$10$1Y9e6uF0PhVZIGtEl2Hyt.rjr7.ZOX4PF5GNDOYKpCXRqERIq.x.C','danh@gmail21.com',_binary '','https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723384847/zovzpc6d4q2u3a2bjco7.jpg',NULL),(45,'Đào Đức Danh','0123123123','$2a$10$qujJfycW72BR0otfZ.WhoOk4FnnX3WGLgggJbVnNOJdOZfMDgYE8u','danhlaptrinh123@gmail.com',_binary '','',NULL),(46,'Danh Đào Công','0347926582',NULL,'daocongdanh47@gmail.com',_binary '','https://lh3.googleusercontent.com/a/ACg8ocIerRpxRxq84dwOd3hloL9698Gi-8I-K9dRqpN7oWpmxA9uwxY=s96-c','100931411572565846671'),(47,'Đào Công Danh','0987654321',NULL,'daocongdanh48@gmail.com',_binary '','https://lh3.googleusercontent.com/a/ACg8ocL1rBRESAE_P9KMan9extXNhOVnjqp9cI5LWz1kJboUyxMrow=s96-c','104931991861979471594'),(48,'Danh Đào Đức','0392401234',NULL,'danhlaptrin2222h@gmail.com',_binary '','https://lh3.googleusercontent.com/a/ACg8ocKWJT4eNjTQBQatxsw-Fm8OA4Sy2t7S14SdaZvt9-hfDguIgw=s96-c','1055001350585622226870923'),(49,'Danh Đào Đức','12312312',NULL,'danhlaptrinh@gmail.com',_binary '','https://lh3.googleusercontent.com/a/ACg8ocKWJT4eNjTQBQatxsw-Fm8OA4Sy2t7S14SdaZvt9-hfDguIgw=s96-c','105500135058566870923');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-26  9:59:12
