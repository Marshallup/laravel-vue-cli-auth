-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: laravel-vue-cli-auth
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (1,'App\\Models\\User',1,'token','125848f07634c0205f705a587a30c4361f16e803d08e4f71796e6530d1d5a7e0','[\"*\"]',NULL,'2021-05-24 01:34:04','2021-05-24 01:34:04'),(2,'App\\Models\\User',1,'token','c9fd536a8fe2717053755e7d26e475fd4f3d8986b8a725e54c800188a176cfc2','[\"*\"]',NULL,'2021-05-24 01:34:30','2021-05-24 01:34:30'),(3,'App\\Models\\User',1,'token','3f81a9193c9609a4a7f2ba6cb3f9ae0a12ffa5d4a66885c664c24ef8205833c8','[\"*\"]',NULL,'2021-05-24 01:34:47','2021-05-24 01:34:47'),(4,'App\\Models\\User',1,'token','10c58d9158eabb5fb56ce5f22e4ebabe44104ddb5ba35b2f090759eaee683aa7','[\"*\"]',NULL,'2021-05-24 01:38:38','2021-05-24 01:38:38'),(5,'App\\Models\\User',4,'token','fbc4562fc7e3a82c68402de077f9321a724626f083ef51a1ae886540a9cb6eb3','[\"*\"]',NULL,'2021-05-25 01:39:21','2021-05-25 01:39:21'),(6,'App\\Models\\User',4,'token','0eaa582f932f040567ba4c5666da933aad472d7b54da6db9572d934a4ae23465','[\"*\"]',NULL,'2021-05-25 01:39:57','2021-05-25 01:39:57'),(7,'App\\Models\\User',4,'token','3cf812a10e932bf152e8d667f7038abe7a21a44d5d6fa865ecf5f4aa3ccdb46f','[\"*\"]',NULL,'2021-05-25 01:41:40','2021-05-25 01:41:40'),(8,'App\\Models\\User',4,'token','493bcd7a2e09bfbe97de55108b07899cbe55d894474076b551fc210e0e9bac28','[\"*\"]',NULL,'2021-05-25 01:42:44','2021-05-25 01:42:44'),(9,'App\\Models\\User',5,'token','ea20e6f79ccd2ef20f89b7701077c551e1a5768ec85d0f524a4cb04569e250ce','[\"*\"]',NULL,'2021-05-25 01:54:35','2021-05-25 01:54:35'),(10,'App\\Models\\User',1,'token','14784578067e2c476f3af67a695e7d32144a39245ba14a62bae462242fa14e59','[\"*\"]',NULL,'2021-05-25 01:58:39','2021-05-25 01:58:39'),(11,'App\\Models\\User',1,'token','1898be66b311b4e62f57020ef4d0bc1046f4a16acdd3050044498a5adab5a18a','[\"*\"]',NULL,'2021-05-25 02:08:04','2021-05-25 02:08:04'),(12,'App\\Models\\User',1,'token','8dcee8eea32257e44bb848026d8487150234bdd64513c6a4b404c25496a812f9','[\"*\"]',NULL,'2021-05-25 02:16:02','2021-05-25 02:16:02'),(13,'App\\Models\\User',4,'token','5085ecabaecb9c34edbaf1a0b7f8fbaa8803841dff6d140c697f98b8a12468b4','[\"*\"]','2021-05-25 02:21:01','2021-05-25 02:18:13','2021-05-25 02:21:01'),(14,'App\\Models\\User',4,'token','fccde1a451a025a7dd3caeb339c77a295b85aebe3dd9529f9e79256aff45ce1c','[\"*\"]',NULL,'2021-05-25 02:21:44','2021-05-25 02:21:44'),(15,'App\\Models\\User',4,'token','f358d04538daf3a2ffbbf9d13e612c0e46e62a337df32e7b05bf37c812f12b4e','[\"*\"]',NULL,'2021-05-25 02:21:56','2021-05-25 02:21:56'),(16,'App\\Models\\User',4,'token','59d01233007b7f397db4f30f2f668cdc0f4bd0851d15dbb2f6228482d7514526','[\"*\"]',NULL,'2021-05-25 02:23:58','2021-05-25 02:23:58'),(17,'App\\Models\\User',4,'token','32531de82bf52138ca81f0a7c4f4d4f32b764c701f8450dc7675484117344396','[\"*\"]','2021-05-28 00:02:26','2021-05-27 23:54:18','2021-05-28 00:02:26'),(18,'App\\Models\\User',4,'token','2678873e98c5cc667041d53f7231782132a0a46153e4af050be7f6898459e122','[\"*\"]',NULL,'2021-05-28 00:03:58','2021-05-28 00:03:58'),(19,'App\\Models\\User',4,'token','cc9df3125f9b6d558169937250a1ddee1e28067f55f9eccf4a0ee54257721a42','[\"*\"]',NULL,'2021-05-28 00:05:02','2021-05-28 00:05:02'),(20,'App\\Models\\User',4,'token','b849392e434817c08120245bd95273c2a3ff52bab10aacec91d43b03100efd6d','[\"*\"]',NULL,'2021-05-28 00:12:48','2021-05-28 00:12:48'),(21,'App\\Models\\User',6,'token','62e376031b9b19a6cb8b3e3f64d77606f814db6ba05caa5b5aaa66c2a1660410','[\"*\"]',NULL,'2021-05-28 00:14:13','2021-05-28 00:14:13'),(22,'App\\Models\\User',4,'token','cb6b2c755a1c71286c7a8af214621e1e90735ec2f110311f72c6925a550ad44e','[\"*\"]',NULL,'2021-05-28 00:21:35','2021-05-28 00:21:35'),(23,'App\\Models\\User',4,'token','a171009d79401d627cc4680e06e0a4c26ce724c4d1a882c0384216c2f29a5614','[\"*\"]',NULL,'2021-05-28 00:23:05','2021-05-28 00:23:05'),(24,'App\\Models\\User',4,'token','f67336f31f321731cebf78d67e8d3d94ffe58bf6d363c23b1dfb384bbb445c9d','[\"*\"]','2021-05-28 00:40:25','2021-05-28 00:23:15','2021-05-28 00:40:25'),(25,'App\\Models\\User',4,'token','8bdff4a72b66bd0d28fdd675266be89a7b72b7813aa91b399b274477a0ceaae7','[\"*\"]',NULL,'2021-05-28 00:24:40','2021-05-28 00:24:40'),(26,'App\\Models\\User',4,'token','b92c76cb50eaa30b156f247e5da1a3f47aa36b1f353eb6e2812db6bd879bcbab','[\"*\"]',NULL,'2021-05-28 00:29:31','2021-05-28 00:29:31'),(27,'App\\Models\\User',4,'token','e81c59a678a7efc0ea7cf4c3ad84796f7a40303118dd6c1ff3d86a389012dcc6','[\"*\"]',NULL,'2021-05-28 00:31:12','2021-05-28 00:31:12'),(28,'App\\Models\\User',4,'token','bfd722004ef926ca82afeb817dc1a57280cdc19b5c0b6600db3b055792bbacbd','[\"*\"]',NULL,'2021-05-28 00:31:32','2021-05-28 00:31:32'),(29,'App\\Models\\User',4,'token','658d7fe884821f5a3a39cb3db9bc8ffe29bdb0cf136ed83e5a03deaae67adec3','[\"*\"]',NULL,'2021-05-28 00:34:46','2021-05-28 00:34:46'),(30,'App\\Models\\User',4,'token','3921fee99baa1f338aa94291b4047bcbb5a71585a521de61373a611db7f061c6','[\"*\"]',NULL,'2021-05-28 00:34:49','2021-05-28 00:34:49'),(31,'App\\Models\\User',4,'token','ace848a304cc83a9100f8256aca74a5763c975760cd3212ca940faad8341d0ee','[\"*\"]',NULL,'2021-05-28 00:34:51','2021-05-28 00:34:51'),(32,'App\\Models\\User',4,'token','b5a7c40281faeb668afc15c6bdcdec9cacbbdd27e06d0209f749cbd5419f202d','[\"*\"]',NULL,'2021-05-28 00:34:59','2021-05-28 00:34:59'),(33,'App\\Models\\User',4,'token','8a24258ebe8bf9d10187bdd2ea75009f5244ac6c0a3d3c144efb702a92d253e5','[\"*\"]',NULL,'2021-05-28 00:42:43','2021-05-28 00:42:43'),(34,'App\\Models\\User',4,'token','b07469e3cc3244a3cba65d33f3b9e11dede6e29d88da857c2017eacb3cfa06a5','[\"*\"]',NULL,'2021-05-28 00:51:09','2021-05-28 00:51:09'),(35,'App\\Models\\User',4,'token','e52bb6144f1b579e5ecffa6fc37c2bd3afa809d6cb56142ff93d0f87526fe439','[\"*\"]',NULL,'2021-05-28 00:51:11','2021-05-28 00:51:11'),(36,'App\\Models\\User',4,'token','650e94b78e535eded029c59323db4249f3ff4b42ad8fa3f007d0b04c1e5753da','[\"*\"]',NULL,'2021-05-28 00:51:11','2021-05-28 00:51:11'),(37,'App\\Models\\User',4,'token','5d1e90765006680fc1adc6ee23fccb87831d6146b8d4260e9bdf83f7e62a66e9','[\"*\"]',NULL,'2021-05-28 00:51:12','2021-05-28 00:51:12'),(38,'App\\Models\\User',4,'token','ce86e8c0856785efe3b8e280623d20914bbaf7ed6e71d9a34e23f2d153be9c24','[\"*\"]',NULL,'2021-05-28 00:51:14','2021-05-28 00:51:14'),(39,'App\\Models\\User',4,'token','defa89257fed6abd5d095a23ba82fc9a9ba13e48602ab48293df378b936d0cca','[\"*\"]',NULL,'2021-05-28 00:53:29','2021-05-28 00:53:29');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'post','email2',NULL,'$2y$10$iDDt3E9cmQCQ4SOFAWdy3ecVsckrFuNqwrkkRJDI0zjney2gPYuEK',NULL,'2021-05-24 01:07:50','2021-05-24 01:07:50'),(2,'вфывфыв','wewe@sds.com',NULL,'$2y$10$C55EWw07OQ/w086cJcXbruHhye7b4op6eQIcMSZi4wm4U6WT6XOLq',NULL,'2021-05-25 00:54:50','2021-05-25 00:54:50'),(3,'йцуйцу','sss@sss.com',NULL,'$2y$10$39K1KIMd/2c5qA5dDw..1uRM2j0sw5Asxi3UAvyax4nEHKwbzKwIm',NULL,'2021-05-25 01:28:51','2021-05-25 01:28:51'),(4,'www','www@www.com',NULL,'$2y$10$q2mSxB8GGTp98SGHm4Fd2eGrUSWibMkqQ0Vvf9VlhP2nxqnslM/sq',NULL,'2021-05-25 01:37:07','2021-05-25 01:37:07'),(5,'eee','eee@eee.com',NULL,'$2y$10$d8WgNlXEfJ8dBmUhl/6YbuqoHKVwEPIzUnRb/AGdITg6j6jx1HqJe',NULL,'2021-05-25 01:54:27','2021-05-25 01:54:27'),(6,'aaa','aaa@aaa.com',NULL,'$2y$10$j4Zg8HIoBNtzK5Em/dv2xeqYlmP49n.Lq1V1lVp9q/Fq4UVVZZ3TO',NULL,'2021-05-28 00:13:09','2021-05-28 00:13:09');
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

-- Dump completed on 2021-05-30 22:00:14
