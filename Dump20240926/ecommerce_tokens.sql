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
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `refresh_expiration_date` datetime(6) DEFAULT NULL,
  `is_mobile_device` bit(1) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2dylsfo39lgjyqml2tbe0b0ss` (`user_id`),
  CONSTRAINT `FK2dylsfo39lgjyqml2tbe0b0ss` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (82,'eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MTMsInVzZXJuYW1lIjoiMDM5ZDI0MDY2NjAiLCJzdWIiOiIwMzlkMjQwNjY2MCIsImlhdCI6MTcyMzM4MTg5MywiZXhwIjoxNzIzMzg1NDkzfQ.qAg_ySQpyAcunhuTGdtrZBGddQrgKlZdUez_gW1R6v4','7817c81b-8068-4e2a-9fb5-db56cc8c82ad','2024-08-11 22:11:33.046573',_binary '\0',13),(91,'eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MTIsInVzZXJuYW1lIjoiMDM5MjQwNjY2MDEiLCJzdWIiOiIwMzkyNDA2NjYwMSIsImlhdCI6MTcyMzUyMjEwOCwiZXhwIjoxNzIzNTI1NzA4fQ._dqChNkIYmth89UR150OxbCWav3ADWn7tk5G58HC80k','a549c00c-b926-498a-80f7-318f02e7cfe2','2024-08-13 13:08:28.437402',_binary '\0',12),(92,'eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MTIsInVzZXJuYW1lIjoiMDM5MjQwNjY2MDEiLCJzdWIiOiIwMzkyNDA2NjYwMSIsImlhdCI6MTcyMzYxOTc0MCwiZXhwIjoxNzIzNjIzMzQwfQ.Q9k0cRBiZvmTB3RF_U3Ybd3CxASMjzzIQkjEdn9R5Ko','53d50fe3-cec4-4ab9-9aa5-6bcf7c7a8f9d','2024-08-14 16:15:40.282841',_binary '\0',12),(93,'eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MTIsInVzZXJuYW1lIjoiMDM5MjQwNjY2MDEiLCJzdWIiOiIwMzkyNDA2NjYwMSIsImlhdCI6MTcyMzY0NDU0NCwiZXhwIjoxNzIzNjQ4MTQ0fQ.MHuPMDZyCEWFyjZVSSDMRrzTFaO65l_CTpYjvM7173E','c270adee-d6a4-4d9d-a474-44d9e4e8b7df','2024-08-14 23:09:04.377787',_binary '\0',12),(125,'eyJhbGciOiJIUzI1NiJ9.eyJpZCI6NDIsInVzZXJuYW1lIjoiMDM5ZDI0MDY2NjA2NiIsInN1YiI6IjAzOWQyNDA2NjYwNjYiLCJpYXQiOjE3MjQxNDUwNjgsImV4cCI6MTcyNDE0ODY2OH0.8eHinCht0ImLb1fF3iNn7Ws_XEzoPkS-DJg6UyNPqXI','564fa464-a1ce-4563-be35-ab503e792c0c','2024-08-20 18:11:08.890217',_binary '\0',42),(126,'eyJhbGciOiJIUzI1NiJ9.eyJpZCI6NDIsInVzZXJuYW1lIjoiMDM5ZDI0MDY2NjA2NiIsInN1YiI6IjAzOWQyNDA2NjYwNjYiLCJpYXQiOjE3MjQxNDUxNDQsImV4cCI6MTcyNDE0ODc0NH0.1WNUOvLEWK-syum5IptIlBBaNfK3C0maFqwIpunz8qE','73bf5c7c-31a7-45d0-b76b-569c0859203d','2024-08-20 18:12:24.681159',_binary '\0',42),(142,'eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MzksInVzZXJuYW1lIjoiMDM5MTIzOTAxMjMiLCJzdWIiOiIwMzkxMjM5MDEyMyIsImlhdCI6MTcyNTA5ODQ2NSwiZXhwIjoxNzI1MTAyMDY1fQ.N7pf5IEsk_5UEzA-1oKHGA0yW3_2fUKEZagwG8PYVt4','055bee4c-cceb-404a-851f-91f4c1f8b36f','2024-08-31 19:01:05.648663',_binary '\0',39),(143,'eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MzksInVzZXJuYW1lIjoiMDM5MTIzOTAxMjMiLCJzdWIiOiIwMzkxMjM5MDEyMyIsImlhdCI6MTcyNTA5ODUzNCwiZXhwIjoxNzI1MTAyMTM0fQ.5NGihyUfhD0t6FZM_6VkUAe15NzB5OlktHnVCo8TqEQ','da3edfd8-9e87-4f4a-99d5-21a24694f268','2024-08-31 19:02:14.842693',_binary '\0',39),(144,'eyJhbGciOiJIUzI1NiJ9.eyJpZCI6MzksInVzZXJuYW1lIjoiMDM5MTIzOTAxMjMiLCJzdWIiOiIwMzkxMjM5MDEyMyIsImlhdCI6MTcyNTE3NTUwMSwiZXhwIjoxNzI1MTc5MTAxfQ.SsfdAyLzEJ74Huro5xsF5_OxAIT7WjeY-S-rQpLuie0','c0edf876-e5f0-44c6-89ab-fbea918429d9','2024-09-01 16:25:01.543552',_binary '\0',39),(148,'eyJhbGciOiJIUzI1NiJ9.eyJpZCI6NDUsInVzZXJuYW1lIjoiMDEyMzEyMzEyMyIsInN1YiI6IjAxMjMxMjMxMjMiLCJpYXQiOjE3MjUxODA4MzYsImV4cCI6MTcyNTE4NDQzNn0.EtT1yFx50bPLCE65Q5Eyma-2Er19PauqI46G0yJ6yOM','8375959d-4ec4-4066-8be6-90365ada19eb','2024-09-01 17:53:56.072272',_binary '\0',45);
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-26  9:59:10
