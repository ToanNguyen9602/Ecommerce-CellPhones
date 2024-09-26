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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `order_date` datetime(6) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `order_status` enum('CANCELLED','DELIVERED','PENDING','PROCESSING','SHIPPED') DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `payment_method_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  KEY `FKa03ljb6t6oa6mqtoifuwkb0kw` (`payment_method_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FKa03ljb6t6oa6mqtoifuwkb0kw` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (34,'Đào Đức Danh','0392406660','danhlaptrinh@gmail.com','Kon Tum','2024-08-12 10:28:17.352390',352699200,'CANCELLED',_binary '',12,1),(39,'Đào Đức Danh','0392406660','danhlaptrinh@gmail.com','Kon Tum','2024-08-12 18:32:28.576356',2459311300,'PENDING',_binary '',12,1),(40,'Đào Đức Danh','0392406660','danhlaptrinh@gmail.com','Kon Tum','2024-07-12 18:33:39.925187',15456500,'PENDING',_binary '',12,1),(41,'Đào Đức Danh','0392406660','danhlaptrinh@gmail.com','Kon Tum','2024-06-12 18:34:03.295826',5888500,'PENDING',_binary '',12,1),(42,'Đào Đức Danh','0392406660','danhlaptrinh@gmail.com','Kon Tum','2024-08-12 18:35:46.766263',1908170000,'PENDING',_binary '',12,1),(43,'Danh Đào Công','0347926582','daocongdanh47@gmail.com','12, 31888','2024-09-25 09:22:00.495469',43064400,'PROCESSING',_binary '',46,1),(44,'Đào Công Danh','0987654321','daocongdanh48@gmail.com','12312, 07519','2024-09-25 09:28:18.606911',22293600,'PROCESSING',_binary '',47,1),(45,'Danh Đào Đức','12312312','danhlaptrinh@gmail.com','123222111, 09340','2024-09-25 09:37:16.681801',21207000,'PROCESSING',_binary '',49,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
