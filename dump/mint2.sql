-- MySQL dump 10.13  Distrib 8.0.21, for Linux (x86_64)
--
-- Host: localhost    Database: mint
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user','[]','$argon2id$v=19$m=65536,t=4,p=1$WqvkgwFn9AE2HAfP6PP5Ow$5+fP6/qHjv8HSQzBnpJaoqu3x3G+G+tSxYm2D8pCjHg',1),(2,'user2','[]','$argon2id$v=19$m=65536,t=4,p=1$Mku9Ikivnqt/r6hv2hWhDw$Igsbc0pEnAcISogxd/NhYt8hPuHgkxBaAr5QM9HJ3x4',0),(3,'user3','[]','$argon2id$v=19$m=65536,t=4,p=1$L4newu7tu572SCh4imsBsw$C/uU1U728Qh59vzPzbL0S+XE52P07+an8LzVUhqLFFU',0),(4,'user4','[]','$argon2id$v=19$m=65536,t=4,p=1$De5BRPwVj0OqHgtUaQXWgA$tZhe+bZkxJWrKT4OkE2tHUl1cmIGIe+qB/aGniwRl/Y',0),(5,'user5','[]','$argon2id$v=19$m=65536,t=4,p=1$+vndVspXSy9zBJR0CfPlUQ$qMEZYTXyik//7Q0Lv6amzVinUKbJnxAzxarWeSVsMC8',0),(6,'user6','[]','$argon2id$v=19$m=65536,t=4,p=1$Lvz2PPZmra20uC8fnt7OZg$7MK/eDmZeTQtygoFRRPTFiWgvP5prZDcn+T0r9uNNdg',0),(7,'user7','[]','$argon2id$v=19$m=65536,t=4,p=1$JZ8EA68aRvx/6dzPzJacUA$v+XBXV01haPDjCJ+/FTmIOaStfR4odajwX4HbM/gHAY',1),(8,'user8','[]','$argon2id$v=19$m=65536,t=4,p=1$WCSNeHuCdB1iJDLmxpiu6g$yhbwVLqBvuTieiIde7YVWvIEry/uy2s2+AM6KgLzeEY',0),(9,'user9','[]','$argon2id$v=19$m=65536,t=4,p=1$F3nrSqERty4KMoSeKMwgzg$G+3wLLgJd6IWoTu32P8fb8tlTj4f8nSzrTpyNmD/JfY',0),(10,'user10','[]','$argon2id$v=19$m=65536,t=4,p=1$r8qAybuMT/2P0eTZKwrnRw$ZW+p0V/rM+20pMOWXNTbIaWB4QJfuovb5l/5NCzxAms',0),(11,'user11','[]','$argon2id$v=19$m=65536,t=4,p=1$Wl80nXxGX09x1Jde6dRuPA$r1oIh/jVHuuCjFtNoNME/XWG1QRTgTrCB3EHXJTQY6s',0),(12,'user12','[]','$argon2id$v=19$m=65536,t=4,p=1$+nH9hvFQe6AYBjZHF892qQ$4TjvhclToi7/HjaDMnzEer2tsJFGEPuriSsWkJsksso',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-19 22:03:42
