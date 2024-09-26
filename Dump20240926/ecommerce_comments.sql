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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `rate` bigint DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `image` text,
  `is_purchased` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6uv0qku8gsu6x1r2jkrtqwjtn` (`product_id`),
  KEY `FK8omq0tc18jd43bu5tjh6jvraq` (`user_id`),
  CONSTRAINT `FK6uv0qku8gsu6x1r2jkrtqwjtn` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FK8omq0tc18jd43bu5tjh6jvraq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (40,'Hàng rất đẹp 10d',5,'2024-08-13 09:48:56.973495',1,12,NULL,_binary '\0'),(41,'Hàng rất đẹp 10d',5,'2024-08-13 10:21:43.414606',1,12,'https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723519305/i2nhzms2gdomecxlrjie.jpg;https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723519306/xf9yzesmxpzlzhu5tk0m.png;https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723519306/jg3v1673kjahrerpjm5o.png;https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723519306/nrl9ukv1evwcz1ngi2qv.png',_binary ''),(42,'Hàng rất đẹp 10d',3,'2024-08-13 10:25:50.934754',1,12,'https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723519552/dm2dfiqa4xjzwkadl0t8.jpg;https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723519555/xpxivmltzj4aln059mny.png;https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723519558/ugcvnqwlyn5odokaovn2.png;https://res.cloudinary.com/dj7ivh0ph/image/upload/v1723519560/bzn7dux4pc5ube093rsu.jpg',_binary ''),(44,'Hàng rất đẹp 10d',3,'2024-08-26 13:50:59.215607',1,39,'https://res.cloudinary.com/dj7ivh0ph/image/upload/v1724655061/dkp8v4hogwblyssylz6k.jpg',_binary '\0'),(45,'Hàng rất đẹp 10d',3,'2024-08-26 13:58:27.626215',1,39,NULL,_binary '\0'),(46,'Hàng rất đẹp 10d',3,'2024-08-26 13:58:55.318579',1,39,'https://res.cloudinary.com/dj7ivh0ph/image/upload/v1724655537/fupuyx4i2x1mniui7ff6.jpg;https://res.cloudinary.com/dj7ivh0ph/image/upload/v1724655537/zifgye0inrasfcj5r8rj.png',_binary '\0'),(47,'10 diem',5,'2024-09-25 09:26:45.177679',1,47,'https://res.cloudinary.com/dj7ivh0ph/image/upload/v1727231207/n7kukydup7grwa3br33t.png',_binary '\0'),(48,'san pham 10 diem',5,'2024-09-25 09:36:40.492147',1,49,'https://res.cloudinary.com/dj7ivh0ph/image/upload/v1727231802/ptptpeadx2q4dr2fht6g.jpg',_binary '\0');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-26  9:59:11
