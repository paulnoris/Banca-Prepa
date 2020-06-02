-- MySQL dump 10.16  Distrib 10.1.32-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: examen
-- ------------------------------------------------------
-- Server version	10.1.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amounts`
--

DROP TABLE IF EXISTS `amounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amounts`
--

LOCK TABLES `amounts` WRITE;
/*!40000 ALTER TABLE `amounts` DISABLE KEYS */;
INSERT INTO `amounts` VALUES (1,100.00,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(2,200.00,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(3,300.00,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(4,400.00,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(5,500.00,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(6,600.00,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(7,700.00,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(8,800.00,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(9,900.00,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(10,1000.00,'2020-05-31 04:24:52','2020-05-31 04:24:52');
/*!40000 ALTER TABLE `amounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `amount_id` bigint(20) unsigned NOT NULL,
  `payment_deadline_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loans_user_id_foreign` (`user_id`),
  KEY `loans_amount_id_foreign` (`amount_id`),
  KEY `loans_payment_deadline_id_foreign` (`payment_deadline_id`),
  CONSTRAINT `loans_amount_id_foreign` FOREIGN KEY (`amount_id`) REFERENCES `amounts` (`id`),
  CONSTRAINT `loans_payment_deadline_id_foreign` FOREIGN KEY (`payment_deadline_id`) REFERENCES `payment_deadlines` (`id`),
  CONSTRAINT `loans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (1,1,1,1,'2020-05-31 04:48:36','2020-05-31 04:48:36'),(2,1,1,1,'2020-05-31 04:48:56','2020-05-31 04:48:56'),(3,1,1,1,'2020-05-31 04:49:21','2020-05-31 04:49:21'),(4,1,5,3,'2020-05-31 04:52:14','2020-05-31 04:52:14'),(5,11,9,1,'2020-05-31 04:53:17','2020-05-31 04:53:17'),(6,1,9,3,'2020-05-31 04:57:47','2020-05-31 04:57:47'),(7,7,2,3,'2020-05-31 05:38:03','2020-05-31 05:38:03'),(8,1,1,1,'2020-05-31 05:38:39','2020-05-31 05:38:39'),(9,1,1,1,'2020-05-31 05:42:50','2020-05-31 05:42:50'),(10,11,3,3,'2020-05-31 05:42:58','2020-05-31 05:42:58'),(11,1,2,1,'2020-05-31 06:20:28','2020-05-31 06:20:28'),(12,1,1,3,'2020-05-31 07:05:36','2020-05-31 07:05:36'),(13,2,3,2,'2020-06-01 05:45:53','2020-06-01 05:45:53'),(14,3,5,2,'2020-06-03 00:24:07','2020-06-03 00:24:07'),(15,8,9,4,'2020-06-03 00:48:30','2020-06-03 00:48:30');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_05_30_205236_create_amounts_table',1),(5,'2020_05_30_205445_create_payment_deadlines_table',1),(6,'2020_05_30_210302_create_loans_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('paulnorisr@outlook.com','$2y$10$fhlmletyQH4ip6XF/6fM5e9F1xwXE9G10hj.2kEeU021rLvUfO0c.','2020-06-01 05:45:23');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_deadlines`
--

DROP TABLE IF EXISTS `payment_deadlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_deadlines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_deadline` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_deadlines`
--

LOCK TABLES `payment_deadlines` WRITE;
/*!40000 ALTER TABLE `payment_deadlines` DISABLE KEYS */;
INSERT INTO `payment_deadlines` VALUES (1,6,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(2,12,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(3,18,'2020-05-31 04:24:52','2020-05-31 04:24:52'),(4,24,'2020-05-31 04:24:52','2020-05-31 04:24:52');
/*!40000 ALTER TABLE `payment_deadlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Otha Marvin','larson.xander@example.net','2020-05-31 04:24:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','r136PZyiN5LqbNAZvlah5zbhsfMnvm9DtC61BKTD2st0nuWEdObVFT8tFHlz','2020-05-31 04:24:52','2020-05-31 04:24:52'),(2,'Dr. Krystal Schmeler','preston.stanton@example.net','2020-05-31 04:24:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9wH2GNyzUj','2020-05-31 04:24:52','2020-05-31 04:24:52'),(3,'Mrs. Leanne Herman','bertha30@example.org','2020-05-31 04:24:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','ux5hSanA2l','2020-05-31 04:24:52','2020-05-31 04:24:52'),(4,'Antonia Will','raphaelle69@example.net','2020-05-31 04:24:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','c1ynbZRgOs','2020-05-31 04:24:52','2020-05-31 04:24:52'),(5,'Dr. Mary Schimmel','dubuque.britney@example.com','2020-05-31 04:24:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','AhCUOYBh0X','2020-05-31 04:24:52','2020-05-31 04:24:52'),(6,'Ollie Reichert','kub.jed@example.net','2020-05-31 04:24:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','GuPwRxQ6Fv','2020-05-31 04:24:52','2020-05-31 04:24:52'),(7,'Raymundo Zemlak V','skeeling@example.net','2020-05-31 04:24:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','TR6HDLJFPK','2020-05-31 04:24:52','2020-05-31 04:24:52'),(8,'Brannon Smith','viviane.stracke@example.com','2020-05-31 04:24:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','T5CvWfc8rr','2020-05-31 04:24:52','2020-05-31 04:24:52'),(9,'Erik Koss','collins.river@example.com','2020-05-31 04:24:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','6BHxoIiIHa','2020-05-31 04:24:52','2020-05-31 04:24:52'),(10,'Diego Labadie','oschmeler@example.com','2020-05-31 04:24:52','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','jZAdGxUADd','2020-05-31 04:24:52','2020-05-31 04:24:52'),(11,'Paul Noris','paulnorisr@outlook.com',NULL,'$2y$10$bXe0z1Rn5zvJYlp4Udf2u./vXujznZ3wxZ4ffGuuG4/8a9OuiljOq',NULL,'2020-05-31 04:29:07','2020-05-31 04:29:07');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'examen'
--

--
-- Dumping routines for database 'examen'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-02 13:34:08
